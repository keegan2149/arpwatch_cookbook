name             'arpwatch'
maintainer       'AWeber Communications'
maintainer_email 'keeganh@aweber.com'
license          'BSD 3 clause'
description      'Installs arpwatch from package'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'
supports          'ubuntu'
supports          'debian'

attribute 'arpwatch/data_dir',
  :display_name => 'arpwatch location for arpwatch datafiles',
  :default => ['/var/lib/arpwatch/'],
  :type => 'string',
  :required => 'required'

attribute 'arpwatch/enabled',
  :display_name => 'on/off switch',
  :default => ['true'],
  :type => 'string',
  :required => 'required'

attribute 'arpwatch/interfaces',
  :display_name => 'arpwatch config values hash',
  :default => ['eth0','eth1'],
  :type => 'hash',
  :required => 'required'
  
attribute 'arpwatch/interfaces/<interface>/additional_networks',
  :display_name => 'additional networks present on interface <interface>',
  :default => ['null'],
  :type => 'string',
  :required => 'optional'

attribute 'arpwatch/interfaces/<interface>/additional_networks',
  :display_name => 'additional networks present on interface <interface>',
  :default => ['null'],
  :type => 'string',
  :required => 'optional'

attribute 'arpwatch/interfaces/<interface>/ignored_range',
  :display_name => 'range of addresses to be ignored on interface <interface>',
  :default => ['null'],
  :type => 'string',
  :required => 'optional'

attribute 'arpwatch/interfaces/<interface>/bogons',
  :display_name => 'report bogons or IP addresses not part of the configured network or secondary list',
  :default => ['null'],
  :type => 'string',
  :required => 'optional'

attribute 'arpwatch/interfaces/<interface>/recipient_email',
  :display_name => 'email address for log emails',
  :default => ['null'],
  :type => 'string',
  :required => 'optional'

attribute 'arpwatch/interfaces/<interface>/send_email',
  :display_name => 'enable or disable email logs',
  :default => ['false'],
  :type => 'string',
  :required => 'required'
  
attribute 'arpwatch/interfaces/<interface>/user',
  :display_name => 'drop root privilidges and run as user',
  :default => ['null'],
  :type => 'string',
  :required => 'optional'
  
attribute 'arpwatch/interfaces/<interface>/boounce_wait',
  :display_name => 'amount of time to wait before restarting arpwatch after interface bounce',
  :default => ['10'],
  :type => 'string',
  :required => 'optional'


