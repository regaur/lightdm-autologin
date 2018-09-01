# Maintainer: Jan Boelsche <jan@lagomorph.de>

pkgname='lightdm-autologin'
pkgver=2.8
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
  '.xsession'
  'xinitrc.desktop'
  'xinitrcsession-helper'
  '10-xhost-allow-auto-login-user'
  'auto-login'
)

sha256sums=('dbe56863cea951d3c630fb7b870837ef0715d4eead3bb34f7fc171f9fa852421'
            '839f7b53680095a3be9f9d504d578dcee57688532131d27a1d999c8195c216b8'
            'b3ac5d8a5d49e5221a363bba4e6264b4c415400bdf010ee7e3b5a2554290f480'
            '11784a3c829ef9266ba5ca02be8ce6b14b569ad7be1a79be105c3b38ed3da73a'
            '8cce875ec3b97797ff7b606bb5d4682988eedb4f8de20532e8f92463b4920564'
            'd24815d890b16c17fe32646eafa5b0232eeb05d577251de0fe36af45f6fb17f5'
            '954ee494fada6a61510f3d8e7a0859e757abb4d5f205c9a08a95aff4f6bfba8a')

package() {
  home=${pkgdir}/home/auto-login
  install -m 700 -d "${home}"

  install -m 644 -t "${home}" .dmrc
  install -m 755 -t "${home}" .xinitrc
  install -m 755 -t "${home}" .xsession

  install -m 755 -d "${home}/xsession.d"
  install -m 755 -t "${home}/xsession.d" "10-xhost-allow-auto-login-user"

  install -Dm 644 -t ${pkgdir}/usr/share/xsessions xinitrc.desktop
  install -Dm 755 -t ${pkgdir}/usr/bin xinitrcsession-helper

  install -Dm 644 -t "${pkgdir}/var/lib/AccountsService/users/" auto-login
}

