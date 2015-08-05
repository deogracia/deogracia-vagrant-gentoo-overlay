# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="CHANGELOG.md LICENSE README.md"
RUBY_FAKEGEM_EXTRAINSTALL="examples"

RUBY_FAKEGEM_GEMSPEC="rubyntlm.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="Ruby/NTLM -- NTLM Authentication Library for Ruby"
HOMEPAGE="https://github.com/winrb/rubyntlm"
SRC_URI="https://github.com/WinRb/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ruby_add_bdepend "
       >=dev-ruby/rake-10.3.2
       >=dev-ruby/rspec-3.2.0
       >=dev-ruby/simplecov-0.9.1
       "
