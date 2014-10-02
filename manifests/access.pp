class stack_baseline::access {

  # OpenSSH setup
  include ::openssh
  # tp install { 'openssh': }

  # Sudo Setup
  include ::sudo

  $users=hiera_hash('users')
  if $users {
    create_resources(user,$users)
  }
}
