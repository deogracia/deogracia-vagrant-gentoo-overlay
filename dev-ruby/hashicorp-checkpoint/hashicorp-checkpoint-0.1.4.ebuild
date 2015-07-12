# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="README.md LICENSE.txt"
RUBY_FAKEGEM_EXTRAINSTALL=""

RUBY_FAKEGEM_GEMSPEC="ruby-checkpoint.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="Internal HashiCorp service to check version information"
HOMEPAGE="http://www.hashicorp.com"
SRC_URI="https://rubygems.org/downloads/hashicorp-checkpoint-${PV}.gem -> ${P}.tar"

LICENSE="MPL2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack() {
    if [ "${A}" != "" ]; then
        unpack ${A} && \
        rm ${WORKDIR}/{metadata,checksums.yaml}.gz && \
        tar xzf ${WORKDIR}/data.tar.gz -C ${WORKDIR} && \
        rm ${WORKDIR}/data.tar.gz
    fi
}

src_prepare() {
	true;
}

