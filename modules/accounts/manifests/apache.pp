class accounts::apache {

# installing apache package
  
package { 'apache2' :
    require => Exec['apt-update'],
    ensure  => installed,

	}
# Ensure service is running
    
service {'apache2' :
    ensure => running,	

	}
} 
