# Configure nginx using puppet

package { 'nginx':
  ensure   => installed,
}

file { 'Hello World':
  path    => '/var/www/html/index.nginx-debian.html',
  content => 'Hello World',
}

file_line { 'Hello World':
  path  => '/etc/nginx/sites-available/default',
  after => 'listen 80 default_server',
  line  => '\trewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;',
}

exec { 'service':
  command  => 'service nginx start',
  provider => 'shell',
  user     => 'root',
  path     => '/usr/sbin/service',
}
