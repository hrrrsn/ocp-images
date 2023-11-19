#!/usr/bin/env bash

if [[ "$TAUTULLI_DOCKER" == "True" ]]; then
    exec "$@"
else
    python_versions=("python3.11" "python3.10" "python3.9" "python3.8" "python3" "python")
    for cmd in "${python_versions[@]}"; do
        if command -v "$cmd" >/dev/null; then
            echo "Starting Tautulli with $cmd."
            if [[ "$(uname -s)" == "Darwin" ]]; then
                $cmd Tautulli.py &> /dev/null &
            else
                $cmd Tautulli.py --quiet --daemon
            fi
            exit
        fi
    done
    echo "Unable to start Tautulli. No Python interpreter was found in the following options:" "${python_versions[@]}"
fi