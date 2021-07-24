<?php

    include "./include/dbconn.php";

    $userid = $_POST["userid"];
    $userpw = $_POST["userpw"];
    $name   = $_POST["name"];
    $hp     = $_POST["hp"];
    $email  = $_POST["email"];
    // $hobby  = $_POST["hobby"];  // ['영화감상', '쇼핑', '게임']
    $hobby  = $_POST["hobby"];
    // if(isset($_POST["hobby"])){
    //     echo "hobby 값이 넘어옴";
    // }
    $hobbystr = "";
    foreach($hobby as $h){
        $hobbystr .= $h.",";
    }

    $ssn1   = $_POST["ssn1"];
    $ssn2   = $_POST["ssn2"];
    $zipcode = $_POST["zipcode"];
    $address1 = $_POST["address1"];
    $address2 = $_POST["address2"];
    $address3 = $_POST["address3"];


    if (!$conn) {
        # conn이 없으면
        echo "DB연결 실패";
    }else {
        # code...
        $sql = "INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, 
        mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES
        ('$userid', '$userpw', '$name', '$hp', '$email', '$hobbystr', 
        '$ssn1', '$ssn2', '$zipcode', '$address1', '$address2', '$address3');";
        $result = mysqli_query($conn, $sql);
        
    }
?>
<script>
    alert("회원가입성공")
    location.href="login.php";
</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입 완료</title>
</head>
<body>
    <h2>회원가입 완료</h2>
    <p>아이디 : <?=$userid?></p>
    <p>비밀번호 : <?=$userpw?></p>
    <p>이름 : <?=$name?></p>
    <p>휴대폰 번호 : <?=$hp?></p>
    <p>이메일 : <?=$email?></p>
    <p>취미 : <?=$hobbystr?></p>
    <p>주민등록번호 : <?=$ssn1?>-<?=$ssn2?></p>
    <p>우편번호 : <?=$zipcode?></p>
    <p>주소 : <?=$address1?></p>
    <p>상세주소 : <?=$address2?></p>
    <p>참고항목 : <?=$address3?></p>
</body>
</html>