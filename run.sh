#!/bin/bash

sudo docker network create moodle-tier
sudo docker volume create --name mariadb_data
sudo docker run -d --name mariadb \
  -e ALLOW_EMPTY_PASSWORD=yes \
  -e MARIADB_USER=bn_moodle \
  -e MARIADB_DATABASE=bitnami_moodle \
  --net moodle-tier \
  --volume mariadb_data:/bitnami \
  bitnami/mariadb:latest

sudo docker volume create --name moodle_data

sudo docker run -d --name moodle -p 8880:80 -p 8881:443 \
  -e ALLOW_EMPTY_PASSWORD=yes \
  -e MOODLE_DATABASE_USER=bn_moodle \
  -e MOODLE_DATABASE_NAME=bitnami_moodle \
  -e MOODLE_USERNAME=istic \
  -e MOODLE_PASSWORD=istic \

  --net moodle-tier \
  --volume moodle_data:/bitnami \
  bitnami/moodle:latest