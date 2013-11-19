# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.3

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

MY_PN="OSExtension"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Extension for os module, for POSIX systems only"
HOMEPAGE="http://pypi.python.org/pypi/OSExtension/"
SRC_URI="https://pypi.python.org/packages/source/O/OSExtension/${MY_P}.tar.gz"

LICENSE=""
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

S="${WORKDIR}/${MY_P}"
PYTHON_MODNAME="osext"

PYTHON_DEPEND="2::2.6"
RESTRICT_PYTHON_ABIS="3.*"
