# Configure nginx server using Puppet

package { 'nginx':
  ensure => installed,
}
# Configure default page
file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World',
}

file_line { 'Add redirection, 301':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => '\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

# Enable site
# file { '/etc/nginx/sites-enabled/default':
#  ensure  => 'link',
#  target  => '/etc/nginx/sites-available/default',
#  require => [Package['nginx'], File['/etc/nginx/sites-available/default']],
#  notify  => Service['nginx'],
#}

service { 'nginx':
  ensure   => running,
  enable   => true,
  provider => systemd,
}

exec { 'reload_nginx':
  command     => '/usr/sbin/nginx -s reload',
  refreshonly => true,
  subscribe   => File['/etc/nginx/sites-available/default'],
  require     => Service['nginx'],
}
