class firewall:pre {
   Firewall {
      require => undef,
}

#Accept all lookback traffic
   firewall { '000' lo traffic':
      proto	=> 'all',
      interface => 'lo',
      action    => 'accept',	
   }->


