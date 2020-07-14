FROM kroniak/ssh-client

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]