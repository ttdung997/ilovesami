<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\TinTuc */

$this->title = 'Update Tin Tuc: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Tin Tucs', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="tin-tuc-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
