FROM gcr.io/distroless/static-debian12

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION

COPY --chown=nonroot:nonroot php-fpm_exporter /

EXPOSE 9253
USER nonroot:nonroot

ENTRYPOINT [ "/php-fpm_exporter", "server" ]

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="php-fpm_exporter" \
      org.label-schema.description="A prometheus exporter for PHP-FPM." \
      org.label-schema.url="https://github.com/tonmnn/php-fpm_exporter" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/tonmnn/php-fpm_exporter" \
      org.label-schema.vendor="tonmnn" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0" \
      org.label-schema.docker.cmd="docker run -it --rm -e PHP_FPM_SCRAPE_URI=\"tcp://127.0.0.1:9000/status\" ghcr.io/tonmnn/php-fpm_exporter"
