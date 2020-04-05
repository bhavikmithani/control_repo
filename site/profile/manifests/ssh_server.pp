 profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCdhWOFOQV1RLC/uiw9/07xlKkKVmR4FPe80Ohj/9cwF0ZpoM6H1NlAj7+L222TeRKQESeEs4WUzOF51/qOeniEkpv+mp9+t+jQntfbwidE7rM9bwA7TbOPvCANcdc9FN3LYDlZZPK7tM5ut2UKL4Ew+px1dwiCCaGXeQr5p9NvF6r0dySKSLMuAGU0OMj2/9PVGiCKf+1aPmrq2rlEMEM/svN6/xGAdPGaBk+/AchqIxmZhioPIlNVz19JVhwG/0PscM2wmrRi1fZmVIdzehLZFcD5cBx2S0YZXfeMXGK5OdQW73QwiVl8XeLv2k45HCiVRXH2WhCPEIhMog+EXV5t',
	}  
}
