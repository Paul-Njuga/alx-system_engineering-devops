# Install flask from pip3

file { 'flask':
	ensure   => '2.1.0',
	provider => 'pip3',
}
