<?php

namespace app\models;

use yii\db\ActiveRecord;

class Author extends ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'authors';
    }
}