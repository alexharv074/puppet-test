class foo {
  include apache
  apache::vhost {  'mysite':
    servername      => 'mysite.com',
    vhost_name      => '1.1.1.1',
    port            => '80',
    docroot         => 'mydocroot',
    directories => [
      {
        path => '/var/www/mysite',
        provider => 'directory',
        options => ['-Indexes','FollowSymLinks'],
        expires_active  => 'On',
        expires_default => '"access plus 0 seconds"',
        expires_by_type => [
          'ExpiresByType text/javascript "access plus 12 hours"',
          'ExpiresByType application/x-javascript "access plus 12 hours"',
          'ExpiresByType text/css "access plus 12 hours"',
          'ExpiresByType image/gif "access plus 12 hours"',
          'ExpiresByType image/jpeg "access plus 12 hours"',
          'ExpiresByType application/x-shockwave-flash "access plus 12 hours"',
        ],
      },
    ],
  }
}
