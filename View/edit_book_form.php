<?php
    $title = "Editer un livre";
    $book_id = $_GET['id'];
    require_once "../Element/header.php";
    require_once('../Controller/db_connection.php');
    require_once('../Model/find_book_by_id.php');
?>
<h1>Editer un livre</h1>
<div class="container">
    <p>
        <?PHP
            echo $book['nomLivre'];
        ?>
    </p>
</div>

<?PHP
    require_once "../Element/footer.php";
?>