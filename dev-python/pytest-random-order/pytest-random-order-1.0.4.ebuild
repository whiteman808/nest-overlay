# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )

inherit distutils-r1

DESCRIPTION="pytest plugin to randomise the order of tests"
HOMEPAGE="https://github.com/jbasko/pytest-random-order"
SRC_URI="https://github.com/jbasko/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

distutils_enable_tests pytest
