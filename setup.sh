#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
hexo init blog
cd blog
sudo npm install
sudo npm install hexo-server --saves
sudo npm install hexo-deployer-git --save
echo "请耐心等待"
git clone https://github.com/litten/hexo-theme-yilia.git themes/yilia
wget -N https://raw.githubusercontent.com/gaoyongcn/vlinblog/master/_config.yml
hexo g
cd public
wget -N https://raw.githubusercontent.com/gaoyongcn/vlinblog/master/avatar.png
cd ../themes/yilia
wget -N https://raw.githubusercontent.com/gaoyongcn/vlinblog/master/yilia/_config.yml
hexo g
echo "已安装完毕"
echo "请执行'hexo s --debug'进行本地调试，查看效果"



