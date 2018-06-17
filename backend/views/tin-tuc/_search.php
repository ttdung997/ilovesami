<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\TinTucSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tin-tuc-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'tac_gia_id') ?>

    <?= $form->field($model, 'tieu_de') ?>

    <?= $form->field($model, 'anh_minh_hoa') ?>

    <?= $form->field($model, 'gioi_thieu') ?>

    <?php // echo $form->field($model, 'phan_1') ?>

    <?php // echo $form->field($model, 'noi_dung_1') ?>

    <?php // echo $form->field($model, 'phan_2') ?>

    <?php // echo $form->field($model, 'noi_dung_2') ?>

    <?php // echo $form->field($model, 'phan_3') ?>

    <?php // echo $form->field($model, 'noi_dung_3') ?>

    <?php // echo $form->field($model, 'phan_4') ?>

    <?php // echo $form->field($model, 'noi_dung_4') ?>

    <?php // echo $form->field($model, 'ngay_lap') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
