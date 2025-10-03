FROM gcr.io/distroless/static-debian12

ARG TARGETPLATFORM

COPY --chown=nonroot:nonroot $TARGETPLATFORM/php-fpm_exporter /

EXPOSE 9253
USER nonroot:nonroot

ENTRYPOINT [ "/php-fpm_exporter", "server" ]
