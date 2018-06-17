<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\GiangVienThongTinSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Thông tin về các giảng viên';
$this->params['breadcrumbs'][] = $this->title;
?>
<div id="khung">
    <div class="container">
        <?php
        foreach($thong_tin as $thong_tin){
            ?>
        
        <h1><?=$thong_tin->ten?></h1>
        <img src="<?= $thong_tin->anh_minh_hoa ?>" style="width:30%;margin-left: 35%";><br>
        <h2 id="phanbaiviet">Môn Học</h2><br>
        <?=$thong_tin->mon_hoc?>
        <h2 id="phanbaiviet">Hướng Nghiên Cứu</h2><br>
        <?=$thong_tin->huong_nghien_cuu?>
        <?php
        
    }
    ?>
    
</div>
</div>