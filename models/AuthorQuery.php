<?php

namespace app\models;

use yii\db\ActiveQuery;

class AuthorQuery extends ActiveQuery
{
    public function one($db = null)
    {
        return parent::one($db); // TODO: Change the autogenerated stub
    }

    public function all($db = null)
    {
        return parent::all($db); // TODO: Change the autogenerated stub
    }
}