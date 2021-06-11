HEADERS += \
    $$PWD/CommandTokenizer.h \
    $$PWD/DiskCachedNAM.h \
    $$PWD/FakeQKeyEvent.h \
    $$PWD/Files.h \
    $$PWD/FolderListModel.h \
    $$PWD/HashMap.h \
    $$PWD/Http.h \
    $$PWD/IniFile.h \
    $$PWD/KeySequenceTools.h \
    $$PWD/MoveOnly.h \
    $$PWD/NoCopyNoMove.h \
    $$PWD/PathTools.h \
    $$PWD/QmlHelpers.h \
    $$PWD/rLog.h \
    $$PWD/SqliteDb.h \
    $$PWD/StdHelpers.h \
    $$PWD/StdStringHelpers.h \
    $$PWD/StrBoolConverter.h \
    $$PWD/Stringize.h \
    $$PWD/Strings.h \
    $$PWD/Unicode.h \
    $$PWD/Xml.h \
    $$PWD/Zip.h \
    $$PWD/cplusplus/Bitflags.h \
    $$PWD/cplusplus/INoCopy.h \
    $$PWD/cplusplus/StaticLifeCycleControler.h \
    $$PWD/datetime/DateTime.h \
    $$PWD/datetime/HighResolutionTimer.h \
    $$PWD/datetime/TimeSpan.h \
    $$PWD/hash/Crc32.h \
    $$PWD/hash/Crc32File.h \
    $$PWD/hash/Md5.h \
    $$PWD/locale/Internationalizer.h \
    $$PWD/locale/LocaleHelper.h \
    $$PWD/math/Misc.h \
    $$PWD/math/Transform4x4f.h \
    $$PWD/math/Vector2f.h \
    $$PWD/math/Vector2i.h \
    $$PWD/math/Vector3f.h \
    $$PWD/math/Vector4f.h \
    $$PWD/math/Vector4i.h \
    $$PWD/math/Vectors.h \
    $$PWD/os/fs/Path.h \
    $$PWD/os/fs/StringMapFile.h \
    $$PWD/os/fs/watching/EventType.h \
    $$PWD/os/fs/watching/FileNotifier.h \
    $$PWD/os/fs/watching/FileSystemEvent.h \
    $$PWD/os/fs/watching/FileSystemWatcher.h \
    $$PWD/os/fs/watching/IFileSystemWatcherNotification.h \
    $$PWD/os/system/IThreadPoolWorkerInterface.h \
    $$PWD/os/system/Mutex.h \
    $$PWD/os/system/ProcessTree.h \
    $$PWD/os/system/Thread.h \
    $$PWD/os/system/ThreadPool.h \
    $$PWD/os/system/Signal.h \
    $$PWD/storage/Allocator.h \
    $$PWD/storage/Array.h \
    $$PWD/storage/Common.h \
    $$PWD/storage/MessageFactory.h \
    $$PWD/storage/Queue.h \
    $$PWD/storage/rHashMap.h \
    $$PWD/storage/Stack.h \
    $$PWD/storage/Set.h \
	$$PWD/rcheevos/include/rc_api_request.h \
	$$PWD/rcheevos/include/rc_api_runtime.h \
	$$PWD/rcheevos/include/rc_api_user.h \
	$$PWD/rcheevos/include/rc_consoles.h \
	$$PWD/rcheevos/include/rc_error.h \
	$$PWD/rcheevos/include/rc_hash.h \
	$$PWD/rcheevos/include/rc_runtime.h \
	$$PWD/rcheevos/include/rc_runtime_types.h \
	$$PWD/rcheevos/include/rc_url.h \
	$$PWD/rcheevos/include/rcheevos.h \
	$$PWD/rcheevos/src/rapi/rc_api_common.h \
	$$PWD/rcheevos/src/rapi/rc_api_runtime.h \
	$$PWD/rcheevos/src/rcheevos/rc_compat.h \
	$$PWD/rcheevos/src/rcheevos/rc_internal.h \
	$$PWD/rcheevos/src/rhash/md5.h
    
