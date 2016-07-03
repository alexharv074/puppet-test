class test {
 $home_dir = '/tmp'
 $install_dir = 'app'
 $amq_user = 'amq'
 $amq_group = 'amq'
 
 file { "$home_dir/$install_dir/conf": ensure => directory }
 file { "$home_dir/$install_dir/bin": ensure => directory }
 file { "$home_dir/$install_dir/bin/activemq":
   content => '
#!/bin/bash
if [ $1 = start ]; then
  echo running > /tmp/status
elif [ $1 = stop ]; then
  echo stopped > /tmp/status
fi
exit 0
',
  }

 file { "$home_dir/$install_dir/conf/activemq.xml":
   ensure       => present,
   owner        => $amq_user,
   group        => $amq_group,
   content      => template('test/activemq.xml.erb'),
   audit        => content,
   notify       => Exec['serviceStop'],
 }

 file { "$home_dir/$install_dir/conf/jetty.xml":
   ensure  => present,
   owner   => $amq_user,
   group   => $amq_group,
   content => template('test/jetty.xml.erb'),
   audit   => content,
   notify  => Exec['serviceStop'],
 }

 exec {'serviceStop':
   command => "$home_dir/$install_dir/bin/activemq stop",
   user    => $amq_user,
   group   => $amq_group,
   #refresh => true,
   notify  => Exec['serviceStart'],
   onlyif  => '/bin/cat /tmp/status | grep -v grep | grep running 2>/dev/null',
 }

 exec {'serviceStart':
   command     => "$home_dir/$install_dir/bin/activemq start",
   user        => $amq_user,
   group       => $amq_group,
   refreshonly => true,
   unless      => '/bin/cat /tmp/status | grep -v grep | grep running 2>/dev/null',
 }
}
