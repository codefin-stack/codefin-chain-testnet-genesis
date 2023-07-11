#!/bin/sh
cp cofn.service /etc/systemd/system/
systemctl daemon-reload
systemctl start cofn.service
systemctl enable cofn.service
mkdir -p /var/log/cofn