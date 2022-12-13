# Sysdig Pipeline Scanner

This container will perform a scann

## Requirements

Access to the docker socket or container runtime


## Example usage

```
docker run -e SECURE_API_TOKEN -v "/var/run/docker.sock:/var/run/docker.sock:rw" gizabutler/sysdig-pipeline-scanner:1.3.0-rc https://us2.app.sysdig.com <image:tag>
```
