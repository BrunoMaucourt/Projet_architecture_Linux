<?php
    $book_id = $_POST['book_id'];
    require "./db_connection.php";
    require "../Model/delete_book_by_id.php";
    header("Location: ../View/index.php");
    exit();