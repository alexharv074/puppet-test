class test () {
  $dovecot_version = '2.1'
  notice(template('test/mytemplate.erb'))
}

include test
