<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\GiangVienThongTinSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="giang-vien-thong-tin-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'ten') ?>

    <?= $form->field($model, 'anh_minh_hoa') ?>

    <?= $form->field($model, 'mon_hoc') ?>

    <?= $form->field($model, 'huong_nghien_cuu') ?>

    <?php // echo $form->field($model, 'ngay_lap') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
