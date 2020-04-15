# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Memory-efficient representation of Unicode text strings"
HOMEPAGE="http://hackage.haskell.org/package/text-short"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="asserts"

RDEPEND=">=dev-haskell/hashable-1.2.6:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-haskell/semigroups-0.18.2:=[profile?] <dev-haskell/semigroups-0.20:=[profile?]
	>=dev-haskell/text-1.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-instances-0.3.14 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-1.0.0 <dev-haskell/tasty-1.3
		>=dev-haskell/tasty-hunit-0.10.0 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-quickcheck-0.10 <dev-haskell/tasty-quickcheck-0.11 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base        >= 4.7    && < 4.13' 'base        >= 4.7' \
		'ghc-prim    >= 0.3.1  && < 0.6' 'ghc-prim    >= 0.3.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag asserts asserts)
}
