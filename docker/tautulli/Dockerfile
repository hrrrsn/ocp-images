FROM tautulli/tautulli:v2.14.2

RUN for dir in /config /app; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done

COPY start.sh /app/start.sh