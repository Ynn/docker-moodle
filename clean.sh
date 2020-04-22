#!/bin/bash

sudo docker rm -vf moodle
sudo volume rm -vf moodle_data
sudo volume rm -vf mariadb_data
sudo docker rm -vf mariadb
sudo docker network rm moodle-tier