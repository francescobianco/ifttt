#!make

-include .env
export $(shell test -f .env && cut -d= -f1 .env)

trending:
	@bash script/trending.sh

test:
	@bash script/test.sh

top:
	@sed 's/=.*//' .env

env:
	echo "AA"