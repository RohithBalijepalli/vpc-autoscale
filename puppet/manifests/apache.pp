package { 'httpd':
  ensure => installed,
}

service { 'httpd':
  ensure     => running,
  enable     => true,
  provider   => 'systemd',
  require    => Package['httpd'],
}

file { '/var/www/html/index.html':
  ensure  => file,
  content => "<html>
  <head>
    <title>Welcome to Apache Server</title>
  </head>
  <body>
    <h1>Hello, World!</h1>
    <p>This page is managed by Puppet.</p>
  </body>
  </html>",
  require => Package['httpd'],
}
