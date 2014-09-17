# === class mymotd
# manages motd
class mymotd {
  file { '/etc/motd':
    ensure  => file
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('mymotd/motd.erb'),
  }
}
