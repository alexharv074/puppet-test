class test ($repos) {
	ensure_packages(['httpd'], {'ensure' => 'present'})
	$repos.each |String $repo| {
		file {"/etc/httpd/conf.d/${repo}_repo1.conf":
			ensure  => file,
			mode    => '0644',
			content => template('test/mytemplate.erb'),
		}
	}
}

include test
