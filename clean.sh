#!/bin/bash

sudo docker rm -vf moodle
sudo docker volume rm -f moodle_data
sudo docker volume rm -f mariadb_data
sudo docker rm -vf mariadb
sudo docker network rm moodle-tier