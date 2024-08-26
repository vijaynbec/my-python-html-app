#!/bin/bash
sudo cp /home/ec2-user/app/myapp.service /etc/systemd/system/myapp.service
sudo systemctl daemon-reload
sudo systemctl start myapp
sudo systemctl enable myapp
