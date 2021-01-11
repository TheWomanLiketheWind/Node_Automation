#!bin/bash

# 按照依赖
npm install
# 打包
npm run build
# 删除 nginx 指向的文件夹下的文件
rm -rf /home/www/*
#将打包好的文件复制过去
mv /tmp/vue-deploy-demo/dist/* /home/www
# 删除 clone 的代码
rm -rf /temp/vue-deploy-demo