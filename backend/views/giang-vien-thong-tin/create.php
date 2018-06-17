<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\GiangVienThongTin */

$this->title = 'Create Giang Vien Thong Tin';
$this->params['breadcrumbs'][] = ['label' => 'Giang Vien Thong Tins', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giang-vien-thong-tin-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
