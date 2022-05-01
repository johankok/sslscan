FROM registry.access.redhat.com/ubi8/ubi-minimal:8.5

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && microdnf clean all

RUN microdnf install sslscan

ENTRYPOINT ["/usr/bin/sslscan"]
