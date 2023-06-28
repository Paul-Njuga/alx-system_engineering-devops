# Configure nginx server using Puppet

package { 'nginx':
  ensure => installed,
}

file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World',
}

file_line { 'Add redirection, 301':
  path   => '/etc/nginx/sites-available/default',
  ensure => 'present',
  after  => 'server_name _;',
  line   => '\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
