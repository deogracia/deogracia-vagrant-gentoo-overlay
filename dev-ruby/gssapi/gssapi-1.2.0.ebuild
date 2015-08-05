# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

USE_RUBY="ruby20"

RUBY_FAKEGEM_TASK_DOC=""
RUBY_FAKEGEM_TASK_EXTRADOC="COPYING Changelog.md README.md"
RUBY_FAKEGEM_EXTRAINSTALL="examples"

RUBY_FAKEGEM_GEMSPEC="gssapi.gemspec"

inherit ruby-fakegem eutils

DESCRIPTION="A Ruby FFI wrapper around GSSAPI"
HOMEPAGE="http://github.com/zenchild/gssapi"
SRC_URI="https://github.com/zenchild/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ruby_add_rdepend "
       >=dev-ruby/ffi-1.9.6-r1
       "
