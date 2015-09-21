# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999
#hackport: flags: -lib-werror,+test-doctests

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Log-domain arithmetic"
HOMEPAGE="https://github.com/ekmett/log-domain/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+ffi"

RDEPEND=">=dev-haskell/binary-0.5:=[profile?] <dev-haskell/binary-0.8:=[profile?]
	>=dev-haskell/bytes-0.7:=[profile?] <dev-haskell/bytes-1:=[profile?]
	>=dev-haskell/cereal-0.3.5:=[profile?] <dev-haskell/cereal-0.5:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-5:=[profile?]
	>=dev-haskell/distributive-0.3:=[profile?] <dev-haskell/distributive-1:=[profile?]
	>=dev-haskell/generic-deriving-1.4:=[profile?] <dev-haskell/generic-deriving-1.9:=[profile?]
	>=dev-haskell/hashable-1.1.2.3:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/hashable-extras-0.2:=[profile?] <dev-haskell/hashable-extras-1:=[profile?]
	>=dev-haskell/safecopy-0.8.1:=[profile?] <dev-haskell/safecopy-0.9:=[profile?]
	>=dev-haskell/semigroupoids-4:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/semigroups-0.8.4:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/vector-0.9:=[profile?] <dev-haskell/vector-0.12:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/doctest-0.9.1
		>=dev-haskell/semigroups-0.9
		>=dev-haskell/simple-reflect-0.3.1 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag ffi ffi) \
		--flag=-lib-werror \
		--flag=test-doctests
}
