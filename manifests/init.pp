class test {
  mount { "/SERVER/New York_share":
    atboot  => true,
    ensure  => mounted,
    device  => "//MOUNTSERVER/New\040York_share",
    fstype  => "cifs",
    options => "credentials=/tmp/id,uid=oracle,gid=oinstall,iocharset=utf8,file_mode=0644,dir_mode=0775,_netdev,soft",
  }
}

include test
