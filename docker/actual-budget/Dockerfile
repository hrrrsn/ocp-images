FROM actualbudget/actual-server:23.12.0

RUN for dir in /app; do \
        chgrp -R 0 $dir && chmod -R g=u $dir; \
    done