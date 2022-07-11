#!/bin/bash
#
# メール送信の書き方
# echo "本文" | mailx -s "件名"  送信先アドレス

# 例(日本語対応)
echo "本文" | mailx -s `echo "件名" | nkf -j | nkf -M`  送信先アドレス
