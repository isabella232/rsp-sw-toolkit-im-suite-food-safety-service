#!/bin/bash
# food-safety-service
echo -e "  \e[2mGo \e[0m\e[94mBuild(ing)...\e[0m"
#CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo
#CGO_LDFLAGS+='-lstdc++ -lm' GOARCH=amd64 CGO_ENABLED=1 GOOS=linux GO111MODULE=on go build -a --ldflags '-extldflags "-static" -v' -o ./food-safety-service
CGO_ENABLED=1 GO111MODULE=on go build -ldflags '-w' -a -o ./food-safety-service
