#!/bin/bash
# new Env('BBK-锦鲤');
# export JD_LOG_XYZ_TOKEN="从机器人获取的token"
# export KOIS_PINS="第1个要助力的pin&第2个要助力的pin" # 英文'&'分隔
# export Proxy_Url="代理网址 例如：星空、熊猫 生成选择txt 一次一个"
# export AUTO_OPEN_JINLI_READPACKET="true" # 助力满自动开红包，默认不开
# export JINLI_REDPACKET_IDS="要助力的红包ID&要助力的红包ID" # 英文'&'分隔，设置了此变量就直接助力,不获取助力码了
pwd
_ftype=""
get_arch=`arch`
echo $get_arch
if [[ $get_arch =~ "x86_64" ]];then
	_ftype="linux-amd64"
elif [[ $get_arch =~ "x86" ]];then
	_ftype="linux-386"
elif [[ $get_arch =~ "i386" ]];then
	_ftype="linux-386"
elif [[ $get_arch =~ "aarch64" ]];then
	_ftype="linux-arm64"
elif [[ $get_arch =~ "arm" ]];then
	_ftype="linux-arm"
else
	_ftype=""
fi

if [ $_ftype == "" ]; then
	echo "不支持的架构$get_arch"
else
	echo "执行$_ftype"
	eval "chmod +x ./BBK/$_ftype.bbk"
	eval "./BBK/$_ftype.bbk -t jinli"
fi