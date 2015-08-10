# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="README.md LICENSE changelog.md"
RUBY_FAKEGEM_EXTRAINSTALL=""

RUBY_FAKEGEM_GEMSPEC="winrm-fs.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="WinRM File Manager"
HOMEPAGE="https://github.com/WinRb/winrmfs"
SRC_URI="https://github.com/WinRb/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="APACHE-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ruby_add_rdepend "
       >=dev-ruby/erubis-2.7.0-r1
       >=dev-ruby/logging-2.0.0
       >=dev-ruby/rubyzip-1.1.7
       >=dev-ruby/winrm-1.3.0
       "

ruby_add_bdepend "
       >=dev-ruby/rspec-3.2.0
       >=dev-ruby/rake-10.3.2
       >=dev-ruby/rubocop-0.28.0
       "
