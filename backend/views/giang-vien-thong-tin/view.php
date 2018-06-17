<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\GiangVienThongTin */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Giang Vien Thong Tins', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giang-vien-thong-tin-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'ten:ntext',
            'anh_minh_hoa:ntext',
            'mon_hoc:ntext',
            'huong_nghien_cuu:ntext',
            'ngay_lap',
        ],
    ]) ?>

</div>
