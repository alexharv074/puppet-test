class test (
) {

  $user = 'fred'

  user { $user: ensure => present }

  $sshkeyarray = [
    'AAAAB3NzaC1yc2EAAAADAQABAAABAQCpVsFWujoVyCo/IopxGoilRntA52N+VS2JKTHOO847SY+56GVPd5Rj7FSdGet/r/wIqPSQGtmfxyTUseiaP8NrHxeCt9MQlrFEXBO/z/5NEfLtAS/DAbZKZBiFlJkYiHrWKNG2luINIqSAOLQk9DsgUn2zCPG7Ysdf8p02U6EzUZovpMqercPwlP0DuDspdSIHnq8gtwBzqyu2NnWnAUlREyjmscBTvHBkjFR8gQl1PNR7qApXVYR/1Qn5Z97RUbM7ld4J3wZYlZdR/Y5zR5l3G8SBn01/MddL6j/D8Gb6lYEqwB+qJGcsEnQSNCkz2aXTZEphwjpWhQ2dgBbOs7W9',
    'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5VNxyolRYSq1MKuioQZi6WS88dCWx1xoKehKjedZC5+ZQ1YSvJHWwEVBCYhlEQLdyGjC4BMowQLrUZIHzR2hxMo60OYkXepfbZLUwwyazJN3+4jZftJmv5oqo1WzKAcbe6Caxss6WgcF5TaoRs3bUlQFnj/lEUgPnkas5jPHUpegISAywzS2RG2SQxShwsW7aP9oJysmvJtPLoc+J57ZwfpF4+uhRDcRU7bYGd4ZgXr21PWnUQxDL7exWFI04ciJjfojEu/JR/OR6TIhtBIAOYl095q3rlqCG9vULZ6lHv2NDikokAsRADf/imU/by4bp0KrSQ9k2L2K5utQYBFZB',
  ]

  $sshkeyarray.each |$index, String $singlesshkey| {
    ssh_authorized_key { "resourcename_${index}":
      ensure  => 'present',
      type    => 'ssh-rsa',
      key     => $singlesshkey,
      user    => $user,
      require => User[$user],
    }
  }
}
