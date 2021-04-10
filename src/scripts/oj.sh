#!/bin/sh

# testフォルダがある場合は削除する(ojコマンドがtestフォルダがあるとエラーになるから)
rm -rf test

# testcaseをdownload
oj d $1

# ファイルを作成する
array=( `echo $1 | tr -s '/' ' '`)
last_index=`expr ${#array[@]} - 1`

# テンプレートのコピー
if [ -e "${array[${last_index}]}.php" ]; then
  echo "ファイルが存在するためテンプレートのコピーをスキップしました"
else
  cp $PWD/scripts/template.php "${array[${last_index}]}.php"
fi