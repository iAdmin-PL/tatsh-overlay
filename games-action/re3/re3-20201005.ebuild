# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="GTA III decompiled and re-built."
HOMEPAGE="https://github.com/GTAmodding/re3"
MY_RE3_HASH="fa94ee2e08ac7e54e9add83025a7b1aeb4bd215f"
MY_LIBRW_HASH="30b77b0b32b4113b5dce2b67813ce9b85d1e1e57"
SRC_URI="https://github.com/Tatsh/re3/archive/${MY_RE3_HASH}.tar.gz -> ${P}.tar.gz
	https://github.com/aap/librw/archive/${MY_LIBRW_HASH}.tar.gz -> ${PN}-librw-${MY_LIBRW_HASH}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm64 ~arm"
IUSE="extra"

DEPEND="media-libs/libsndfile
	media-libs/openal
	media-libs/glew
	media-sound/mpg123
	>=media-libs/glfw-3.3.2"
RDEPEND="${DEPEND}"
BDEPEND="dev-util/premake:5"

S="${WORKDIR}/${PN}-${MY_RE3_HASH}"

src_unpack() {
	default
	cp -R "librw-${MY_LIBRW_HASH}"/* "${S}/vendor/librw/"
}

src_prepare() {
	default
	sed -i premake5.lua -e 's/.*staticruntime ".*//g' || die
	rm -fR vendor/{libsndfile,mpg123,openal-soft}
	# Other interesting variables:
	# - FINAL (which would enable USE_MY_DOCUMENTS)
	# - PC_PARTICLE
	echo '#define BIND_VEHICLE_FIREWEAPON' >> src/core/config.h
	echo '#define NEW_WALK_AROUND_ALGORITHM' >> src/core/config.h
	echo '#define PEDS_REPORT_CRIMES_ON_PHONE' >> src/core/config.h
	echo '#define SIMPLIER_MISSIONS' >> src/core/config.h
	echo '#define VC_PED_PORTS' >> src/core/config.h
	echo '#define XDG_ROOT' >> src/core/config.h
}

src_configure() {
	premake5 --with-librw gmake2
}

src_compile() {
	cd build
	if use amd64; then
		emake config=release_linux-amd64-librw_gl3_glfw-oal verbose=1
	elif use x86; then
		emake config=release_linux-x86-librw_gl3_glfw-oal verbose=1
	elif use arm; then
		emake config=release_linux-arm-librw_gl3_glfw-oal verbose=1
	elif use arm64; then
		emake config=release_linux-arm64-librw_gl3_glfw-oal verbose=1
	fi
}

src_install() {
	dobin bin/linux-*-librw_gl3_glfw-oal/Release/re3
	if use extra; then
		insinto /usr/share/re3/gamefiles
		doins -r gamefiles/*
	fi
	einstalldocs
}

pkg_postinst() {
	einfo
	einfo "Store your GTA III game files from an installation in the"
	einfo "following directory (create if necessary):"
	einfo
	einfo "~/.local/share/re3"
	einfo
}