# === class mymotd
# manages motd
# it is a file
class mymotd {
  file { '/etc/motd':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('mymotd/motd.erb'),
  }
}
