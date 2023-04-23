# Set the config of a ssh_file using puppet module
file_line { 'Can't authenticate with password':
	path => '/etc/ssh/ssh_config',
	line => '	PasswordAuthentication no',
}

file_line { 'Specify private rsa key path':
	path => '/etc/ssh/ssh_config',
	line => '	IdentifyFile ~/.ssh/school',
}
