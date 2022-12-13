# Sysdig Pipeline Scanner

This container will perform a scan using the sysdig-cli-scanner

[Sysdig Vulnerability Management](https://docs.sysdig.com/en/docs/sysdig-secure/vulnerabilities/pipeline/)

## Requirements

Access to the docker socket or container runtime


## Example usage

```
docker run -e SECURE_API_TOKEN -v "/var/run/docker.sock:/var/run/docker.sock:rw" gizabutler/sysdig-pipeline-scanner:1.3.0-rc https://us2.app.sysdig.com <image:tag>
```
