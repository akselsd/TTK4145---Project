#!/bin/bash

./ElevatorServer &
cd src/
go run main.go
cd ../
