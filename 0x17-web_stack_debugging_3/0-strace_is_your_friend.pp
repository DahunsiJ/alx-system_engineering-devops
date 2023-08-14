# Fixes bad `phpp` extensions to `php` in the WordPress file `wp-settings.php`.

exec { 'fix-wordpress':
  command => 'apt-get install -y ruby && gem install puppet-lint -v 2.1.1 && sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}
