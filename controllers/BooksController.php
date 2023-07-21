<?php

namespace app\controllers;

use app\models\Book;
use app\services\AuthorSubscribe;
use yii\web\Controller;

class BooksController extends Controller
{
    public function actionIndex()
    {
        $books = Book::find()->all();
        return $this->render('index', [
            'books' => $books
        ]);
    }

    public function actionTopten()
    {
        $books = Book::find()->getTopTenAuthorsForYear();
        return $this->render('topten', [
            'books' => $books
        ]);
    }
    public function actionEdit()
    {
        return 'OK';
    }

    public function actionDelete()
    {
        return 'OK';
    }

    public function actionBookSubscribe($author_id)
    {
        $authorSubscribe = new AuthorSubscribe($author_id);
        try {
            $authorSubscribe->subscribe();
        }catch (\Exception $e)
        {
            return "Ошибка подписки";
        }
        return "ok";
    }
}