class stack_baseline::network {

  # /etc/hosts
  class { 'hosts':
    template => $stack_baseline::hosts_template,
  }

  # Proxy setting
  if $stack_baseline::proxy_host
  or $stack_baseline::proxy_template != 'stack/base/network/proxy.sh.erb'
  {
      file { '/etc/profile.d/proxy.sh':
      ensure   => present,
      owner    => root,
      group    => root,
      mode     => 0755,
      content  => template($stack_baseline::proxy_template),
    }
  }

}
