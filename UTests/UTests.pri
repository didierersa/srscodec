TEMPLATE = app
QT += testlib
CONFIG   += console
CONFIG   -= app_bundle

INCLUDEPATH += "../../include"

LIBS += "-L../../lib -lSRSCodec"
DESTDIR = ../../bin

include( "../flags.pri" )
include( "../target.pri" )
include( "../defines.pri" )
