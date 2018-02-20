#!/bin/bash
if [ -e ./keycloak-proxy ]; then
	cd keycloak-proxy
	git pull
	make docker-build
	docker build -t ibuetler/keycloak-auth-proxy-golang . 
else
	git clone https://github.com/gambol99/keycloak-proxy.git
	cd keycloak-proxy
	make docker-build
	docker build -t ibuetler/keycloak-auth-proxy-golang . 
fi

