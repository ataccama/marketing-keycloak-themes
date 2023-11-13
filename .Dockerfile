# Dockerfile.keycloak

FROM bitnami/keycloak:22.0.1

COPY ataccama_mkt /opt/bitnami/keycloak/themes/ataccama_mkt
VOLUME /opt/bitnami/keycloak/themes/ataccama_mkt