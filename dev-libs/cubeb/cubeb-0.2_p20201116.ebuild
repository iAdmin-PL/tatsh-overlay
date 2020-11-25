# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit cmake-utils

DESCRIPTION="Cross platform audio library."
HOMEPAGE="https://github.com/kinetiknz/cubeb"
MY_SHA="df5fe422b77a58fd8f7e0b3953e83807ae04c060"
SRC_URI="https://github.com/kinetiknz/${PN}/archive/${MY_SHA}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}-${MY_SHA}"

src_prepare() {
	sed -e '25s/.*/if(FALSE)/' -e 's/^add_sanitizers(.*//' \
		-i CMakeLists.txt
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
		-DBUILD_TESTS=OFF
		-DBUILD_TOOLS=OFF
		-DBUILD_SHARED_LIBS=ON
	)
	cmake-utils_src_configure
}