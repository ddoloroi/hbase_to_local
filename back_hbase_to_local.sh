#!/bin/bash
#author     rainysia <rainysia#gmail.com>
#createTime 2016-03-31 13:51:32
#lastChange 2016-03-31 16:29:45

set -e
web_url="hadoop-node1.domain.org"
hdfs_web="hdfs://"${web_url}":8020/"
now=$(date "+%s")
arg_tb_name=$1

hbase_tables=('user' 'address' 'order' 'history.history' \
'test_kdc' 'test222' 'test333' 'test444' \
'testuser')

bak_hbase_to_hdfs(){
    echo 1
}

bak_hdfs_to_local(){
    echo 1
}

restore_local_to_hdfs(){
    echo 1
}

restore_hdfs_to_hbase(){
    echo 2
}

bak_start() {
    if [ -z "$arg_tb_name" ]
    then 
        for tb_name in ${hbase_tables[@]};
        do
                echo $tb_name
        done
    else
        echo $arg_tb_name
        # todo 
    fi
}

bak_start
