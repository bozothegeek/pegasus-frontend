// Pegasus Frontend
// Copyright (C) 2017  Mátyás Mustoha
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <http://www.gnu.org/licenses/>.


#include "Settings.h"

#include "GlobalSettings.h"
#include "LocaleUtils.h"
#include "Paths.h"
#include "ScriptRunner.h"

#include <QDebug>
#include <QDir>
#include <QFileInfo>
#include <QSet>
#include <QSettings>


namespace {

const QLatin1String SETTINGSKEY_FULLSCREEN("fullscreen");

void rewrite_gamedircfg(const std::function<void(QTextStream&)>& callback)
{
    const QString config_file_path = paths::writableConfigDir() + QStringLiteral("/game_dirs.txt");

    QFile config_file(config_file_path);
    if (!config_file.open(QFile::WriteOnly | QFile::Text)) {
        qWarning().noquote() << tr_log("Failed to save game directory settings to `%1`")
                                .arg(config_file_path);
        return;
    }

    QTextStream stream(&config_file);
    callback(stream);
}

} // namespace


namespace model {

Settings::Settings(QObject* parent)
    : QObject(parent)
    , m_locales(this)
    , m_themes(this)
{
    m_fullscreen = QSettings(paths::configIniPath(), QSettings::IniFormat)
                   .value(SETTINGSKEY_FULLSCREEN, true).toBool();

    connect(&m_locales, &LocaleList::localeChanged,
            this, &Settings::callScripts);
    connect(&m_themes, &ThemeList::themeChanged,
            this, &Settings::callScripts);

    connect(this, &Settings::fullscreenChanged,
            this, &Settings::callScripts);
}

void Settings::setFullscreen(bool new_val)
{
    if (new_val != m_fullscreen) {
        m_fullscreen = new_val;

        QSettings settings(paths::configIniPath(), QSettings::IniFormat);
        settings.setValue(SETTINGSKEY_FULLSCREEN, m_fullscreen);

        emit fullscreenChanged();
    }
}

void Settings::callScripts()
{
    using ScriptEvent = ScriptRunner::EventType;
    ScriptRunner::findAndRunScripts(ScriptEvent::CONFIG_CHANGED);
    ScriptRunner::findAndRunScripts(ScriptEvent::SETTINGS_CHANGED);
}

QStringList Settings::gameDirs() const
{
    QSet<QString> dirset;
    GlobalSettings::parse_gamedirs([&dirset](const QString& line){
        dirset.insert(line);
    });

    QStringList dirlist;
    for (const QString& dir : qAsConst(dirset))
        dirlist.append(dir);

    dirlist.sort();
    return dirlist;
}

void Settings::addGameDir(QString path)
{
    const QFileInfo finfo(path);
    if (!finfo.exists() || !finfo.isDir()) {
        qWarning().noquote() << tr_log("Game directory `%1` not found, ignored").arg(path);
        return;
    }

    QSet<QString> dirset;
    GlobalSettings::parse_gamedirs([&dirset](const QString& line){
        dirset.insert(line);
    });


    const auto count_before = dirset.count();
    dirset << finfo.canonicalFilePath();
    const auto count_after = dirset.count();

    if (count_before == count_after) {
        qWarning().noquote() << tr_log("Game directory `%1` already known, ignored").arg(path);
        return;
    }


    rewrite_gamedircfg([&dirset](QTextStream& stream){
        for (const QString& dir : qAsConst(dirset)) {
            stream << dir << '\n';
        }
    });

    emit gameDirsChanged();
}

void Settings::delGameDir(int idx)
{
    if (idx < 0)
        return;

    auto dirlist = gameDirs();
    if (idx >= dirlist.count())
        return;

    dirlist.removeAt(idx);


    rewrite_gamedircfg([&dirlist](QTextStream& stream){
        for (const QString& dir : qAsConst(dirlist)) {
            stream << dir << '\n';
        }
    });

    emit gameDirsChanged();
}

} // namespace model