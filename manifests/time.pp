class stack_baseline::time {

  class { 'timezone':
    timezone => $stack_baseline::timezone,
  } ->
  class { 'ntp':
    runmode       => 'cron',
    server        => $stack_baseline::ntp_servers,
    cron_command  => 'ntpd -q > /dev/null 2>&1'
  } 

}
