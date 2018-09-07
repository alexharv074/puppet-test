class test {
  $pkgs = {
    'epel-release' => 'https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm',
    'pgadmin4' => 'https://download.postgresql.org/pub/repos/yum/10/redhat/rhel-7-x86_64/pgdg-centos10-10-2.noarch.rpm',
  }

  $pkgs.each |$pkg, $source| {
    yum::install { $pkg:
      ensure => present,
      source => $source,
    }
  }
}
