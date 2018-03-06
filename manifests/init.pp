class test {
  service { 'splunk':
    ensure =>  running
  }

  test::conf { "SplunkEnterpriseSecuritySuite/authorize/role_sc_admin/importRoles=ess_admin":
    app     => 'SplunkEnterpriseSecuritySuite',
    conf    => 'authorize',
    stanza  => 'role_sc_admin',
    setting => 'importRoles',
    value   => 'ess_admin',
  }
}
