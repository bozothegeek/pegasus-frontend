// Pegasus Frontend
// Copyright (C) 2017-2018  Mátyás Mustoha
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


#pragma once

#include "AppSettings.h"

#include <QObject>


namespace model {
class KeyEditor: public QObject {
    Q_OBJECT
    Q_PROPERTY(int eventCount READ eventCount CONSTANT)

public:
    explicit KeyEditor(QObject* parent = nullptr);

    Q_INVOKABLE void addKey(int event_id, const QVariant& keyevent);
    Q_INVOKABLE void delKey(int event_id, const int keycode);
    Q_INVOKABLE void replaceKey(int event_id, const int old_keycode, const QVariant& new_keyevent);
    Q_INVOKABLE void resetKeys();

    Q_INVOKABLE QVector<int> keyCodesOf(int event_id) const;
    Q_INVOKABLE QString keyName(const int keycode) const;

    static constexpr int eventCount() {
        return static_cast<int>(::KeyEvent::MAIN_MENU) + 1;
    }

signals:
    void keysChanged();
};
} // namespace model