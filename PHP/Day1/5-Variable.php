<?php
    function func1(){
        static $cnt = 1;
        echo "카운트 값 {$cnt}";
        $cnt++;
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form action="5-Variable2.php" method="POST">
    <p><input type="search" name="q"><input type="search" name="q2"> <input type="submit" value="검색"></p>
    </form>
    
</body>
</html>