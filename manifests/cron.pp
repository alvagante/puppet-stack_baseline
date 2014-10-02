class stack_baseline::cron {

  $crons=hiera_hash($crons)
  if $crons {
    create_resources(cron, $crons)
  }

}
