# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="README.md LICENSE"
RUBY_FAKEGEM_EXTRAINSTALL=""

RUBY_FAKEGEM_GEMSPEC="winrm.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="Ruby library for Windows Remote Management"
HOMEPAGE="https://github.com/WinRb/WinRM"
SRC_URI="https://github.com/WinRb/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="APACHE-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ruby_add_rdepend "
       >=dev-ruby/gssapi-1.2.0
       >=dev-ruby/httpclient-2.5.3.2
       >=dev-ruby/rubyntlm-0.4.0
       >=dev-ruby/uuidtools-2.1.4-r1
       =dev-ruby/logging-1.6.2
       >=dev-ruby/nori-2.0.4
       >=dev-ruby/gyoku-1.0.0
       >=dev-ruby/builder-3.2.2
       "

ruby_add_bdepend "
       >=dev-ruby/rake-10.3.2
       >=dev-ruby/rspec-3.2.0
       >=dev-ruby/rubocop-0.28.0
       "

# Needed since the name in archive contains upper case
src_unpack() {
    if [ "${A}" != "" ]; then
       unpack ${A}
       mkdir -p all
       mv WinRM-${PV} all/${P}
    fi
}
