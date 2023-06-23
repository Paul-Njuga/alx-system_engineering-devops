# Install flask from pip3

exec { 'pkill killmenow':
  path   => 'usr/bin',
  onlyif => 'usr/bin/pgrep killmenow',
}
