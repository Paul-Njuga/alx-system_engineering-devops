# Configure nginx server using Puppet

package { 'nginx':
  ensure => installed,
}

file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World',
}

file_line { 'Add redirection, 301':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => '\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

service { 'nginx':
  ensure     => running,
  enable     => true,
  hasrestart => true,
  hasstatus  => true,
}

exec { 'reload_nginx':
	command => '/usr/sbin/nginx -s reload',
	refreshonly => true,
	require => Service['nginx'],
}
