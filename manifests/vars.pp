define kannel::kannel(
  $kannel_admin_port = "13010",
  $kannel_admin_pwd = "foobar",
  $sms_stat_pwd = "foobar",
  $hub_listen_port = "13012",
  $hub_http_address = "app28.dev1.whispir.net",
  $sendsms_port = "13013",
  $redis_ip = "10.1.161.95",
  $redis_port = "6666",
  $smpp_admin_port = "13014",
  $smpp_admin_pwd = "foobar",
  $smppbox_port = "13015",
  $smppbox_ssl = true,
  $ssl_cert_file = "/app/kannel-test1/etc/wildcard.dev1.whispir.net.crt",
  $ssl_cert_key =  "/app/kannel-test1/etc/wildcard.dev1.whispir.net.clear.pem",
  $smpp_systemid = "smpp_listener_01",
)
{notice "xxx"}
