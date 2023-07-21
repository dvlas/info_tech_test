<?php

namespace app\models;

use yii\db\ActiveRecord;

class Book extends ActiveRecord
{
    public $books_count;
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'books';
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Наименование',
            'year' => 'Год выпуска',
            'author_id' => 'Автор',
            'trash' => 'Корзина',
        ];
    }

    public function getAuthor()
    {
        return $this->hasOne('app\models\Author', ['id' => 'author_id']);
    }

    public static function find()
    {
        return new BooksQuery(static::class);
    }

    public function getBookcount(){
        return $this->books_count;
    }
}