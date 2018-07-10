#!/usr/bin/env bash

if [ ! -d .auklet ]; then
    mkdir .auklet
    touch .auklet/local.txt
    touch .auklet/version
fi

for file in "tests/monitoring/test___init__.py" "tests/monitoring/test_logging.py" "tests/monitoring/test_sampling.py" "tests/test_base.py" "tests/test_errors.py" "tests/test_stats.py"
do
    coverage run $file
done

rm -R .auklet