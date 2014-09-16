Knife Dinner Impossible Plugin
============

This is the beginning of my idea for a knife plugin that will help do some assessment and discovery work about a chef-repo with the goal of making it better. I would love some input on this.

# Usage

## knife dinimp compare [COOKBOOK_DIR]

This compares the versions of all the cookbooks in the cookbooks directory passed to the command with the lastest version available in the Chef Supermarket. It gives a report of which ones are old, up-to-date or no longer in the Supermaket. I have plans to add a ```--gist``` option that would send the output to a secret gist.

Here is what the output looks like: (it's colorized in the terminal)

```
(current) 7-zip, using: 1.0.2, latest: 1.0.2
(old) ant, using: 1.0.0, latest: 1.0.2
(old) apache2, using: 1.4.2, latest: 2.0.0
(old) application, using: 2.0.0, latest: 4.1.4
(old) application_ruby, using: 1.0.6, latest: 3.0.2
(old) apt, using: 2.4.0, latest: 2.6.0
(current) ark, using: 0.9.0, latest: 0.9.0
(old) aws, using: 0.100.4, latest: 2.4.0
(current) bluepill, using: 2.3.1, latest: 2.3.1
(old) build-essential, using: 2.0.4, latest: 2.0.6
(unknown) casperjs, using: 0.0.1, latest: Not found, 404 from supermarket
(old) chef-client, using: 2.2.0, latest: 3.8.0
(current) chef-solo-search, using: 0.5.1, latest: 0.5.1
(current) chef_handler, using: 1.1.6, latest: 1.1.6
(current) cmake, using: 0.3.0, latest: 0.3.0
(old) couchdb, using: 0.14.1, latest: 2.5.2
(old) cron, using: 1.2.2, latest: 1.4.3
(old) daemontools, using: 0.9.0, latest: 1.3.0
(current) diamond_lwrp, using: 0.1.3, latest: 0.1.3
(current) dmg, using: 2.2.0, latest: 2.2.0
(old) dnsimple, using: 0.3.3, latest: 1.0.0
(old) dpkg_autostart, using: 0.1.2, latest: 0.1.10
(old) dynect, using: 0.3.2, latest: 1.0.4
(current) elasticsearch, using: 0.3.10, latest: 0.3.10
(old) erlang, using: 1.3.0, latest: 1.5.6
(old) ganglia, using: 0.0.2, latest: 0.2.3
(current) git, using: 4.0.2, latest: 4.0.2
(old) grafana, using: 1.1.1, latest: 1.3.4
(old) graphite, using: 0.4.2, latest: 1.0.1
(old) graphite_handler, using: 0.0.8, latest: 0.0.10
(old) gunicorn, using: 1.0.0, latest: 1.1.6
(unknown) hipchat_handler, using: 1.0.1, latest: Not found, 404 from supermarket
(old) hubot, using: 1.0.5, latest: 1.0.2
(old) iptables, using: 0.12.0, latest: 0.14.0
(old) java, using: 1.5.5, latest: 1.28.0
(old) jenkins, using: 0.6.3, latest: 2.1.2
(old) jpackage, using: 0.10.0, latest: 1.0.2
(old) kibana, using: 0.1.7, latest: 0.1.6
(old) logrotate, using: 1.4.0, latest: 1.7.0
(old) logstash, using: 0.8.3, latest: 0.9.2
(old) monit, using: 0.5.9, latest: 0.7.4
(old) mysql, using: 4.0.20, latest: 5.5.2
(current) nginx, using: 2.7.4, latest: 2.7.4
(old) nodejs, using: 1.3.0, latest: 2.1.0
(old) ntp, using: 1.0.1, latest: 1.6.4
(current) ohai, using: 2.0.1, latest: 2.0.1
(old) openssh, using: 0.8.0, latest: 1.3.4
(old) openssl, using: 1.1.0, latest: 2.0.0
(old) openvpn, using: 1.1.0, latest: 2.1.0
(old) ossec, using: 1.0.1, latest: 1.0.5
(old) passenger_apache2, using: 0.99.4, latest: 2.2.2
(old) php, using: 1.0.2, latest: 1.4.6
(old) postfix, using: 0.8.2, latest: 3.5.0
(old) postgresql, using: 0.11.2, latest: 3.4.2
(unknown) princexml, using: 0.0.2, latest: Not found, 404 from supermarket
(current) python, using: 1.4.6, latest: 1.4.6
(current) r-project, using: 0.2.0, latest: 0.2.0
(old) rabbitmq, using: 2.1.2, latest: 3.3.0
(old) rbenv, using: 1.4.3, latest: 1.7.1
(old) redisio, using: 1.7.1, latest: 2.2.3
(current) rsyslog, using: 1.12.2, latest: 1.12.2
(old) ruby_installer, using: 0.1.0, latest: 0.1.3
(current) runit, using: 1.5.10, latest: 1.5.10
(current) s3cmd, using: 0.0.1, latest: 0.0.1
(current) scout_agent, using: 0.1.0, latest: 0.1.0
(old) ssl_certificate, using: 0.1.0, latest: 0.2.0
(old) statsd, using: 0.0.13, latest: 0.0.1
(old) subversion, using: 0.8.3, latest: 1.1.2
(old) sudo, using: 2.3.0, latest: 2.7.0
(old) ucspi-tcp, using: 1.0.0, latest: 1.1.0
(current) ulimit, using: 0.3.2, latest: 0.3.2
(old) unattended-upgrades, using: 0.1.0, latest: 0.1.2
(old) unicorn, using: 1.0.0, latest: 2.0.0
(old) windows, using: 1.32.0, latest: 1.34.2
(old) xml, using: 1.1.2, latest: 1.2.6
(old) yum-epel, using: 0.3.6, latest: 0.5.1
(old) yum, using: 3.2.2, latest: 3.3.1
(old) yumrepo, using: 0.16.6, latest: 3.0.0
(current) zlib, using: 2.0.0, latest: 2.0.0
```

## knife dinimp diff

This command isn't developed yet, but this would diff each cookbook in the cookbooks directory with the Supermarket’s cookbook of the same version and will send the diff output to the terminal. A secret gist by default would also be cool.
