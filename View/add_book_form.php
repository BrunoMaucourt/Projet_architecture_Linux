<?php
    $title = "Ajouter un livre";
    require_once "../Element/header.php";
?>
<h1>Ajouter un livre</h1>
<div class="container">
    <form action="../Controller/add_book.php" method="post" class="form-row">
        <div class="form-group row mt-3">
            <label for="book_name">Nom du livre</label>
            <input type="text" name="book_name" id="book_name">
        </div>
        <div class="form-group row mt-3">
            <label for="book_author">Nom de l'auteur</label>
            <input type="text" name="book_author" id="book_author">
        </div>
        <div class="form-group row mt-3">
            <label for="book_category">Catégorie du livre</label>
            <input type="text" name="book_category" id="book_category">
        </div>
        <div class="form-group row mt-3">
            <label for="book_synopsis">Synopsis du livre</label>
            <input type="text" name="book_synopsis" id="book_synopsis">            
        </div>
        <div class="form-group row mt-3">
            <label for="book_year_publication">Année de publication du livre</label>
            <input type="text" name="book_year_publication" id="book_year_publication">
        </div>
        <div class="form-group row mt-3">
           <input type="submit" value="Ajouter" class="btn btn-success">
        </div>
    </form>
</div>
<?PHP
    require_once "../Element/footer.php";
?>