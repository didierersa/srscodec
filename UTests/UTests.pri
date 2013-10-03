include("$$PWD/../project.pri")

TEMPLATE = app
QT += testlib
CONFIG   += console
CONFIG   -= app_bundle

INCLUDEPATH += "$$PWD/../include"

CONFIG(debug, debug|release) {
	DESTDIR = ../../debug/$$SRSCODEC_LIBPATH
} else {
	DESTDIR = ../../release/$$SRSCODEC_LIBPATH
}

LIBS += "-l../../debug/$$SRSCODEC_LIBPATH/$$SRSCODEC_TARGET"