SOURCES += \
    $$PWD/CommandTokenizer.cpp \
    $$PWD/DiskCachedNAM.cpp \
    $$PWD/FakeQKeyEvent.cpp \
    $$PWD/Files.cpp \
    $$PWD/FolderListModel.cpp \
    $$PWD/Http.cpp \
    $$PWD/IniFile.cpp \
    $$PWD/KeySequenceTools.cpp \
    $$PWD/PathTools.cpp \
    $$PWD/rLog.cpp \
    $$PWD/SqliteDb.cpp \
    $$PWD/StdStringHelpers.cpp \
    $$PWD/StrBoolConverter.cpp \
    $$PWD/Strings.cpp \
    $$PWD/Zip.cpp \
    $$PWD/datetime/DateTime.cpp \
    $$PWD/datetime/TimeSpan.cpp \
    $$PWD/hash/Crc32.cpp \
    $$PWD/hash/Crc32File.cpp \
    $$PWD/hash/Md5.cpp \
    $$PWD/locale/Internationalizer.cpp \
    $$PWD/math/Misc.cpp \
    $$PWD/math/Transform4x4f.cpp \
    $$PWD/math/Vector2f.cpp \
    $$PWD/math/Vector2i.cpp \
    $$PWD/math/Vector3f.cpp \
    $$PWD/math/Vector4f.cpp \
    $$PWD/math/Vector4i.cpp \
    $$PWD/os/fs/Path.cpp \
    $$PWD/os/fs/StringMapFile.cpp \
    $$PWD/os/fs/watching/EventType.cpp \
    $$PWD/os/fs/watching/FileNotifier.cpp \
    $$PWD/os/fs/watching/FileSystemWatcher.cpp \
    $$PWD/os/system/Mutex.cpp \
    $$PWD/os/system/ProcessTree.cpp \
    $$PWD/os/system/Signal.cpp \
    $$PWD/os/system/Thread.cpp \
	$$PWD/rcheevos/src/rapi/rc_api_common.c \
	$$PWD/rcheevos/src/rapi/rc_api_runtime.c \
	$$PWD/rcheevos/src/rcheevos/alloc.c \
	$$PWD/rcheevos/src/rcheevos/compat.c \
	$$PWD/rcheevos/src/rcheevos/condition.c \
	$$PWD/rcheevos/src/rcheevos/condset.c \
	$$PWD/rcheevos/src/rcheevos/consoleinfo.c \
	$$PWD/rcheevos/src/rcheevos/format.c \
	$$PWD/rcheevos/src/rcheevos/lboard.c \
	$$PWD/rcheevos/src/rcheevos/memref.c \
	$$PWD/rcheevos/src/rcheevos/operand.c \
	$$PWD/rcheevos/src/rcheevos/richpresence.c \
	$$PWD/rcheevos/src/rcheevos/runtime.c \
	$$PWD/rcheevos/src/rcheevos/runtime_progress.c \
	$$PWD/rcheevos/src/rcheevos/trigger.c \
	$$PWD/rcheevos/src/rcheevos/value.c \
	$$PWD/rcheevos/src/rhash/cdreader.c \
	$$PWD/rcheevos/src/rhash/hash.c \
	$$PWD/rcheevos/src/rhash/md5.c \
	$$PWD/rcheevos/src/rurl/url.c
    
!isEmpty(USE_SDL_GAMEPAD) {
    HEADERS += $$PWD/GamepadManagerSDL2.h
    HEADERS += $$PWD/sdl2/ISynchronousEvent.h
    HEADERS += $$PWD/sdl2/ISyncTimer.h
    HEADERS += $$PWD/sdl2/SyncronousEvent.h
    HEADERS += $$PWD/sdl2/SyncronousEventService.h
    HEADERS += $$PWD/sdl2/SyncTimer.h

    SOURCES += $$PWD/sdl2/SyncronousEvent.cpp
    SOURCES += $$PWD/sdl2/SyncronousEventService.cpp
    SOURCES += $$PWD/sdl2/SyncTimer.cpp
} 

    