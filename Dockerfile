FROM almalinux:9.1
USER root
RUN dnf -y update
RUN dnf install -y yum-utils
COPY script .
RUN chmod +x script
CMD ./script
