default['arpwatch']['interfaces']['data_file' ] = ''
default['arpwatch']['interfaces']['enabled' ] = 'true'
default['arpwatch']['interfaces'] = {
  'eth0' => {
    'additional_networks' => '',
    'ignored_range' =>'',
    'bogons' => 'true',
    'recipient_email' => '',
    'send_email' => 'false',
    'user' => '',
    'bounce_wait' => '10'   
   },
  'eth1' => {
    'additional_networks' => '',
    'ignored_range' =>'',
    'bogons' => 'true',
    'recipient_email' => '',
    'send_email' => 'false',
    'user' => '',
    'bounce_wait' => '10'   
  }
}