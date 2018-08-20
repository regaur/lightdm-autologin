# Maintainer: Jan Boelsche <jan@lagomorph.de>

pkgname='lightdm-autologin'
pkgver=1.0
pkgrel=2
pkgdesc='Creates a user called "auto-login" and configures lightdm to auto-ligin that user'
packager='Jan Boelsche'
arch=('any')
license=('GPL')
groups=()
depends=(
  'lightdm'
  'accountsservice'
)
makedepends=()
checkdepends=()
optdepends=()
install=${pkgname}.install
source=(.dmrc )

sha256sums=('29532d9888430eb1e773f0652ce1024491b31796536347f58ad6dca59bab1fb0')

package() {
  home=${pkgdir}/home/auto-login
	install -m 700 -d "${home}"
	install -m 644 -t "${home}" .dmrc
}

