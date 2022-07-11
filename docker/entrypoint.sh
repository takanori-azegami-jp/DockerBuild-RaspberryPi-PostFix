#!/bin/bash

# postfixの起動
postfix start

# 名前解決は/etc/resolv.confではなく/var/spool/postfix/etc/resolv.confを見に行くのでコピーする
cp /etc/resolv.conf /var/spool/postfix/etc/resolv.conf

# postfixの設定変更を反映させる
postfix reload

# コンテナの起動を維持するため
tail -f /dev/null
