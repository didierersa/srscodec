include( "../flags.pri" )
include( "../target.pri" )
include( "../defines.pri" )

TEMPLATE = app
QT += testlib
CONFIG += console
CONFIG -= app_bundle

INCLUDEPATH += "$${PWD}/../SRSCodec/include"
DESTDIR = "../../bin"
LIBS += "-l../../lib/SRSCodec$${TARGET_SUFFIX}"

