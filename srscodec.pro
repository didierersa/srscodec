include("$$PWD/project.pri")

TARGET = $$SRSCODEC_TARGET
TEMPLATE = lib
CONFIG += staticlib

TARGET_STRING = '"\\"$${TARGET}\\""'
DEFINES *= TARGET=$${TARGET_STRING}

# Paths
INCLUDEPATH += \
	"$$PWD/include"

CONFIG(debug, debug|release) {
	DESTDIR = debug/$$SRSCODEC_LIBPATH
} else {
	DESTDIR = release/$$SRSCODEC_LIBPATH
}

SOURCES += \
	"$$PWD/src/srscodec.c"

HEADERS += \
	"$$PWD/include/srscodec.h"
