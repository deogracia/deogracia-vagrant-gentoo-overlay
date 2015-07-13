# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="CHANGELOG.md CONTRIBUTING.md README.md LICENSE"
RUBY_FAKEGEM_EXTRAINSTALL="contrib keys plugins templates version.txt"

RUBY_FAKEGEM_GEMSPEC="vagrant.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="Vagrant is a tool for building and distributing development environments."
HOMEPAGE="http://www.vagrantup.com"
SRC_URI="https://github.com/mitchellh/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}
       >=app-emulation/virtualbox-4.3.28"

ruby_add_rdepend "
       >=dev-ruby/childprocess-0.5.0
       >=dev-ruby/erubis-2.7.0
       >=dev-ruby/i18n-0.6.11
       =dev-ruby/nokogiri-1.6.3.1
       >=dev-ruby/net-scp-1.1.0
       >=dev-ruby/net-ssh-2.8.0
       >=dev-ruby/net-sftp-2.1.0
       >=dev-ruby/bundler-1.7.13
       >=dev-ruby/rest-client-1.8.0
       >=dev-ruby/log4r-1.1.10
       >=dev-ruby/listen-2.8.0
       >=dev-ruby/hashicorp-checkpoint-0.1.4"

ruby_add_bdepend "
       >=dev-ruby/rake-0.9.6
       >=dev-ruby/rspec-2.14.0
       >=dev-ruby/webmock-1.19.0"

all_ruby_prepare() {
    sed -i -e '/"rb-kqueue"/d;/"wdm"/d;/"winrm"/d' ${RUBY_FAKEGEM_GEMSPEC} || \
     die "`pwd` / ${RUBY_FAKEGEM_GEMSPEC} / Sed failed!"

    cd "${S}"
    epatch "${FILESDIR}"/${P}-no-warning.patch
    epatch "${FILESDIR}"/${P}-rvm.patch
}

