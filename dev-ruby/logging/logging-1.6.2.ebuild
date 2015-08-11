# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_EXTRADOC="README.rdoc History.txt version.txt"

# there's no gemspec bundled => don't define RUBY_FAKEGEM_GEMSPEC

inherit ruby-fakegem eutils

DESCRIPTION="A flexible logging library for use in Ruby programs based on the design of Java's log4j library."
HOMEPAGE="http://rubygems.org/gems/logging"
SRC_URI="https://github.com/TwP/${PN}/archive/${P}.tar.gz"

LICENSE="Ruby"
SLOT="0"
KEYWORDS="~amd64"
IUSE="test"

DEPEND=""
RDEPEND="${DEPEND}"

ruby_add_rdepend "
       >=dev-ruby/little-plugger-1.1.3-r2
       "


ruby_add_bdepend "
       >=dev-ruby/bones-3.7.2
       test? (
             >=dev-ruby/flexmock-0.9.0
             )
       "
# needed because the dir archived is odd
src_unpack() {
    if [ "${A}" != "" ]; then
       unpack ${A}
       mkdir -p all
       mv ${PN}-${P} all/${P}
    fi
}
