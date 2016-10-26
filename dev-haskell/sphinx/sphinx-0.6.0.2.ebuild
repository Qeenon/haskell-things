# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell bindings to the Sphinx full-text searching daemon"
HOMEPAGE="https://github.com/gregwebs/haskell-sphinx-client"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="version-1-1-beta"

RDEPEND="dev-haskell/binary:=[profile?]
	dev-haskell/data-binary-ieee754:=[profile?]
	dev-haskell/network:=[profile?]
	<dev-haskell/text-1.3:=[profile?]
	<dev-haskell/text-icu-0.8:=[profile?]
	dev-haskell/xml:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag version-1-1-beta version-1-1-beta)
}
