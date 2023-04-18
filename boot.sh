#!/bin/bash
# this script is used to boot a Docker container
source venv/bin/activate
while true; do
    python -c "from flaskr.flaskr import init_db; init_db()"
    if [[ "$?" == "0" ]]; then
        break
    fi
    echo init DB failed, retrying in 5 secs...
    sleep 5
done

exec gunicorn -b :5000 --access-logfile - --error-logfile - flaskr.flaskr:app