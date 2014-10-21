#!/bin/bash

if [ "$1" = "" ]; then
    echo -n "Input your target:"
    read TARGET
else
    TARGET="$1"
fi

case $TARGET in
    1xU)
        wget http://git.tp-link.net/jenkins/view/Linux/job/MR1xU-DEV/lastSuccessfulBuild/artifact/proprietary.tar.gz
        ;;
    12U02-REL)
        wget http://git.tp-link.net/jenkins/view/Linux/job/MR12U_V2.0-REL/lastSuccessfulBuild/artifact/proprietary.tar.gz
        ;;
    22U-REL)
        wget http://git.tp-link.net/jenkins/view/Linux/job/MR22U-REL/lastSuccessfulBuild/artifact/proprietary.tar.gz
        ;;
    TPmini2_Router)
        wget http://git.tp-link.net/jenkins/view/Linux/job/TPmini2_Router/lastSuccessfulBuild/artifact/proprietary.tar.gz
        ;;
    sr)
        rm -f proprietary.tar.bz2
        wget http://mobileci.rd.tp-link.net/jenkins/view/SmartRouter/job/SmartRouter/lastSuccessfulBuild/artifact/qsdk/proprietary.tar.bz2
        tar -xvf proprietary.tar.bz2
        exit 1
        ;;
    *)
        echo "unknow target:$TARGET"
        exit 1
        ;;
esac

tar -xvzf proprietary.tar.gz