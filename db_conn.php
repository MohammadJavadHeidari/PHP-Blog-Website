<?php

$sName = "db";
$uName = "blog_user";
$pass = "blog_password";
$db_name = "blog_db";

try {
  $conn = new PDO(
    "mysql:host=$sName;dbname=$db_name",
    $uName,
    $pass
  );
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
  echo "Connection failed : " . $e->getMessage();
}
