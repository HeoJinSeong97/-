<?php
    $conn = mysqli_connect("localhost", "root", "0000", "front") or die("데이터베이스연결실패");
    
    if($conn){
        echo("DB연결성공");
    }else{
        echo("DB연결실패");
    }
?>