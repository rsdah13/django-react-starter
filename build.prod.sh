#!/usr/bin/env bash

echo 'Building production settings...'
(cd ./configuration && exec python manage.py runserver --settings=configuration.production_settings)

