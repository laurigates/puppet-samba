# == Class samba::server::params
#
class samba::server::params {
  case $::osfamily {
    'Redhat': {
      $service_name = 'smb'
      $nmbd_name = undef
    }
    'Debian': {
      $service_name = 'smbd'
      $nmbd_name = 'nmbd'
    }
    'Gentoo': {
      $service_name = 'smbd'
      $nmbd_name = 'nmbd'
    }
    'Archlinux': {
      $service_name = 'smbd'
      $nmbd_name = 'nmbd'
    }
    default: { fail("${::osfamily} is not supported by this module.") }
  }
}
