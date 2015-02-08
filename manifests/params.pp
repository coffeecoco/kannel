class kannel::params(
  $customer = "ubimetau1",
  $smpp_admin_port = "1000",
  $dlr_storage = "redis",
  $smsc_username = "abc",
  $smsc_password = "def",
  $smsc_http_port = "1001",
  $redis_host = "10.50.50.197",
  $redis_port = "6666",
  $kannel_admin_port = "13010",
  $kannel_smsbox_port = "1002",
  $kannel_admin_pwd = "foobar",
  $sms_stat_pwd = foobar,
  $hub_listen_port = 13012,
  $kannel_ip = "10.50.50.195",
  $hub_http_address = "app28.dev1.whispir.net",
  $sendsms_port = 13013,
  $redis_ip = "10.1.161.95",
  $smsbox_port = "15000",
  $hub_username = "abc",
  $hub_password = "def",
  $smpp_admin_pwd = foobar,
  $smppbox_port = 13015,
  $smppbox_ssl = true,
  $ssl_cert_file = "/app/kannel-test1/etc/wildcard.dev1.whispir.net.crt",
  $ssl_cert_key =  "/app/kannel-test1/etc/wildcard.dev1.whispir.net.clear.pem",
  $smpp_systemid = smpp_listener_01,
){}
notify { 'Hello World': }