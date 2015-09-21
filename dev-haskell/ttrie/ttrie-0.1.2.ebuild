# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Contention-free STM hash map"
HOMEPAGE="https://github.com/mcschroeder/ttrie"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/atomic-primops-0.6:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?]
	>=dev-haskell/primitive-0.5:=[profile?]
	>=dev-haskell/stm-2:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-2.9
		>=dev-haskell/test-framework-0.8 <dev-haskell/test-framework-0.9
		>=dev-haskell/test-framework-quickcheck2-0.3 <dev-haskell/test-framework-quickcheck2-0.4 )
"

src_prepare() {
	cabal_chdeps \
		'base >=4.7 && <4.8' 'base >=4.7 && <4.9' \
		'QuickCheck ==2.5.*' 'QuickCheck >=2.5 && <2.9'
}

