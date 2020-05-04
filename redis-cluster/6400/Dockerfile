FROM docker.io/redis

# 复制上一步修改的配置文件到redis中
COPY redis.conf /usr/local/etc/redis/redis.conf

# 修改文件权限，后面设置密码可以通过config rewrite重写
RUN chmod 777 /usr/local/etc/redis/redis.conf

# Redis客户端连接端口
EXPOSE 6400

# 集群总线端口
# EXPOSE 16381

# 启动redis服务
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
