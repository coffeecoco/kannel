# Class: kannel_smpp
#
# This module manages kannel_smpp
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#


class kannel::config {
    file { '/app/kannel-smpp/kannel.conf':
    content => template('kannel/kannel.conf.erb'),
    owner => 'root',
    group => 'root',
    mode  => '0644',
    require => Package['kannel'],
    before => Service['kannel'],
    notify  => Service['kannel'],
  }
   file { '/app/kannel-smpp/box.conf':
    content => template('kannel/box.conf.erb'),
    owner => 'root',
    group => 'root',
    mode  => '0644',
    require => Package['kannel'],
    before => Service['kannel'],
    notify  => Service['kannel'],
  }
   file { '/app/kannel-smpp/smppbox.conf':
    content => template('kannel/smppbox.conf.erb'),
    owner => 'root',
    group => 'root',
    mode  => '0644',
    require => Package['kannel'],
    before => Service['kannel'],
    notify  => Service['kannel'],
  }
  }
class backend {
 package {'python2.7': }
 package {'python-dev': }
 package {'python-pip': 
 require => [Package['python2.7']],
 }
  package {'hiredis-devel.x86_64': 
  require => [Package["hiredis-devel.x86_64"]],
 }
 class utils{
package {'curl': }
package {'nano': }
}
}




