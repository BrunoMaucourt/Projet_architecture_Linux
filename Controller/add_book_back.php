<?php

    // Get values from form
    $book_name = $_POST['book_name'];
    $book_author = $_POST['book_author'];
    $book_category = $_POST['book_category'];
    $book_synopsis = $_POST['book_synopsis'];
    $book_year_publication = $_POST['book_year_publication'];

    // Connection to database
    require_once "./db_connection.php";

    // Add values in database
    require_once "../Model/add_book.php";

    // Go to a new page
    header("Location: ../View/index.php");
    exit();