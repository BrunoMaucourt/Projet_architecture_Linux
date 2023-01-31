<?php
    $title = "Supprimer un livre";
    $book_id = $_GET['id'];
    require_once "../Element/header.php";
    require_once('../Controller/db_connection.php');
    require_once('../Model/find_book_by_id.php');
?>
<h1>Supprimer un livre</h1>
<div class="container p-5">
    <div class="boder bg-secondary p-5 text-white d-flex flex-column justify-content-center">
        <p> Êtes vous sûr de vouloir supprimer le livre suivant : 
            <?PHP
                echo $book['nomLivre'];
            ?>
        </p>
        <form action="../Controller/delete_book.php" method="post">
            <input type="hidden" name="book_id" value="<?php echo($book_id); ?>"></input>
            <input type="submit" class="btn btn-danger" value="Supprimer le livre">
        </form>
    </div>
</div>

<?PHP
    require_once "../Element/footer.php";
?>