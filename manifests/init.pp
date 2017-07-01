class foo {
  $sourcefile = $osfamily ? {
    'Solaris' => 'puppet:///modules/foo/splunkforwarder-6.5.2-67571ef4b87d-SunOS-sparc.tar.Z',
    'RedHat' => 'puppet:///modules/foo/splunkforwarder-6.5.2-67571ef4b87d-Linux-x86_64.tgz',
    'AIX' => 'puppet:///modules/foo/splunkforwarder-6.5.2-67571ef4b87d-AIX-powerpc.tgz',
  }

  $dirname = 'splunkforwarder'
  $filename = "${dirname}.tar.gz"
  $install_path = "/opt/${dirname}"

  file { $install_path:
    ensure => directory,
    owner  => 'findev',
    group  => 'finacle',
    mode   => '0777',
  }

  archive { $filename:
    path         => "/tmp/${filename}",
    source       => $sourcefile,
    extract      => true,
    extract_path => '/opt',
    creates      => "${install_path}",
    cleanup      => true,
    user         => 'findev',
    group        => 'finacle',
    require      => File[$install_path],
  }

  exec {'start_splunk_service':
    path        => '/usr/bin:/bin:/usr/sbin:/sbin',
    user        => 'findev',
    command     => '/opt/splunkforwarder/bin/splunk start --accept-license && echo "1" > /tmp/splunk_status.txt',
    onlyif      => [ 
      "test -f /opt/splunkforwarder/bin/splunk",
      "test `ps -ef | grep -v grep | grep splunk | wc -l` -eq 0",
    ],
    environment => ["HOME=/app/finacle"],
    require     => Archive[$filename],
  }

  file { '/opt/splunkforwarder/etc/system/local/deploymentclient.conf': 
    ensure  => present,
    owner   => 'findev',
    group   => 'finacle',
    mode    => "0777",
    source  => 'puppet:///modules/aoa_agent_installation/deploymentclient.conf',
    require => Archive[$filename],
  }

  exec {'restart_start_splunk_service':
    path        => '/usr/bin:/bin:/usr/sbin:/sbin',
    user        => 'findev',
    command     => '/opt/splunkforwarder/bin/splunk restart && echo "0" > /tmp/splunk_status.txt',
    onlyif      => [ 
      "test -f /opt/splunkforwarder/bin/splunk",
      "test `cat /tmp/splunk_status.txt | tr -s ' '` -eq 1",
    ],
    environment => ["HOME=/app/finacle"],
    require     => File['/opt/splunkforwarder/etc/system/local/deploymentclient.conf'],
  }
}
