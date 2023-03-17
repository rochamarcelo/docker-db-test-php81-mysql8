FROM webdevops/php:8.1

COPY --from=mysql:8.0.23 / /

WORKDIR /
EXPOSE 9000
ENTRYPOINT ["/entrypoint"]
CMD ["supervisord"]
