class stack_baseline (

  $project                    = 'default',

  # Package repos management
  $repo_class                 = 'stack_baseline::repo',

  # Packages management
  $packages_class             = 'stack_baseline::packages',
  $base_packages              = '',
  $extra_packages             = '',

  # Network management
  $network_class              = 'stack_baseline::network',

  # Proxy settings
  $proxy_host                 = undef,
  $proxy_port                 = '8080',
  $proxy_template             = 'stack_baseline/network/proxy.sh.erb',

  # Sysctl management
  $sysctl_class               = 'stack_baseline::sysctl',

  # Cron management
  $cron_class                 = 'stack_baseline::cron',

  # Time management
  $time_class                 = 'stack_baseline::time',
  $timezone                   = 'UTC',
  $ntp_servers                = [ '0.pool.ntp.org', '1.pool.ntp.org', '2.pool.ntp.org', '3.pool.ntp.org' ],

  # Mail management
  $mail_class                 = 'stack_baseline::mail',
  $postfix_template           = 'stack_baseline/mail/postfix/main.cf.erb',

  # User access management
  $access_class               = 'stack_baseline::access',

  # Monitor management
  $monitor_class              = '',
  $monitor_servers            = [ '127.0.0.1' ],

  # Firewall management
  $firewall_class             = '',
  $firewall_auto_enable       = false,

  # Backup management
  $backup_class               = '',

  ) {

  if $repo_class {
    class { $repo_class: }
  }

  if $packages_class {
    class { $packages_class: }
  }

  if $network_class {
    class { $network_class: }
  }

  if $sysctl_class {
    class { $sysctl_class: }
  }

  if $time_class {
    class { $time_class: }
  }

  if $mail_class {
    class { $mail_class: }
  }

  if $access_class {
    class { $access_class: }
  }

  if $monitor_class {
    class { $monitor_class: }
  }

  if $firewall_class {
    class { $firewall_class: }
  }

  if $backup_class {
    class { $backup_class: }
  }

}
