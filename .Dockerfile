# Dockerfile.keycloak

FROM bitnami/keycloak:23.0.7

COPY ataccama_tellstory /opt/bitnami/keycloak/themes/ataccama_tellstory
VOLUME /opt/bitnami/keycloak/themes/ataccama_tellstory