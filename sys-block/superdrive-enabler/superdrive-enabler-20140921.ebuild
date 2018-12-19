# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7
inherit toolchain-funcs

DESCRIPTION="Hack for Apple's Superdrive to work with other systems than OS X."
HOMEPAGE="https://github.com/onmomo/superdrive-enabler"
MY_HASH="809e81ed19af1acc776b88f91c05c4763f3665ac"
SRC_URI="https://github.com/onmomo/superdrive-enabler/archive/${MY_HASH}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${MY_HASH}"

LICENSE="MIT" # ? https://github.com/onmomo/superdrive-enabler/issues/1
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+udev"

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	sed -e '7s/\(.*\)/#include <unistd.h>/' -i src/superdriveEnabler.c
	default
}

src_compile() {
	# Makefile does too much, so compile manually here
	$(tc-getCC) -o ${PN} ${CFLAGS} ${LDFLAGS} src/superdriveEnabler.c
}

src_install() {
	dobin ${PN}
	einstalldocs
	if use udev; then
		insinto /lib/udev/rules.d
		doins "${FILESDIR}/90-superdrive.rules"
		udevadm control --reload-rules
	fi
}

pkg_postinst() {
	if ! use udev; then
		einfo
		einfo "To unlock a SuperDrive device manually, type:"
		einfo
		einfo "${PN} <DEVICE_PATH>"
		einfo
		einfo "(such as /dev/sr0)"
		einfo
	fi
}
