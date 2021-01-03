node default {
  file {'/root/README':
    ensure  => file,
    content => 'this is a README',
    owner   => 'root',
  }
  file {'/root/README':
    owner   => 'root',
  }
}
