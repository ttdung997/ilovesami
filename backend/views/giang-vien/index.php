<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\GiangVienSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
if (Yii::$app->user->isGuest) {
        header('Location: ?r=/site/login');
}
$this->title = 'Giảng viên';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="giang-vien-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Tạo giảng viện mới', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            //'giang_vien_id',
            'ten:ntext',
            'tieu_de:ntext',
            //'anh_minh_hoa:ntext',
             //'gioi_thieu:ntext',
            // 'phan_1:ntext',
            // 'noi_dung_1:ntext',
            // 'phan_2:ntext',
            // 'noi_dung_2:ntext',
            // 'phan_3:ntext',
            // 'noi_dung_3:ntext',
             'ngay_lap',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
