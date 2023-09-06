# Configure nginx server using Puppet

package { 'nginx':
  ensure => installed,
}

# Configure default page
file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World',
}

service { 'nginx':
  ensure => running,
  enable => true,
}

file { '/etc/nginx/sites-available/default':
  ensure => file,
  content => @(EOF)
    server {
	  listen 80 default_server;
	  listen [::]:80 default_server;

	  root /var/www/html;
	  index index.html index.htm index.nginx-debian.html;

	  server_name _;

	  # 301 redirect_me
      rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;

	  location / {
          try_files $uri $uri/ =404;
      }
	}
  EOF
}

# Enable site
file { '/etc/nginx/sites-enabled/default':
  ensure  => 'link',
  target  => '/etc/nginx/sites-available/default',
  require => [Package['nginx'], File['/etc/nginx/sites-available/default']],
  notify  => Service['nginx'],
}

# Reload nginx
exec { 'reload_nginx':
  command     => '/usr/sbin/nginx -s reload',
  refreshonly => true,
  subscribe   => [File['/etc/nginx/nginx.conf'], File['/etc/nginx/sites-available/default']],
  require     => Service['nginx'],
}
