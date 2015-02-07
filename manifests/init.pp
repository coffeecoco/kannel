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
   
   
 }
  class kannel {
        include kannel::install, kannel::service, kannel::params
        Class['base'] -> Class['kannel::install'] -> Class['kannel::params'] -> Class['kannel::service']
}
