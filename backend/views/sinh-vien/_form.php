<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\SinhVien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sinh-vien-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ten')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tieu_de')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'anh_minh_hoa')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'gioi_thieu')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'phan_1')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'noi_dung_1')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'phan_2')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'noi_dung_2')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'phan_3')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'noi_dung_3')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'ngay_lap')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
