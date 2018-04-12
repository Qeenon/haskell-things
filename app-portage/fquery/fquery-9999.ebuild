# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6

CABAL_FEATURES="bin"
EGIT_REPO_URI="https://github.com/gentoo-haskell/${PN}.git"
inherit git-r3 haskell-cabal

DESCRIPTION="Installed package query tool for Gentoo Linux"
HOMEPAGE="http://hackage.haskell.org/package/fquery"

LICENSE="ZLIB"
SLOT="0"
KEYWORDS=""
IUSE=""

RDEPEND="dev-haskell/hashtables:=
	dev-haskell/parsec:=
	dev-haskell/regex-compat:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	sed -e 's/^Version:.*/&.9999/' -i ${PN}.cabal || die # just to distinct from release install

	# Workaround for Cabal 2.2.0.1 running configure with
	# ${S}/dist/build set as the current directory.  This changes
	# the script to prepend ${S}/ to the the paths.  The script
	# then uses the ${S} environment variable.
	sed -e 's@\(Adelie/\)@${S}/\1@g' \
		-i configure || die
}
