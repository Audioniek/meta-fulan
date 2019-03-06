CXXFLAGS_append_sh4 += " -std=c++11 -fPIC -fno-strict-aliasing "

FILESEXTRAPATHS_prepend := "${THISDIR}:"

SRC_URI_append += "\
	${@bb.utils.contains("MACHINE", "spark", "file://enigma2-fulan-spark.patch", "", d)} \
	${@bb.utils.contains("MACHINE", "spark7162", "file://enigma2-fulan-spark7162.patch", "", d)} \
	"

SRCREV_FORMAT = "enigma2"

