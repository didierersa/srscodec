TEMPLATE = subdirs
SUBDIRS += \
	"$$PWD/srscodec.pro" \
	"$$PWD/UTests"

# Use .depends to specify that a project depends on another.
UTests.depends = srscodec.pro

# Miscellaneous files
OTHER_FILES += \
	"LICENSE" \
	"README.md" \
	"uncrustify_in.cfg" \
	"uncrustify_out.cfg" \
	"uncrustify.sh" \
	"git-configure.sh" \
	".gitattributes" \
	".gitignore"
