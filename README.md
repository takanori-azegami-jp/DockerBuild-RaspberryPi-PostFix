# DockerBuild-RaspberryPi-PostFix
RaspberryPi(64bit)にDockerでPostFixを構築

## Dockerコマンド
```bash
# Docker-compose実行
$ docker-compose up -d

# Docker コンテナ確認
$ docker ps

# Docker イメージ確認
$ docker images

# Docker コンテナの中に入る
$ docker exec -it [コンテナID] bash

# dokcer-composeの一括削除（滅びの呪文）
$ docker-compose down --rmi all --volumes --remove-orphans
```

## PostFixコマンド
```bash
# 動作確認
$ etc/init.d/postfix status

# 設定チェック
$ postfix check

# ログ確認
$ cat /var/log/postfix/mail.log

# postfixの再起動
$ /etc/init.d/postfix restart
```

## メール送信コマンド
```bash
# メール送信の書き方
$ echo "本文" | mailx -s "件名" 送信先アドレス
```


## 参考リンク
- [UbuntuのDockerコンテナにPostfixをインストールする](https://zenn.dev/flyingbarbarian/articles/5bb1d38b1ada40)
- [セキュアなメールサーバーを構築して送受信できるようになるまで（前編）](https://qiita.com/SI-K_Maeda/items/f814add3208cc5327373)
- [セキュアなメールサーバーを構築して送受信できるようになるまで（後編）](https://qiita.com/y-orihara/items/0360bc58aeb3ee794c97)
- [エラー対応：fatal: unknown service: smtp/tcp](http://www.kozupon.pgw.jp/mail/postfix_err2.html)
