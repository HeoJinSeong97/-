const express = require('express');
const bodyParser = require('body-parser');


const app = express();
const router = express.Router();
const port = 3000;

app.use(bodyParser.urlencoded({extended : false}));
router.route('/member/login').post((req,res) =>{
    console.log('/member/login 호출.');
});
router.route('/member/regist').post((req,res) =>{
    console.log('/member/regist 호출.');
});
router.route('/member/about').get((req,res) =>{
    console.log('/member/about 호출.');
});

app.use('/', router);

app.all('*', (req, res) => {
    res.status(404).send('<h2>페이지를 찾을 수 없습니다.</h2>');
});
app.listen(port, ()=>{
    console.log(`${port} 포트로 서버 실행중 ...`);
});
