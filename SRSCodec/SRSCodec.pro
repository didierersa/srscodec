TARGET = SRSCodec
TEMPLATE = lib
CONFIG += staticlib

# Paths
INCLUDEPATH += \
	"include"

SOURCES += \
	"src/srscodec.c"

HEADERS += \
	"include/srscodec.h"

DESTDIR = "../lib"

include( "../flags.pri" )
include( "../target.pri" )
include( "../defines.pri" )
