class stack_baseline::packages {

  $os_base_packages = $::osfamily ? {
    'Debian' => [ 'lsb-release','apt-show-versions','curl','git','htop','iotop','pbzip2','pigz','procps','python-pip','strace','tcpdump','traceroute','tree','w3m','wget' ],
    'RedHat' => [ 'redhat-lsb','curl','git','htop','iotop','pbzip2','pigz','procps','python-pip','strace','tcpdump','traceroute','tree','w3m','wget' ],
    'SuSE'   => [ 'lsb','curl','git','htop','iotop','strace','tcpdump','traceroute','tree','wget' ],
  }

  $real_base_packages = $stack_baseline::base_packages ? {
    ''      => $os_base_packages,
    default => $stack_baseline::base_packages,
  }
  if $stack_baseline::extra_packages {
    $packages = concat($stack_baseline::extra_packages , $real_base_packages)
  } else {
    $packages = $real_base_packages
  }
 
  ensure_packages($packages)

}
