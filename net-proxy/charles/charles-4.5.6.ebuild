# Copyright 2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit desktop

DESCRIPTION="Web debugging proxy application."
HOMEPAGE="https://www.charlesproxy.com/"
SRC_URI="amd64? ( https://www.charlesproxy.com/assets/release/4.2.8/charles-proxy-4.2.8_amd64.tar.gz )
	x86? ( https://www.charlesproxy.com/assets/release/4.2.8/charles-proxy-4.2.8.tar.gz )"

LICENSE="EULA Apache-2.0 MIT GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND} virtual/jre:1.8"
BDEPEND=""
RESTRICT="strip"

DOCS=(
	doc/licenses/bounce-license.txt
	doc/licenses/jakarta-oro-license.txt
	doc/EULA.rtf
)

S="${WORKDIR}/charles"

src_prepare() {
	rm -fR lib/jre
	default
}

src_install() {
	dobin bin/${PN} bin/add-to-java-cacerts.sh

	dodir /usr/share/java/${PN}
	cp -a lib/* "${D}"/usr/share/java/${PN}/

	make_desktop_entry "${PN} %F" Charles charles-proxy 'Network;Development;WebDevelopment;Java' 'GenericName=Web Debugging Proxy\nStartupNotify=true\nTerminal=false\nStartupWMClass=com-xk72-charles-gui-MainWithClassLoader\nMimeType=application/x-charles-savedsession;application/x-charles-savedsession+xml;application/x-charles-savedsession+json;application/har+json;application/vnd.tcpdump.pcap;application/x-charles-trace'

	for size in 128 16 256 32 512 64; do
		doicon -s $size "icon/${size}x${size}/apps/"*.png
	done
	for size in 128 16 256 32 512 64; do
		rm "icon/${size}x${size}/mimetypes/application-vnd.tcpdump.pcap.png"
		doicon -s $size -c mimetypes "icon/${size}x${size}/mimetypes/"*.png
	done

	insinto /usr/share/mime/packages
	doins etc/mime/${PN}-proxy.xml

	einstalldocs
}

pkg_postinst() {
	xdg_mimeinfo_database_update
}

pkg_postrm() {
	xdg_mimeinfo_database_update
}