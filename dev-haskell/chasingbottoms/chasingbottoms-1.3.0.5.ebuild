# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="ChasingBottoms"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="For testing partial and infinite values."
HOMEPAGE="http://hackage.haskell.org/package/ChasingBottoms"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-1.1:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/quickcheck-2.1:=[profile?]
		<dev-haskell/quickcheck-2.6:=[profile?]
		=dev-haskell/random-1.0*:=[profile?]
		>=dev-haskell/syb-0.1.0.2:=[profile?]
		<dev-haskell/syb-0.4:=[profile?]
		>=dev-lang/ghc-6.12.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/${PN}-1.3.0.5-ghc-7.6.patch"
	"${FILESDIR}/${PN}-1.3.0.5-ghc-7.7.patch")
