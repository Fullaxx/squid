# ------------------------------------------------------------------------------
# Pull base image
FROM alpine:3.23
LABEL author="Brett Kuskie <fullaxx@gmail.com>"

# ------------------------------------------------------------------------------
# Install squid and clean up
RUN apk update && \
    apk add bash iproute2-ss less nano net-tools squid && \
    rm /var/cache/apk/*

# ------------------------------------------------------------------------------
# Install startup script
COPY app.sh /app/
COPY configs/alpine-3.23/squid_configured.conf /etc/squid/squid.conf

# ------------------------------------------------------------------------------
# Add volumes
VOLUME /var/log/squid
VOLUME /var/cache/squid

# ------------------------------------------------------------------------------
# Expose ports
EXPOSE 3128

# ------------------------------------------------------------------------------
# Define runtime command
CMD ["/app/app.sh"]
