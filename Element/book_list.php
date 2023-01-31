<div class="table-responsive">
    <table class="table table-striped">
    <thead>
        <tr>
        <th scope="col">Titre</th>
        <th scope="col">Auteur</th>
        <th scope="col">Catégorie</th>
        <th scope="col">Synopsis</th>
        <th scope="col">Année de publication</th>
        <th scope="col">Editer</th>
        <th scope="col">Supprimer</th>
        </tr>
    </thead>
    <tbody>
    <?php
    foreach($books as $book){
        ?>
        <tr>
            <td>
                <?PHP
                    echo($book['nomLivre']);
                ?>
            </td>
            <td>
                <?PHP
                    echo($book['nomAuteur']);
                ?>
            </td>
            <td>
                <?PHP
                    echo($book['categorie']);
                ?>
            </td>
            <td>
                <?PHP
                    // Show only a part of synopsis
                    $synopsis_start_position = 0;
                    $synopsis_start_length = 50;
                    echo(substr($book['synopsis'], $synopsis_start_position, $synopsis_start_length) . ' ...');
                ?>
            </td>
            <td>
                <?PHP
                    echo($book['datePublication']);
                ?>
            </td>
            <td>
                <a class="btn btn-secondary" href="./edit_book_form.php?id=<?php echo($book['ID']) ?>">Editer</a>
            </td>
            <td>
                <a class="btn btn-danger" href="./delete_book.php?id=<?php echo($book['ID']) ?>">Supprimer</a>
            </td>
        </tr>
        <?php }; ?>
    </tbody>
    </table>
</div>