<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\GiangVienThongTinSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
if (Yii::$app->user->isGuest) {
        header('Location: ?r=/site/login');
}
$this->title = 'Giang Vien Thong Tins';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giang-vien-thong-tin-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Giang Vien Thong Tin', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'ten:ntext',
            'anh_minh_hoa:ntext',
            // 'mon_hoc:ntext',
            // 'huong_nghien_cuu:ntext',
            // 'ngay_lap',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
