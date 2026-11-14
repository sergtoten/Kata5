#!/usr/bin/env bash
set -e
docker compose up -d --wait
java -jar ../fibonacci-service/target/fibonacci-service-1.0.jar f1 localhost 8081 http://localhost:8500 &
java -jar ../fibonacci-service/target/fibonacci-service-1.0.jar f2 localhost 8082 http://localhost:8500 &
java -jar ../fibonacci-service/target/fibonacci-service-1.0.jar f3 localhost 8083 http://localhost:8500 &
java -jar ../factorial-service/target/factorial-service-1.0.jar fac1 localhost 8084 http://localhost:8500 &
java -jar ../factorial-service/target/factorial-service-1.0.jar fac2 localhost 8085 http://localhost:8500 &
wait
