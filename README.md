# how to run the app

- docker-compose up

- localhost:8080 にアクセス

## storybook Start

- % docker-compose -f docker-compose.storybook.yml up
- localhost:6006 にアクセス

## その他コマンド
- docker-compose up それをした後で、別タブなどで docker exec -it react_base-react-app-1  bash とするとコンテナの中の処理が可能

#### コードチェック
- npm run lint

#### コード整形
- npm run format

