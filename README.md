# directcall
Repositório para download dos scritps para SMS e ligação.
``````````
yum install dos2unix

git clone https://github.com/everaldoscabral/directcall.git

cd directcall/

dos2unix call_directcall.sh ; dos2unix send_sms_directcall.sh

call_directcall.sh ; chmod 777 send_sms_directcall.sh

cp call_directcall.sh /usr/lib/zabbix/alertscripts ;  cp send_sms_directcall.sh  /usr/lib/zabbix/alertscripts

cd /usr/lib/zabbix/alertscripts
