FROM docker.io/redis

# 复制上一步修改的配置文件到redis中
COPY sentinel.conf /usr/local/etc/redis/sentinel.conf
COPY redis.conf /usr/local/etc/redis/redis.conf
COPY sentinel.logs /usr/local/etc/redis/sentinel.logs

# 修改文件权限，后面设置密码可以通过config rewrite重写
RUN chmod 777 /usr/local/etc/redis/sentinel.conf
RUN chmod 777 /usr/local/etc/redis/redis.conf

# 端口

EXPOSE 7100
EXPOSE 26379

# 启动redis服务
#CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
#CMD [ "redis-sentinel", "/usr/local/etc/redis/sentinel.conf" ]
#ENTRYPOINT [ "redis-sentinel", "/usr/local/etc/redis/sentinel.conf" ]

ENTRYPOINT ["sh","./entrypoint.sh"]
