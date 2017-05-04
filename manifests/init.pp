class foo (
) {
  $mountpoints = {
    '/' => {
      available => '21.93 GiB',
      available_bytes => '23542669312',
      capacity => '26.88%',
      device => '/dev/sda1',
      filesystem => 'xfs',
      options => ['rw', 'seclabel', 'relatime', 'attr2', 'inode64', 'noquota'],
      size => '29.98 GiB',
      size_bytes => '32195481600',
      used => '8.06 GiB',
      used_bytes => '8652812288',
    },
    '/datadisks/disk2' => {
      available => '1006.74 GiB',
      available_bytes => '1080982728704',
      capacity => '0.01%',
      device => '/dev/sdc1',
      filesystem => 'ext4',
      options => ['rw', 'seclabel', 'nosuid', 'nodev', 'noexec', 'noatime', 'nodiratime', 'data=ordered'],
      size => '1006.82 GiB',
      size_bytes => '1081062445056',
      used => '76.02 MiB',
      used_bytes => '79716352',
    },
    '/mnt/resource' => {
      available => '110.06 GiB',
      available_bytes => '118173499392',
      capacity => '0.05%',
      device => '/dev/sdb1',
      filesystem => 'ext4',
      options => ['rw', 'seclabel', 'relatime', 'data=ordered'],
      size => '110.12 GiB',
      size_bytes => '118236442624',
      used => '60.03 MiB',
      used_bytes => '62943232',
    },
  }
  $keys = $mountpoints.keys.filter |$items| { $items =~ /datadisks/ }
  notice($keys)
  $datadisks = $mountpoints.filter |$items| { $items[0] =~ /datadisks/ }
  notice($datadisks)
}
