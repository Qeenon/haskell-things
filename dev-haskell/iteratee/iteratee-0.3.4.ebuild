# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="Iteratee-based I/O"
HOMEPAGE="http://inmachina.net/~jwlato/haskell/iteratee"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.6.1
		dev-haskell/extensible-exceptions
		=dev-haskell/listlike-1*
		>=dev-haskell/transformers-0.1.4"
DEPEND=">=dev-haskell/cabal-1.6
		${RDEPEND}"
