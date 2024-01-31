// HTTPモジュールのインポート
const http = require('http');

// サーバーの作成
const server = http.createServer((req, res) => {
    // レスポンスのヘッダー設定
    res.writeHead(200, {'Content-Type': 'text/plain'});

    // ルートURLへのリクエストに対するレスポンス
    if (req.url === '/') {
        res.end('Hello World!');
    } else {
        // それ以外のURLへのリクエストには404 Not Foundを返す
        res.writeHead(404);
        res.end('Not Found');
    }
});

// 8080ポートでサーバーをリッスン
const port = 8080;
server.listen(port, () => {
    console.log(`Server running at http://localhost:${port}/`);
});
