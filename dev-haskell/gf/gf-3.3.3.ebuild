# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.11

EAPI=4

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit base haskell-cabal

DESCRIPTION="Grammatical Framework"
HOMEPAGE="http://www.grammaticalframework.org"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2 LGPL-2 BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="server"
RESTRICT="test"

RDEPEND="dev-haskell/fst
		dev-haskell/haskeline
		dev-haskell/mtl
		dev-haskell/random
		server? ( dev-haskell/cgi
			dev-haskell/httpd-shed
			dev-haskell/json
			dev-haskell/network
			dev-haskell/silently
			dev-haskell/utf8-string
		)
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		<dev-haskell/alex-3
		>=dev-haskell/cabal-1.8
		dev-haskell/happy"

PATCHES=("${FILESDIR}/${PN}-3.3.3-stderr-utf8.patch")

src_configure() {
	cabal_src_configure $(cabal_flag server)
}
