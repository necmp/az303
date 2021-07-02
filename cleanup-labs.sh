#!/bin/bash

# 開始メッセージ
echo;
printf "\e[33;1m----- NECMP AZ303 Training / Lab Cleanup -----\e[m"
echo;
echo;
echo -n "あなたの <受講者番号> を入力してください = "
read num
echo;
echo "あなたが入力した <受講者番号> は" $num "です"
echo -n "ラボ環境を削除してよろしいですか？(y/n) = "
read yesno
case "$yesno" in [yY]*) ;; *) echo "終了します" ; exit ;; esac
echo;

# リソースグループの削除
echo "リソースグループ :" RG$num "を削除します..."
az group delete \
  --name RG$num \
  --yes -y

# 終了メッセージ
echo;
echo "ラボ環境を削除しました"
echo;