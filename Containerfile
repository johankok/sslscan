FROM registry.access.redhat.com/ubi9/ubi-minimal:9.6-1749489516

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm && microdnf install sslscan && microdnf clean all

CMD ["/usr/bin/sslscan"]
