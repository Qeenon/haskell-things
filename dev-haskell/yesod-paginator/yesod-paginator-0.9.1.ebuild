# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A pagination approach for yesod"
HOMEPAGE="https://github.com/pbrisbin/yesod-paginator"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/persistent-1.3:=[profile?] <dev-haskell/persistent-1.4:=[profile?]
	>=dev-haskell/resourcet-0.4.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-2.0:=[profile?]
	dev-haskell/transformers:=[profile?]
	>=dev-haskell/yesod-1.2:=[profile?] <dev-haskell/yesod-1.3:=[profile?]
	>=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"
