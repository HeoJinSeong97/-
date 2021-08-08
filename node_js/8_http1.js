const http = require('http');

http.createServer((req, res) => {
    res.writeHead(200, {'content-type':'text/html'});
    res.end(`<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><title>http 모듈 테스트</title></head><body><h2>http 모듈 테스트</h2></body></html>`);
}).listen(3000, () => {
    console.log('3000번 포트로 서버 실행중 ... ');
});