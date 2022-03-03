FROM alpine:latest

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache kea && rm -rf /tmp/* /var/cache/apk/*

# Start KEA DHCP server
ENTRYPOINT ["/usr/sbin/kea-dhcp4"]

# Add config file
CMD ["-c", "/config/kea-dhcp4.conf"]
