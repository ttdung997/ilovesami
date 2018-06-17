<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\TinTuc */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Tin Tucs', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tin-tuc-view">

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
            'tac_gia_id',
            'tieu_de:ntext',
            'anh_minh_hoa:ntext',
            'gioi_thieu:ntext',
            'phan_1:ntext',
            'noi_dung_1:ntext',
            'phan_2:ntext',
            'noi_dung_2:ntext',
            'phan_3:ntext',
            'noi_dung_3:ntext',
            'phan_4:ntext',
            'noi_dung_4:ntext',
            'ngay_lap',
        ],
    ]) ?>

</div>
