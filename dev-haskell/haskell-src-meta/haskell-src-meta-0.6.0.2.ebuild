# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.2.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Parse source to template-haskell abstract syntax."
HOMEPAGE="http://hackage.haskell.org/package/haskell-src-meta"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/haskell-src-exts-1.8:=[profile?]
		<dev-haskell/haskell-src-exts-1.14:=[profile?]
		>=dev-haskell/syb-0.1:=[profile?]
		<dev-haskell/syb-0.5:=[profile?]
		>=dev-haskell/th-orphans-0.5:=[profile?]
		<dev-haskell/th-orphans-0.7:=[profile?]
		>=dev-haskell/uniplate-1.3:=[profile?]
		<dev-haskell/uniplate-1.7:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
