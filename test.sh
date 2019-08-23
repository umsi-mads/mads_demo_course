docker run nbgrader_validate >> /dev/null &
sleep 5 docker stats --no-stream > mem.log
