# vim: set paste
#
# splunk_enterprise_security::conf
#
# A description of what this defined type does
#
# @summary A short summary of the purpose of this defined type.
#
# @example
#   splunk_enterprise_security::conf { 'namevar': }
#
define test::conf(
  Enum['default','local'] $loc  = 'local',
  Array $values,
  $app,
  $conf,
  $stanza,
  $setting,
) {
  $splunk_home = '/home/splunk'
  $splunk_user = 'splunk'

  file { "${splunk_home}/etc/${app}/${loc}":
    ensure  => directory,
    owner   => $splunk_user,
    group   => $splunk_user,
    mode    => '0750',
  }

  file { "${splunk_home}/etc/${app}/${loc}/${conf}.conf":
    ensure  => present,
    owner   => $splunk_user,
    group   => $splunk_user,
    mode    => '0640',
    require => File["${splunk_home}/etc/${app}/${loc}"],
  }

  ini_setting { "${splunk_home}/etc/${app}/${loc}/${conf}.conf":
    ensure  => present,
    section => $stanza,
    setting => $setting,
    value   => join($values, ','),
    path    => "${splunk_home}/etc/${app}/${loc}/${conf}.conf",
    require => File["${splunk_home}/etc/${app}/${loc}/${conf}.conf"],
    notify  => Service['splunk'],
  }
}
