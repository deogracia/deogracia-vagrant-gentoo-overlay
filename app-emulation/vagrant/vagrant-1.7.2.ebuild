# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20 ruby21"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="CHANGELOG.md CONTRIBUTING.md README.md LICENSE"
RUBY_FAKEGEM_EXTRAINSTALL="contrib keys plugins templates"

RUBY_FAKEGEM_GEMSPEC="vagrant.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="Vagrant is a tool for building and distributing development environments."
HOMEPAGE="http://www.vagrantup.com"
SRC_URI="https://github.com/mitchellh/${PN}/archive/v${PV}.tar.gz"

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
	   >=dev-ruby/bundler-1.7.13"
