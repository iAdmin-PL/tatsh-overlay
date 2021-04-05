# Copyright 2019-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Updated and improved Kate editor syntax files and code snippets."
HOMEPAGE="https://github.com/zaufi/kate-stuff"
MY_SHA="d73d628a4969231d4f6e5a02d3ab4bf738c09444"
SRC_URI="https://github.com/zaufi/kate-stuff/archive/${MY_SHA}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/${PN}-${MY_SHA}"

src_install() {
	insinto /usr/share/${PN}
	doins kwin-rules/*
	doins schema/*.kateschema
	insinto /usr/share/org.kde.syntax-highlighting/syntax
	doins syntax/*.xml
	insinto /usr/share/apps/ktexteditor_snippets/data
	doins snippets/*.xml
	einstalldocs
}