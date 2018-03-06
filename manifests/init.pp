class test {
  $values = ['pci_admin', 'ess_admin']

  service { 'splunk':
    ensure =>  running
  }

  test::conf { "SplunkEnterpriseSecuritySuite/authorize/role_sc_admin/importRoles=ess_admin":
    app     => 'SplunkEnterpriseSecuritySuite',
    conf    => 'authorize',
    stanza  => 'role_sc_admin',
    setting => 'importRoles',
    values  => $values,
  }
}
