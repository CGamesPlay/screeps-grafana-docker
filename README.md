# How to use

- For your VPS, I am using a stock Amazon Lightsail instance with Ubuntu. Ports
  80 and 443 need to be enabled in your firewall.
- All data lives in `/home/ubuntu/screeps/data` (hardcoded in the service files)
  and must be owned by root.
- Set up `grafana.env` and `node.env` by using the example config.
- Run `sudo make` to install the systemd scripts and enable them.
- Use `sudo service restart grafana.service` and other to restart things. They
  will automatically be started at system boot.
