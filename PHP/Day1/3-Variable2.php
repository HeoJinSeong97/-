<?php
    $num = 10;
    function func1(){
        $str = "PHP";
        echo "함수 안에서 호출한 지역변수 str의 값 : {$str}";
        global $num;
        echo "함수 안에서 호출한 지역변수 str의 값 : {$num}";
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>변수 - 2</title>
</head>
<body>
    <h2>변수 - 2</h2>
    <?php 
        func1();
    ?>
</body>
</html>