FROM registry.access.redhat.com/ubi8/ubi-minimal:8.7-1049.1675784874

RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && microdnf install sslscan && microdnf clean all

CMD ["/usr/bin/sslscan"]
