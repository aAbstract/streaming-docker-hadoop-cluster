#!/bin/bash

hadoop jar /opt/hadoop-3.3.4/share/hadoop/tools/lib/hadoop-streaming-3.3.4.jar \
    -files /tmp/example_hadoop_job/mapper_avg.py,/tmp/example_hadoop_job/combiner_avg.py,/tmp/example_hadoop_job/reducer_avg.py \
    -input /<huser>/gender_avg/CustomerAge.txt \
    -output /<huser>/gender_avg/output \
    -mapper "/usr/bin/python3 mapper_avg.py" \
    -combiner "/usr/bin/python3 combiner_avg.py" \
    -reducer "/usr/bin/python3 reducer_avg.py"
