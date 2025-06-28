ARG LEPRIKON_TAG=latest
FROM leprikon/leprikon:$LEPRIKON_TAG

LABEL maintainer="Jakub Dorňák <jakub.dornak@qbsoftware.cz>"

# copy files
COPY locale /app/locale
COPY static /app/static
COPY templates /app/templates
RUN leprikon collectstatic --no-input
