#!/bin/bash
cd ~/projects/shiba-walk || exit 1
git add -A
read -p "コミットメッセージを入力してEnter: " msg
if [ -z "$msg" ]; then
  echo "コミットメッセージが空です。中止します。"
  read -p "Enterキーを押すと閉じます..."
  exit 1
fi
git commit -m "$msg"
git push
echo ""
echo "処理が完了しました。"
echo ""
echo "リポジトリ: https://github.com/nobutakaide/shiba-walk"
echo "公開ページ: https://nobutakaide.github.io/shiba-walk/"
echo ""
read -p "Enterキーを押すと閉じます..."
