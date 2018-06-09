class test {

  $users = ['bill','ted']

  file_line { 'use_security':
    ensure => present,
    path   => '/tmp/config.xml',
    line   => '  <useSecurity>true</useSecurity>',
    match  => "^  *<useSecurity>.*</useSecurity>",
  }

  # We need this content all on one line to workaround file_line bug
  # See https://tickets.puppetlabs.com/browse/MODULES-4006.
  #
  $content = inline_template('  <authorizationStrategy class="hudson.security.GlobalMatrixAuthorizationStrategy"><%- @users.sort.each do |username| -%><permission>hudson.model.Hudson.Administer:<%= username %></permission><%- end -%></authorizationStrategy>')

  file_line { 'authorization_strategy':
    ensure => present,
    path   => '/tmp/config.xml',
    line   => $content,
    after  => '</useSecurity>$'
  }
}

include test
