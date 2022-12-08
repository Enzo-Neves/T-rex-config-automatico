#!/usr/bin/bash


echo Iniciando Script 
echo By Dias & Neves 

mkdir $BASE_DIR/../opt/trex

cd /opt/trex

wget --no-cache --no-check-certificate https://trex-tgn.cisco.com/trex/release/v2.87.tar.gz
tar -xzvf v2.87.tar.gz

cd v2.87.tar.gz

yum install dpdk.x86_64 dpdk-devel.x86_64 dpdk-doc.noarch dpdk-tools.x86_64

touch $BASE_DIR/../etc/trex_cfg.yaml


echo "Digite a primeira inteface:"  
read Interface1
echo "Digite o Ip da primeira interface"
read IP1
echo  "Digite o Gateway : "  
read gateway1
echo "Digite a primeira inteface 2 : "  
read Interface2
echo  "Digite o Ip da segunda interface :" 
read IP2
echo  "Digite o Gateway  : " 
read gateway2




 mensagem0="- port_limit: 2"
 mensagem1="version: 2"
 mensagem2="interfaces: [\"$Interface1\",\"$Interface2\"]"
 mensagem3="low_end: true" 
 mensagem4="low_end_core: 4"  
 mensagem5="port_info:"  
 mensagem6="- ip: $IP1"    
 mensagem7="default_gw: $gateway1"     
 mensagem8="- ip: $IP2"    
 mensagem9="default_gw: $gateway2"

 echo $Interface1           
 echo $Interface2           
 echo $IP1           
 echo $IP2           
 echo $gateway1
 echo $gateway2          


echo $mensagem0 >$BASE_DIR/../etc/trex_cfg.yaml
echo "  "$mensagem1 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "  "$mensagem2 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "  "$mensagem3 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "  "$mensagem4 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "  "$mensagem5 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "    "$mensagem6 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "      "$mensagem7 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "    "$mensagem8 >>$BASE_DIR/../etc/trex_cfg.yaml
echo "      "$mensagem9 >>$BASE_DIR/../etc/trex_cfg.yaml