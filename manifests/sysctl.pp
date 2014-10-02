class stack_baseline::sysctl {

  if $stack_baseline::sysctl_settings {
    create_resources(sysctl::value, $stack_baseline::sysctl_settings)
  }

}
