FROM alpine:3.17





RUN apk update && \
    apk add --no-cache  curl bash  && \
    rm -rf /var/cache/apk/*

ENV VERSION="$(curl -L -s https://download.sysdig.com/scanning/sysdig-cli-scanner/latest_version.txt)"

RUN VERSION="$(curl -L -s https://download.sysdig.com/scanning/sysdig-cli-scanner/latest_version.txt)" && \
    curl -LO "https://download.sysdig.com/scanning/bin/sysdig-cli-scanner/${VERSION}/linux/amd64/sysdig-cli-scanner" && \
    chmod +x ./sysdig-cli-scanner
    
    
ENTRYPOINT ["./sysdig-cli-scanner", "--apiurl" ]   
