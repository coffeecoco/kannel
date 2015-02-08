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
class kannel (
  $kannel_admin_port = $kannel::params::kannel_admin_port,
  $kannel_admin_pwd = $kannel::params::kannel_admin_pwd,
  $sms_stat_pwd = $kannel::params::sms_stat_pwd,
  $hub_listen_port = $kannel::params::hub_listen_port,
  $hub_http_address = $kannel::params::hub_http_address,
  $sendsms_port = $kannel::params::sendsms_port,
  $redis_ip = $kannel::params::redis_ip,
  $redis_port = $kannel::params::redis_port,
  $smpp_admin_port = $kannel::params::smpp_admin_port,
  $smpp_admin_pwd = $kannel::params::smpp_admin_pwd,
  $smppbox_port = $kannel::params::smppbox_port,
  $smppbox_ssl = $kannel::params::smppbox_ssl,
  $ssl_cert_file = $kannel::params::ssl_cert_file,
  $ssl_cert_key =  $kannel::params::ssl_cert_key,
  $smpp_systemid = $kannel::params::smpp_systemid,
 ) inherits kannel::params {
   
   class kannel::config(
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
   
 }
