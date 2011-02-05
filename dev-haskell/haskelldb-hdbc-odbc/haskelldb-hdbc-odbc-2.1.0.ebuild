# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.12

EAPI="2"

CABAL_FEATURES="bin lib profile haddock hscolour"
inherit haskell-cabal

DESCRIPTION="HaskellDB support for the HDBC ODBC driver."
HOMEPAGE="http://trac.haskell.org/haskelldb"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/haskelldb-2*
		=dev-haskell/haskelldb-hdbc-2*
		=dev-haskell/hdbc-2*
		=dev-haskell/hdbc-odbc-2*
		dev-haskell/mtl
		>=dev-lang/ghc-6.8.2
		>=dev-db/unixODBC-2.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
