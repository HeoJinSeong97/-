const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = 3000;

app.use(bodyParser.urlencoded({extended : false}));
app.use((req, res) => {

    console.dir(req.header);
    const userAgent = req.header('User-Agent');
    console.log(userAgent);

    const userid = req.body.userid;
    const userpw = req.body.userpw;

    
    console.log(`userid:${userid}, userpw:${userpw}`);

    res.writeHead(200, {'content-type':'text/html;charset=utf8'});
    res.write('<h2>익스프레스 서버에서 응답한 메세지입니다.</h2>');
    res.write(`<p>user-agent : ${userAgent}`);
    res.write(`<p>userid : ${userid}`);
    res.write(`<p>userpw : ${userpw}`);
    res.end();


});

app.listen(port, ()=>{
    console.log(`${port} 포트로 서버 실행중 ...`);
});
