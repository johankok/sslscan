FROM registry.access.redhat.com/ubi8/ubi-minimal:8.10-1295

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && microdnf install sslscan && microdnf clean all

CMD ["/usr/bin/sslscan"]
