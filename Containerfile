FROM registry.access.redhat.com/ubi9/ubi-minimal:9.4-949.1714662671

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm && microdnf install sslscan && microdnf clean all

CMD ["/usr/bin/sslscan"]
