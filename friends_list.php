<?php

//1.データベースに接続する
$dsn = 'mysql:dbname=FriendsDB;host=localhost';
$user = 'root';
$password = 'mangoshake';
$dbh = new PDO($dsn,$user,$password);
$dbh->query('SET NAMES utf8');

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>FriendsSystem</title>
</head>
<body>
	お友達リスト
	<?php
		$area_id = $_GET['id'];
		//2.SQLで指令をだす
		$sql = 'SELECT * FROM `friends_table` WHERE `area_table_id` = '.$area_id;
		//echo $sql;
		$stmt = $dbh->prepare($sql);

		$stmt->execute();

		echo '<ul>';
		while(1){
			$rec = $stmt->fetch(PDO::FETCH_ASSOC);
			if ($rec == false) {
				break;
			}
			echo '<li>';
			echo $rec['name'];
			echo '<input type="button" value="編集" onclick="location.href=\'friends_update.php?id='.$rec['id'].'\'">';
			echo '</li>';
		}

		echo '</ul>';
		//3.データベースから切断する
		$dbh=null;
	?>
	<br />
	<input type="button" value="追加" onclick="location.href='friends_add.php'">
</body>
</html>


