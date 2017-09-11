#!/usr/bin/env puma

rackup 'config.ru'

environment 'production'

threads 0, 32
workers 2

bind 'tcp://0.0.0.0:8080'

preload_app!
