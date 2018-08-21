# Maintainer: Jan Boelsche <jan@lagomorph.de>

pkgname='lightdm-autologin'
pkgver=2.1
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
            'd605ca06ba7892f287810cf98bda749eec7c64375691216d5419970d4e33edf5'
            '11784a3c829ef9266ba5ca02be8ce6b14b569ad7be1a79be105c3b38ed3da73a'
            '8cce875ec3b97797ff7b606bb5d4682988eedb4f8de20532e8f92463b4920564')

package() {
  home=${pkgdir}/home/auto-login
	install -m 700 -d "${home}"
	install -m 755 -d "${home}/xinitrc.d"

	install -m 644 -t "${home}" .dmrc
	install -m 755 -t "${home}" .xinitrc

  install -Dm 644 -t ${pkgdir}/usr/share/xsessions xinitrc.desktop
  install -Dm 755 -t ${pkgdir}/usr/bin xinitrcsession-helper
}

