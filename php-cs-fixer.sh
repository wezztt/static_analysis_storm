#!/bin/bash
docker exec -i php_static_analyzer php-cs-fixer "$@"
