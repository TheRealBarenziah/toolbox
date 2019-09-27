#!/bin/bash
cd ./frontend/
yarn
yarn lint
cd ../backoffice/
yarn
yarn lint
cd ../backend
yarn
yarn lint