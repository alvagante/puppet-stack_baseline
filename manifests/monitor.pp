class stack_baseline::monitor {

  # TODO Create dedicated rkt_newrelic module
  if $stack_baseline::newrelic_license_key {
    class { '::newrelic':
      license_key        => $stack_baseline::newrelic_license_key,
    }
  }

  class { '::nrpe':
    allowed_hosts   => $stack_baseline::monitor_servers,
    use_ssl         => true,
  }  
}
