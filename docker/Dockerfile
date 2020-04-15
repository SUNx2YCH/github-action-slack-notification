FROM sunx2ych/github-actions-sh-base:1.0.0

COPY headers.tmpl /root/headers.tmpl
COPY payload.json.tmpl /root/payload.json.tmpl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
