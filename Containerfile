FROM registry.access.redhat.com/ubi9/ubi-minimal:9.6-1755695350

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm && microdnf install -y sslscan && microdnf clean all

CMD ["/usr/bin/sslscan"]
