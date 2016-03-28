require 'spec_helper'
require 'yaml'

describe 'test' do
  let :pre_condition do
"
yumrepo { 'C7.0.1406-base':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.0.1406/os/$basearch/',
  descr    => 'CentOS-7.0.1406 - Base',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.0.1406-centosplus':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.0.1406/centosplus/$basearch/',
  descr    => 'CentOS-7.0.1406 - CentOSPlus',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.0.1406-extras':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.0.1406/extras/$basearch/',
  descr    => 'CentOS-7.0.1406 - Extras',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.0.1406-fasttrack':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.0.1406/fasttrack/$basearch/',
  descr    => 'CentOS-7.0.1406 - CentOSPlus',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.0.1406-updates':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.0.1406/updates/$basearch/',
  descr    => 'CentOS-7.0.1406 - Updates',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.1.1503-base':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.1.1503/os/$basearch/',
  descr    => 'CentOS-7.1.1503 - Base',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.1.1503-centosplus':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.1.1503/centosplus/$basearch/',
  descr    => 'CentOS-7.1.1503 - CentOSPlus',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.1.1503-extras':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.1.1503/extras/$basearch/',
  descr    => 'CentOS-7.1.1503 - Extras',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.1.1503-fasttrack':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.1.1503/fasttrack/$basearch/',
  descr    => 'CentOS-7.1.1503 - CentOSPlus',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'C7.1.1503-updates':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/7.1.1503/updates/$basearch/',
  descr    => 'CentOS-7.1.1503 - Updates',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'base':
  ensure     => 'present',
  descr      => 'CentOS-$releasever - Base',
  gpgcheck   => '1',
  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=os&infra=$infra',
}
yumrepo { 'base-debuginfo':
  ensure   => 'present',
  baseurl  => 'http://debuginfo.centos.org/7/$basearch/',
  descr    => 'CentOS-7 - Debuginfo',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-Debug-7',
}
yumrepo { 'base-source':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/centos/$releasever/os/Source/',
  descr    => 'CentOS-$releasever - Base Sources',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'c7-media':
  ensure   => 'present',
  baseurl  => 'file:///media/CentOS/
        file:///media/cdrom/
        file:///media/cdrecorder/',
  descr    => 'CentOS-$releasever - Media',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'centosplus':
  ensure     => 'present',
  descr      => 'CentOS-$releasever - Plus',
  enabled    => '0',
  gpgcheck   => '1',
  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=centosplus&infra=$infra',
}
yumrepo { 'centosplus-source':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/centos/$releasever/centosplus/Source/',
  descr    => 'CentOS-$releasever - Plus Sources',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'cr':
  ensure   => 'present',
  baseurl  => 'http://mirror.centos.org/centos/$releasever/cr/$basearch/',
  descr    => 'CentOS-$releasever - cr',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'epel':
  ensure         => 'present',
  descr          => 'Extra Packages for Enterprise Linux 7 - $basearch',
  enabled        => '1',
  failovermethod => 'priority',
  gpgcheck       => '1',
  gpgkey         => 'https://getfedora.org/static/352C64E5.txt',
  mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch',
}
yumrepo { 'epel-debuginfo':
  ensure         => 'present',
  descr          => 'Extra Packages for Enterprise Linux 7 - $basearch - Debug',
  enabled        => '0',
  failovermethod => 'priority',
  gpgcheck       => '1',
  gpgkey         => 'https://getfedora.org/static/352C64E5.txt',
  mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=epel-debug-7&arch=$basearch',
}
yumrepo { 'epel-source':
  ensure         => 'present',
  descr          => 'Extra Packages for Enterprise Linux 7 - $basearch - Source',
  enabled        => '0',
  failovermethod => 'priority',
  gpgcheck       => '1',
  gpgkey         => 'https://getfedora.org/static/352C64E5.txt',
  mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=epel-source-7&arch=$basearch',
}
yumrepo { 'epel-testing':
  ensure         => 'present',
  descr          => 'Extra Packages for Enterprise Linux 7 - Testing - $basearch',
  enabled        => '0',
  failovermethod => 'priority',
  gpgcheck       => '1',
  gpgkey         => 'https://getfedora.org/static/352C64E5.txt',
  mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=testing-epel7&arch=$basearch',
}
yumrepo { 'epel-testing-debuginfo':
  ensure         => 'present',
  descr          => 'Extra Packages for Enterprise Linux 7 - Testing - $basearch - Debug',
  enabled        => '0',
  failovermethod => 'priority',
  gpgcheck       => '1',
  gpgkey         => 'https://getfedora.org/static/352C64E5.txt',
  mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=testing-debug-epel7&arch=$basearch',
}
yumrepo { 'epel-testing-source':
  ensure         => 'present',
  descr          => 'Extra Packages for Enterprise Linux 7 - Testing - $basearch - Source',
  enabled        => '0',
  failovermethod => 'priority',
  gpgcheck       => '1',
  gpgkey         => 'https://getfedora.org/static/352C64E5.txt',
  mirrorlist     => 'https://mirrors.fedoraproject.org/metalink?repo=testing-source-epel7&arch=$basearch',
}
yumrepo { 'extras':
  ensure     => 'present',
  descr      => 'CentOS-$releasever - Extras',
  gpgcheck   => '1',
  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=extras&infra=$infra',
}
yumrepo { 'extras-source':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/centos/$releasever/extras/Source/',
  descr    => 'CentOS-$releasever - Extras Sources',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
yumrepo { 'fasttrack':
  ensure     => 'present',
  descr      => 'CentOS-7 - fasttrack',
  enabled    => '0',
  gpgcheck   => '1',
  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=fasttrack&infra=$infra',
}
yumrepo { 'jpackage-generic':
  ensure     => 'present',
  descr      => 'JPackage generic',
  enabled    => '1',
  gpgcheck   => '1',
  gpgkey     => 'http://www.jpackage.org/jpackage.asc',
  mirrorlist => 'http://www.jpackage.org/mirrorlist.php?dist=generic&type=free&release=5.0',
}
yumrepo { 'puppetlabs-deps':
  ensure   => 'present',
  baseurl  => 'http://yum.puppetlabs.com/el/7/dependencies/$basearch',
  descr    => 'Puppet Labs Dependencies El 7 - $basearch',
  enabled  => '1',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
}
yumrepo { 'puppetlabs-deps-source':
  ensure   => 'present',
  baseurl  => 'http://yum.puppetlabs.com/el/7/dependencies/SRPMS',
  descr    => 'Puppet Labs Source Dependencies El 7 - $basearch - Source',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
}
yumrepo { 'puppetlabs-devel':
  ensure   => 'present',
  baseurl  => 'http://yum.puppetlabs.com/el/7/devel/$basearch',
  descr    => 'Puppet Labs Devel El 7 - $basearch',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
}
yumrepo { 'puppetlabs-devel-source':
  ensure   => 'present',
  baseurl  => 'http://yum.puppetlabs.com/el/7/devel/SRPMS',
  descr    => 'Puppet Labs Devel El 7 - $basearch - Source',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
}
yumrepo { 'puppetlabs-products':
  ensure   => 'present',
  baseurl  => 'http://yum.puppetlabs.com/el/7/products/$basearch',
  descr    => 'Puppet Labs Products El 7 - $basearch',
  enabled  => '1',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
}
yumrepo { 'puppetlabs-products-source':
  ensure         => 'present',
  baseurl        => 'http://yum.puppetlabs.com/el/7/products/SRPMS',
  descr          => 'Puppet Labs Products El 7 - $basearch - Source',
  enabled        => '0',
  failovermethod => 'priority',
  gpgcheck       => '1',
  gpgkey         => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs',
}
yumrepo { 'spacewalk':
  ensure   => 'present',
  baseurl  => 'http://yum.spacewalkproject.org/2.4/RHEL/7/$basearch/',
  descr    => 'Spacewalk',
  enabled  => '1',
  gpgcheck => '1',
  gpgkey   => 'http://yum.spacewalkproject.org/RPM-GPG-KEY-spacewalk-2015',
}
yumrepo { 'spacewalk-nightly':
  ensure   => 'present',
  baseurl  => 'http://yum.spacewalkproject.org/nightly/RHEL/7/$basearch/',
  descr    => 'Spacewalk nightly',
  enabled  => '0',
  gpgcheck => '0',
  gpgkey   => 'http://yum.spacewalkproject.org/RPM-GPG-KEY-spacewalk-2015',
}
yumrepo { 'spacewalk-source':
  ensure   => 'present',
  baseurl  => 'http://yum.spacewalkproject.org/2.4/RHEL/7/source/',
  descr    => 'Spacewalk SRPMS',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'http://yum.spacewalkproject.org/RPM-GPG-KEY-spacewalk-2015',
}
yumrepo { 'updates':
  ensure     => 'present',
  descr      => 'CentOS-$releasever - Updates',
  gpgcheck   => '1',
  gpgkey     => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
  mirrorlist => 'http://mirrorlist.centos.org/?release=$releasever&arch=$basearch&repo=updates&infra=$infra',
}
yumrepo { 'updates-source':
  ensure   => 'present',
  baseurl  => 'http://vault.centos.org/centos/$releasever/updates/Source/',
  descr    => 'CentOS-$releasever - Updates Sources',
  enabled  => '0',
  gpgcheck => '1',
  gpgkey   => 'file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7',
}
"
  end
  it {
    File.write(
      'foo.json',
      YAML.load(PSON.pretty_generate(catalogue)).to_yaml
    )
  }
end
