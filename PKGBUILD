# Maintainer: Jan Boelsche <jan@lagomorph.de>

pkgname='lightdm-autologin'
pkgver=2.0
pkgrel=1
pkgdesc='Create "auto-login" user, log into lightdm and run xinitrc'
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

source=(
  '.dmrc'
  '.xinitrc'
  'xinitrc.desktop'
  'xinitrcsession-helper'
)

sha256sums=('dbe56863cea951d3c630fb7b870837ef0715d4eead3bb34f7fc171f9fa852421'
            '02c5ed8cdd8ab561f273623d5fb5e367c900436707405cc3ccddc2a614f8b482'
            '11784a3c829ef9266ba5ca02be8ce6b14b569ad7be1a79be105c3b38ed3da73a'
            '8cce875ec3b97797ff7b606bb5d4682988eedb4f8de20532e8f92463b4920564')

package() {
  home=${pkgdir}/home/auto-login
	install -m 700 -d "${home}"
	install -m 644 -t "${home}" .dmrc
	install -m 644 -t "${home}" .xinitrc

  install -m 644 -t ${pkgdir}/usr/share/xsessions xinitrc.desktop
  install -m 755 -4 ${pkgdir}/usr/bin xinitrcsession-helper
}

