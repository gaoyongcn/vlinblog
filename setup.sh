#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
hexo init 
sudo npm install
sudo npm install hexo-server --saves
sudo npm install hexo-deployer-git --save
echo "请耐心等待"
git clone https://github.com/litten/hexo-theme-yilia.git themes/yilia

