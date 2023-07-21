<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%book}}`.
 */
class m230721_113930_create_books_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%books}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string(),
            'year' => $this->string(20),
            'description' => $this->text(),
            'isbn' => $this->string(17)->unique(),
            'img' => $this->string(),
            'author_id' => $this->integer(),
            'trash' => $this->boolean()->defaultValue(false)
        ]);

        $this->createIndex('books_idx', '{{%books}}', 'id');
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%books}}');
    }
}
