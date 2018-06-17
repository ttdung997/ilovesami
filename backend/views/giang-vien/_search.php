<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\GiangVienSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="giang-vien-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'giang_vien_id') ?>

    <?= $form->field($model, 'ten') ?>

    <?= $form->field($model, 'tieu_de') ?>

    <?= $form->field($model, 'anh_minh_hoa') ?>

    <?php // echo $form->field($model, 'gioi_thieu') ?>

    <?php // echo $form->field($model, 'phan_1') ?>

    <?php // echo $form->field($model, 'noi_dung_1') ?>

    <?php // echo $form->field($model, 'phan_2') ?>

    <?php // echo $form->field($model, 'noi_dung_2') ?>

    <?php // echo $form->field($model, 'phan_3') ?>

    <?php // echo $form->field($model, 'noi_dung_3') ?>

    <?php // echo $form->field($model, 'ngay_lap') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
