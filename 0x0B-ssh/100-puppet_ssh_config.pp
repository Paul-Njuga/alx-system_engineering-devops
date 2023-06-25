# SSH client configuration

file { '/home/your_username/.ssh/config':
  ensure  => 'present',
  mode    => '755',
  content => "
    Host *
      IdentityFile ~/.ssh/school
      PasswordAuthentication no
  ",
}
