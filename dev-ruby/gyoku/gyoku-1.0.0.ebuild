# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="CHANGELOG.md README.md LICENSE"
RUBY_FAKEGEM_EXTRAINSTALL=""

RUBY_FAKEGEM_GEMSPEC="gyoku.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="Translates Ruby Hashes to XML"
HOMEPAGE="https://github.com/savonrb/gyoku"
SRC_URI="https://github.com/savonrb/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ruby_add_rdepend "
       >=dev-ruby/builder-3.2.2
       "

ruby_add_bdepend "
       >=dev-ruby/rake-0.9.6-r1
       >=dev-ruby/rspec-2.14.1
       "
