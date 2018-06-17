<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\GiangVienThongTin */

$this->title = 'Update Giang Vien Thong Tin: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Giang Vien Thong Tins', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="giang-vien-thong-tin-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
