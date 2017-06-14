# linux 环境

>* pwd:当前的工作目录
>>
>* cat：查看文件内容
>* more:与cat一样，逐屏查看
>* less:与cat一样
>* grep:筛选查询结果_【与cat一样但多了个查询筛选】_
>* egrep:grep升级版
>* tail:倒数多少行
>* dmsg:查看 /var/log/messages内容
>>
>* watch:定时执行命令
>>
>* cp:copy文件 _【-r：对目录操作】_
>* rm:delete文件 _【-r：对目录操作】_
>>
>* top:监控当前系统的状态的情况
>* ps:查看进程信息_【-ef:详细信息；-aux:显示详细信息】_
>>
>* ifconfig:
>
>   ifconfig _eth0_ down
>
>   ifconfig _eth0_ up
>
>* netstat
>   netstat -pantu _【查看对应网络状态】_
>
>   netstat -pantu | egrep -v '0.0.0.0|:::' | awk '{print $5}' | cut -d ':' -f 1 | sort | uniq > ip
>
>   netstat -pantu | egrep -v '0.0.0.0|:::' | awk '{print $5}' | cut -d ':' -f 1 | sort | uniq >> ip
>
>>
>* mount:挂载目录命令
>   mount -o loop kali.iso /media/cdrom
>>
>* find：查询
>   find / -name nmap
>   find / -iname namp
>   find . -name ps* _【通配符】_
>   find . -name "ps*" -exec cp {} /tmp/{}.bak \;
>* whereis:通过apt-get安装文件
>   whereis nmap
>   whereis -b namp
>   updatedb：更新whereis的查询源数据
>* echo:输出控制台
>* vi
>   _【命令模式】_
>   :set nu
>   :wq
>   dd_【删除】_
>   o_【插入一行并进入模式】_
>   y_【复制】_
>   p_【粘贴】_
>* | & && || _管道符_
>* shell脚本_【*.sh】_
>   ```shell
>   #! /bin/bash
>   echo -n "IP : "
>   read ip
>   echo "your IP is " $ip
>   ```
>   ```shell
>   #! /bin/bash
>   for n in 'seq 9'
>   do
>       for m in 'seq $n'
>       do
>           echo -n '$m*$n' expr $m \* $n " "
>       done
>       echo
>   done
>   ```
>
>   '_【单引号】_：所有字符串原样输出
>   "_【双引号】_：$_（参数替换）_和`_(命令替换）_是例外
>   ```shell
>   num=3
>   echo '$num'
>   #输出：$num
>   echo "$num"
>   #输出：3
>   ```
>
时间：**2017-06-10**