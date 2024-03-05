#!/usr/bin/env bash
# puppet making changes to config file

file { '/etc/ssh/ssh_config':
	ensure => present,
	content =>"
		#SSH client configuration
		host*
		IdentityFile ~/.ssh/school
		PasswordAuthentication no
		",
}
