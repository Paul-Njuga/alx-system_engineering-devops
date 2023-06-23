# Kills a process named killmenow

exec { 'pkill killmenow':
  path   => '/usr/bin',
  onlyif => '/usr/bin/pgrep killmenow',
}
