
#!/bin/bash


git init

# 2. 全ての変更をステージング
git add .


git commit -m "MESSAGE"

# 4. ブランチ名を main に設定
git branch -M main




#  プッシュ

git push -u origin main