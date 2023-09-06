# Configure nginx server using Puppet

package { 'nginx':
  ensure => installed,
}

# Configure default page
file { '/var/www/html/index.nginx-debian.html':
  content => 'Hello World',
}

file_line { '301_redirection':
  ensure => 'present',
  path   => '/etc/nginx/sites-available/default',
  after  => 'server_name _;',
  line   => '\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

# Configure custom 404 error page
file { '/usr/share/nginx/html/custom_404.html':
  content => 'Ceci n\'est pas une page\n',
}

file_line { 'custom_404':
  ensure => 'present',
  path   => '/usr/share/nginx/html/custom_404.html',
  after  => 'listen [::]:80 default_server;',
  line   => '\terror_page 404 /custom_404.html;\n\tlocation = /custom_404.html {\n\t\troot /usr/share/nginx/html;\n\t\tinternal;\n\t}',
}

# Enable site
file { '/etc/nginx/sites-enabled/default':
  ensure  => 'link',
  target  => '/etc/nginx/sites-available/default',
  require => [Package['nginx'], File['/etc/nginx/sites-available/default']],
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}

# Reload nginx
exec { 'reload_nginx':
  command     => '/usr/sbin/nginx -s reload',
  refreshonly => true,
  subscribe   => [File['/etc/nginx/nginx.conf'], File['/etc/nginx/sites-available/default']],
  require     => Service['nginx'],
}
