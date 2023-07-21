<?php
/**
 * @var \app\models\Book[] $books
*/
?>
<div class="col-md-6">
    <h2>Книги</h2>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Img</th>
            <th scope="col">Title</th>
            <th scope="col">Year</th>
            <th scope="col">Isbn</th>
            <th scope="col">Author</th>
            <?php if (!Yii::$app->user->isGuest):?>
                <th scope="col">Actions</th>
            <?php endif;?>
        </tr>
        </thead>
        <tbody>
        <?php foreach ($books as $book):?>
            <tr>
                <th scope="col">#</th>
                <th scope="col">
                    <img src="<?=$book->img?>">
                </th>
                <th scope="col"><?=$book->title?></th>
                <th scope="col"><?=$book->year?></th>
                <th scope="col"><?=$book->isbn?></th>
                <th scope="col"><?=$book->author->fullname?></th>
                <?php if (!Yii::$app->user->isGuest):?>
                    <td>
                        <?php echo \yii\helpers\Html::a('Редактировать', \yii\helpers\Url::to(['edit', 'id' => $book->id]), [
                            'class' => 'btn btn-warning'
                        ])?>
                        <?php $form = \yii\widgets\ActiveForm::begin([
                            'action' => \yii\helpers\Url::to(['delete', 'id' => $book->id])
                        ])?>
                        <?php echo \yii\helpers\Html::submitButton('Удалить', [
                            'class' => 'btn btn-danger'
                        ])?>
                        <?php $form::end()?>
                    </td>
                <?php endif;?>
            </tr>
        <?php endforeach;?>
        </tbody>
    </table>
</div>