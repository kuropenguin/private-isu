#!/bin/bash

# アクセスログを YYYYMMDD-HHMMSS 形式のファイル名にローテート
mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d-%H%M%S`

# nginx にログファイルを開き直すシグナルを送信
# これをしないと、名前を変更したファイルの方に引き続き書き込みに行ってしまう
nginx -s reopen

