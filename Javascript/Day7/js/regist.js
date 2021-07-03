'use strict'
// const sendit = function(){
//     alert('sendit(호출');
//     return false;
// }



const sendit = function(){
    const userid = document.getElementById('userid');
    const userpw = document.getElementById('userpw')
    const userpw_re = document.getElementById('userpw_re')
    const name = document.getElementById('name');
    const hp = document.getElementById('hp');
    const email = document.getElementById('email');
    const habby = document.getElementsByName('habby');
    const ssn1 = document.getElementById('ssn1')
    const ssn2 = document.getElementById('ssn2')
    const isssn = document.getElementById('isssn');

    // 정규식 패턴
    const expNameText = /[가-힣]+$/;
    const expHpText = /^\d{3}-\d{3,4}-\d{4}$/;
    const expEmailText = /^[A-Za-z0-9\.\-]+@[A-Za-z0-9\.\-]+\.[A-Za-z0-9\.\-]+$/;


    if (userid.value == '') {
        alert('아이디를 입력하세요')
        userid.focus();
        return false
    }else if(userid.value.length < 4 || userid.value.length > 20){
        alert('아이디를 4자 이상 20자 이상 입력하세요.')
        userid.focus();
        return false;
    }else if (userpw.value == '') {
        alert('아이디를 입력하세요')
        userpw.focus();
        return false
    }else if(userpw.value.length < 4 || userpw.value.length > 20){
        alert('비밀번호를 4자 이상 20자 이상 입력하세요.')
        userpw.focus();
        return false;
    }
    if(userpw.value != userpw_re.value){
        alert('비밀번호확인 값이 서로 다릅니다.')
        userpw_re.focus();
        return false;
    }
    
    if (!expNameText.test(name.value)) {
        alert('이름형식을 확인하세요')
        name.focus();
        return false;
    }

    if (!expHpText.test(hp.value)) {
        alert('휴대폰번호 형식을 확인하세요')
        hp.focus();
        return false;
    }

    if (!expEmailText.value.test(email.value)) {
        alert('이메일 형식을 확인하세요')
        email.focus();
        return false;
    }

    let count = 0;
    for(let i in habby){
        if(habby[i].checked){
            count++;
        }
    }

    if (count == 0) {
        alert('취미를 한개이상 선택하세요')
        return false;
    }


    return true;
}

const moveFocus = function(){
    const ssn1 = document.getElementById('ssn1');
    if(ssn1.value.length >= 6){
        document.getElementById('ssn2').focus()
    }
}

const ssnCheck=function(){
    const ssn1 = document.getElementById('ssn1')
    const ssn2 = document.getElementById('ssn2')
    const isssn = document.getElementById('isssn')

    if (ssn1.value =="" || ssn2.value =="") {
        alert('주민등록번호를 입력하세요')
        ssn1.focus()
        return false;
    }
    if (isssn.value == 'n') {
        alert('주민검증을 눌러주세요')
        return false;
    }

    const ssn = ssn1.value + ssn2.value;
    const s1 = Number(ssn.substr(0,1))*2;
    const s2 = Number(ssn.substr(2,1))*3;
    const s3 = Number(ssn.substr(3,1))*4;
    const s4 = Number(ssn.substr(4,1))*5;
    const s5 = Number(ssn.substr(5,1))*6;
    const s6 = Number(ssn.substr(6,1))*7;
    const s7 = Number(ssn.substr(7,1))*8;
    const s8 = Number(ssn.substr(8,1))*9;
    const s9 = Number(ssn.substr(9,1))*2;
    const s10 = Number(ssn.substr(10,1))*3;
    const s11 = Number(ssn.substr(11,1))*4;
    const s12 = Number(ssn.substr(11,1))*5;
    const s13 = Number(ssn.substr(11,1));
    
    const result = s1+s2+s3+s4+s5+s6+s7+s8+s9+s11+s12;
    result = result % 11;
    result = 11 - result;
    if (result >= 10) {
        result = result %10
    }
    if(result == s13){
        alert('유효한 번호')
        isssn.value = 'y'
    }else{
        alert('유효하지 않은 번호')
    }

}

