# phpmyadmin-local-setup
My phpMyAdmin local setup

Instructions and (problem fixes)

1. Clone the repository.
2. Run `./start.sh` (A `/mnt/Dev` directory structure would be created).
3. Add the contents of this repository to `!OSS` folder.
4. Add phpmyadmin code to `phpmyadmintest` folder
5. Run `sudo chown -R username:username Dev`
6. Remove `/mnt/Dev/!OSS/servers/nginx/sites-enabled/pma.proxy.test` file if nginx crashes
7. Add the following to `/etc/hosts` file:

`127.0.0.1 pma.5.5.local 5.5.local
127.0.0.1 pma.7.0.local 7.0.local
127.0.0.1 pma.7.1.local 7.1.local
127.0.0.1 pma.7.2.local 7.2.local
127.0.0.1 pma.7.3.local 7.3.local
127.0.0.1 pma.7.4.local 7.4.local
127.0.0.1 pma.8.0.local 8.0.local`
