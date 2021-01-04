class profile::ssh_server {
        package { 'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { "root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC4hWRH3kfyKeT37jx5oxE6dBAey37OuMKMYG2k45X7yzsusKhE3Yiyvco987vlHZpfObKujNHv3HUJv2VzCVUwZgXgOdkCHpHRm2VtXYBrsZO2Nslyet5/OlED7rAParhIhfwyhNtTWNxEPISOf8gXpTXO0z4g5HczOGB2LLXqbH48A7i0sgbIo4YTOM4fcCtWJ9QFhq1lDQxX0B5kteSM2lt3paPYikuXoc2wc5j11It0y3EZtiOMT6mtKuA/LKBrjN9gGXGwmnuvZaDMuRmDtC8hwwenf4pSU/ki9td1I4UaAKiBFF7PlftWhlvMxBmkjfOhaZPHZGSuuglJ59cB ',
