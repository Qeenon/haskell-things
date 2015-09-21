# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Handle ignore files of different VCSes"
HOMEPAGE="https://github.com/agrafix/ignore"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="without-pcre"

RDEPEND=">=dev-haskell/glob-0.7:=[profile?]
	>=dev-haskell/mtl-2.1.3.1:=[profile?]
	>=dev-haskell/path-0.5.1:=[profile?]
	>=dev-haskell/text-1.2.0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	!without-pcre? ( >=dev-haskell/pcre-heavy-0.2:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/htf-0.12.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag without-pcre without-pcre)
}
