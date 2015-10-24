class accounts {
include groups
include ssh

   $rootgroup = $osfamily ? {
      'Debian' => 'sudo',
      'RedHat' => 'wheel',
       default => warning('This distribution is not support by account module'),

}  

user { 'dsoni':
   ensure	=> present,
   home		=> '/home/dsoni',
   shell	=> '/bin/bash',
   managehome   => true,
   gid	 	=> 'dsoni',
   groups       => "$rootgroup",
   password     => '$1$mALn22oF$rRt2KWDRtWPrnJr.VnS7E.',
   }
}

