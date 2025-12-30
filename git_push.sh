
#!/bin/bash

# 1. 念のため現在のディレクトリでGitを初期化
git init

# 2. 全ての変更をステージング
git add .

# 3. コミットメッセージを受け取る（引数がない場合は "update" にする）
MESSAGE=${1:-"new commit"}
git commit -m "$MESSAGE"

# 4. ブランチ名を main に設定
git branch -M main

# 5. リモート設定の確認と更新
# すでに origin がある場合は URL を上書きし、なければ新規追加します
REMOTE_URL="git@github.com:futagamiyama/web01.git"

if git remote | grep -q 'origin'; then
    git remote set-url origin "$REMOTE_URL"
else
    git remote add origin "$REMOTE_URL"
fi

# 6. プッシュ
# -u で次回から git push だけで済むように設定します
git push -u origin main