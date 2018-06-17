<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\GiangVienThongTin */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="giang-vien-thong-tin-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput() ?>

    <?= $form->field($model, 'ten')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'anh_minh_hoa')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'mon_hoc')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'huong_nghien_cuu')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'ngay_lap')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
