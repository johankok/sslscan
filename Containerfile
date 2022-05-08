FROM registry.access.redhat.com/ubi8/ubi-minimal:8.5

LABEL quay.expires-after=6w

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && microdnf install sslscan && microdnf clean all

ENTRYPOINT ["/usr/bin/sslscan"]
