CONFIG(debug, debug|release) {
	message("DEBUG build")
	TARGET_SUFFIX = d
}
  
CONFIG (release, debug|release) {
	message("RELEASE build")
	TARGET_SUFFIX = 
}

TARGET = $${TARGET}$${TARGET_SUFFIX}
OBJECTS_DIR = .out/obj$${TARGET_SUFFIX}
MOC_DIR = .out/moc$${TARGET_SUFFIX}
RCC_DIR = .out/rcc$${TARGET_SUFFIX}
UI_DIR = .out/ui$${TARGET_SUFFIX}