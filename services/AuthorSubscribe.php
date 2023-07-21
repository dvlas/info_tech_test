<?php

namespace app\services;

use yiidreamteam\smspilot\Api;

class AuthorSubscribe implements AuthorSubscribeInterface
{
    private $serviceSms;
    public function __construct($author)
    {
        $this->serviceSms = new Api("KEYS");
    }

    public function subscribe()
    {
        $this->serviceSms->send(
            \Yii::$app->user->phone_num,
            'Вы успешно подписаны на новости'
        );
    }
}