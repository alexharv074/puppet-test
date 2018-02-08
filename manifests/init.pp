# vim: set paste
class test (
  $certificates = hiera('test::install::certificates'), 
) {
  $domains = [
    'test1.domain.com',
    'test2.domain.com',
    'test3.domain.com',
  ]

  test::install { $domains:
    certificates =>  $certificates,
  }
}
