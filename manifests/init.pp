class test (
) {

  $c6release = '/foo'
  yumrepo { "EPEL${c6release}-x86_64":
      name     => "EPEL${c6release}-x86_64",
      baseurl  => "http://repo.centos.com/cobbler/repo_mirror/EPEL${c6release}-x86_64/",
      gpgcheck => false,
      enabled  => true,
      priority => '2';
  }
}
