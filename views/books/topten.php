<?php
/**
 * @var \app\models\Book[] $books
 */
?>
<div class="col-md-6">
    <h2>ТОП10 авторов</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Books count</th>
            <th scope="col">Author</th>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($books as $book):?>
            <tr>
                <td><?=$book->bookcount?></td>
                <td><?=$book->author->fullname?></td>
            </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>