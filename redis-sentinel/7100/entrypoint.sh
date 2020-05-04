echo '执行 redis-server'
redis-server /usr/local/etc/redis/redis.conf

echo '执行 redis-sentinel'
redis-sentinel /usr/local/etc/redis/sentinel.conf
