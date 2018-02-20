#!/bin/bash
git clone https://github.com/gambol99/keycloak-proxy.git
cd keycloak-proxy
make docker-build
docker build -t ibuetler/keycloak-auth-proxy-golang . 

