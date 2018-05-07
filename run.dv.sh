#!/usr/bin/env bash

echo 'Starting django development server...'
(cd ./configuration && exec python manage.py runserver)


