# SSH client configuration

file { '~/etc/ssh/ssh_config':
  ensure  => 'present',
  mode    => '755',
  content => "
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
