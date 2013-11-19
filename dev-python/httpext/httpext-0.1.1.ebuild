# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $
# Ebuild generated by g-pypi 0.3

EAPI="3"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

MY_PN="HttpExt"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Helpers for downloading files."
HOMEPAGE="http://pypi.python.org/pypi/HttpExt/"
SRC_URI="https://pypi.python.org/packages/source/H/HttpExt/${MY_P}.tar.gz"

LICENSE=""
KEYWORDS="~amd64"
SLOT="0"
IUSE=""

S="${WORKDIR}/${MY_P}"

PYTHON_DEPEND="2::2.6"
RESTRICT_PYTHON_ABIS="3.*"
