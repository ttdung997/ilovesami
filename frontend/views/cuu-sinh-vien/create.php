<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\CuuSinhVien */

$this->title = 'Create Cuu Sinh Vien';
$this->params['breadcrumbs'][] = ['label' => 'Cuu Sinh Viens', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cuu-sinh-vien-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
