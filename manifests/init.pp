$content = 'xxx'

class klass1 {
  file { '/tmp/abc':
    content => $::content,
  }
}

# Stage 0 creates the file /tmp/abc.
class stage0 {
  contain klass1
}

# Stage 1 uses the contents of /tmp/abc to create the
# file /tmp/def.
class stage1 {
  file { '/tmp/def':
    content => "Contents: ${::content}",
  }
}

# Try to force stage0 to be loaded before stage1.
include stage0
class { 'stage1':
  require => Class['stage0']
}
