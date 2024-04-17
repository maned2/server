#!/bin/bash

ufw deny 28015 # main port
ufw deny 28017 # query port
ufw deny 28083 # rust+ port
