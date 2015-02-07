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
define kannel::params(
  $kannel_admin_port = "13010",
  $kannel_admin_pwd = foobar,
  $sms_stat_pwd = foobar,
  $hub_listen_port = 13012,
  $hub_http_address = "app28.dev1.whispir.net",
  $sendsms_port = 13013,
  $redis_ip = "10.1.161.95",
  $redis_port = 6666,
  $smpp_admin_port = 13014,
  $smpp_admin_pwd = foobar,
  $smppbox_port = 13015,
  $smppbox_ssl = true,
  $ssl_cert_file = "/app/kannel-test1/etc/wildcard.dev1.whispir.net.crt",
  $ssl_cert_key =  "/app/kannel-test1/etc/wildcard.dev1.whispir.net.clear.pem",
  $smpp_systemid = smpp_listener_01,
)
{


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




