# ベースイメージとしてNode.jsを使用
FROM node:21

# アプリケーションの作業ディレクトリを設定
WORKDIR /app

# パッケージ.jsonとパッケージ-lock.jsonをコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー
COPY . .

# 3000ポートでアプリケーションを実行
EXPOSE 8080
# アプリケーションの起動コマンドを指定
CMD ["npm", "start"]
