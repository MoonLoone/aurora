TARGET = ru.auroraos.lab1

CONFIG += \
    auroraapp

PKGCONFIG += \

SOURCES += \
    src/main.cpp \

HEADERS += \

DISTFILES += \
    qml/pages/Task2.qml \
    qml/pages/Task3.qml \
    rpm/ru.auroraos.lab1.spec \

AURORAAPP_ICONS = 86x86 108x108 128x128 172x172

CONFIG += auroraapp_i18n

TRANSLATIONS += \
    translations/ru.auroraos.lab1.ts \
    translations/ru.auroraos.lab1-ru.ts \
