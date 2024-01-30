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

# アプリケーションをビルド
RUN npm run build

# 3000ポートでアプリケーションを実行
EXPOSE 3000
CMD ["npm", "start"]
