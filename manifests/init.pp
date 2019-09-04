class test (
  exec { 'rename_opt_archives':
		command => "mv /var/cache/apt/archives /opt/apt-archives ;
								ln -s /opt/apt-archives /var/cache/apt/archives";
		path => '/bin',
	}
}
