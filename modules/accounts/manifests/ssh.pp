class accounts::ssh {
   
   $sshname	= $osfamily ? {
      'Debian'  => 'ssh',
      'Redhat'  => 'sshd',
       default  => warning('This distribution is not supported ny the account module'),			
}


   file { '/etc/ssh/sshd_config':
      ensure	=> present,
      source    => 'puppet:///modules/accounts/sshd_config',
      notify    => Service["$sshname"],
   }
  
   service { "$sshname":
      hasrestart => true,
      }
  
}
