TEMPLATE = app

QT += qml quick sql svg

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        PictureImageProvider.cpp \
        main.cpp

RESOURCES += \
    gallery.qrc

## Additional import path used to resolve QML modules in Qt Creator's code model
#QML_IMPORT_PATH =

## Additional import path used to resolve QML modules just for Qt Quick Designer
#QML_DESIGNER_IMPORT_PATH =

## Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target


unix:!macx: LIBS += -L$$OUT_PWD/../gallery-core/ -lgallery-core

else: LIBS += -L$$OUT_PWD/../gallery-core/ -lgallery-core_armeabi-v7a

INCLUDEPATH += $$PWD/../gallery-core
DEPENDPATH += $$PWD/../gallery-core

contains(ANDROID_TARGET_ARCH, x86) {
    ANDROID_EXTRA_LIBS = \
        $$[QT_INSTALL_LIBS]/libQt5sql.so
}

HEADERS += \
    PictureImageProvider.h
