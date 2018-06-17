<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model frontend\models\CuuSinhVien */

$this->title = 'Update Cuu Sinh Vien: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Cuu Sinh Viens', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="cuu-sinh-vien-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
