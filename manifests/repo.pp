class stack_baseline::repo {

  case $::osfamily {
    redhat: {
      include yum::repo::epel
      include yum::repo::puppetlabs
    }
    debian: {
      include apt::repo::puppetlabs
      class { 'apt':
        force_aptget_update => true,
      }
    }
    suse: {
    }
  }


}
