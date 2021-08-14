const express = require('express');
const bodyParser = require('body-parser');
const fs = require('fs');
const jade = require('jade');

const app = express();
const router = express.Router();
const port = 3000;

app.use(bodyParser.urlencoded({extended: false}));

router.route('/about').post((req, res) => {
    fs.readFile('./jade1.jade', 'utf8', (err, data) => {
        if(err){
            console.log(err);
        }else{
            const jd = jade.compile(data);
            res.writeHead(200, {'content-type':'text/html'});
            res.end(jd());
        }
    });
});

app.use('/', router);

app.all('*', (req, res) => {
    res.status(404).send('<h2>페이지를 찾을 수 없습니다.</h2>');
});

app.listen(port, ()=>{
    console.log(`${port} 포트로 서버 실행중 ...`);
});
