<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\TinTucSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Tin Tucs';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tin-tuc-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Tin Tuc', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            // 'tac_gia_id',
            'tieu_de:ntext',
            'anh_minh_hoa:ntext',
            // 'gioi_thieu:ntext',
            // 'phan_1:ntext',
            // 'noi_dung_1:ntext',
            // 'phan_2:ntext',
            // 'noi_dung_2:ntext',
            // 'phan_3:ntext',
            // 'noi_dung_3:ntext',
            // 'phan_4:ntext',
            // 'noi_dung_4:ntext',
            // 'ngay_lap',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
