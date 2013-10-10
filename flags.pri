# Compilation and linking flags
win32{
	#'/W4': Enable all warnings
	#'/WX': Treat warning as error
	WARNING_ON = "/W4 /WX /wd4127"
	QMAKE_CFLAGS_WARN_ON = $$WARNING_ON
	QMAKE_CXXFLAGS_WARN_ON = $$WARNING_ON

	# '/O2': Optimize for speed
	# '/GL': Link time code generation
	# '/fp:fast', '/Qfast_transcendentals': Fast math
	# '/Qpar': Parallelizer
	# '/MD': Release runtimes
	RELEASE_FLAGS = "/O2 /GL /fp:fast /Qfast_transcendentals /Qpar /MD /arch:SSE2 /favor:BLEND"

	# '/OPT:REF': Code folding, unneeded references removal
	# '/LTCG': Link time code generation
	# '/RELEASE': Checksum generation
	QMAKE_LFLAGS_RELEASE = "/OPT:REF /LTCG /RELEASE"

	# '/Od': No optimizations
	# '/Zi': Debugging symbols
	# '/RTCc', '/RTCs', '/RTCu': Runtime checks
	# '/MDd': Debugging runtimes
	DEBUG_FLAGS = "/Od /Zi /RTCc /RTCs /RTCu /MDd"

	# '/INCREMENTAL': Incremental linking
	# '/DEBUG': Debugging symbols merging
	QMAKE_LFLAGS_DEBUG = "/INCREMENTAL /DEBUG"
} else {
	# '-pipe': Use pipe instead of file
	# '-Wall': Enable all warnings
	# '-pedantic': Enable warnings on language extension
	# '-Werror': Treat warning as error
	# '-pedantic-errors': Treat language extension warning as error
	# '-Wno-unknown-pragmas': Disable warnings on unknown pragma
	# '-fvisibility=hidden': Hiden as default visibility to reduce exported symbols (reduce relocation, reduce code size)
	COMMON_FLAGS = "-pipe -Wall -pedantic -Wno-unknown-pragmas -Werror -pedantic-errors -fvisibility=hidden"

	# '-std=c11': Compile with ansi c11 language extension
	QMAKE_CFLAGS = "$$COMMON_FLAGS -std=c11"
	QMAKE_CXXFLAGS = "$$COMMON_FLAGS -std=c++11 -fvisibility-inlines-hidden"

	# '-Ofast': Optimize for speed, with fast math
	# '-flto': Link time code generation
	RELEASE_FLAGS = "-Ofast -flto -march=x86_64 -mtune=generic"

	# '-fuse-linker-plugin': Use gold linker plugin
	# '-Wl,-O1': Optimize the output
	# '-Wl,--as-needed': Only link against really used library
	# '-Wl,--sort-common': Sort symbols for best alignment
	# '-Wl,--icf=safe': Identical code folding
	QMAKE_LFLAGS_RELEASE = "$$RELEASE_FLAGS -fuse-linker-plugin -Wl,-O1,--as-needed,--sort-common,--icf=safe"

	# '-Og': Optimization for optimal debugging
	# '-ggdb3': Debugging symbols with macro expansion,
	DEBUG_FLAGS = "-Og -ggdb3"

	# '-Wl,--incremental': Incremental linking
	# '-Wl,--threads': Debugging symbols merging
	QMAKE_LFLAGS_DEBUG = "-Wl,--incremental,--threads"
}

QMAKE_CFLAGS_RELEASE = $$RELEASE_FLAGS
QMAKE_CXXFLAGS_RELEASE = $$RELEASE_FLAGS
QMAKE_CFLAGS_DEBUG = $$DEBUG_FLAGS
QMAKE_CXXFLAGS_DEBUG = $$DEBUG_FLAGS
