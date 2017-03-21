# === class mymotd
# manages motd
# this is a comment
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
