class test::params {
  $fstype = $::operatingsystemmajrelease ? {
    '5'     => 'ext3',
    '6'     => 'ext4',
    '7'     => 'xfs',
    default => fail(" ${::operatingsystemrelease} is not supported.")
  }
}
