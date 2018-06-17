<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\TinTuc */

$this->title = $model->tieu_de;
$this->params['breadcrumbs'][] = [$model->tieu_de, 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div id="khung">
    <h1><?=$model->tieu_de?></h1>
    <p><?=$model->gioi_thieu?></p><br>
     <img src="<?= $model->anh_minh_hoa ?>" style="width:80%;margin-left: 8%";><br>
     <h2 id="phanbaiviet"><?=$model->phan_1?></h2><br>
     <?=$model->noi_dung_1?><br>
      <h2 id="phanbaiviet"><?=$model->phan_2?></h2><br>
     <?=$model->noi_dung_2?><br>
       <h2 id="phanbaiviet"><?=$model->phan_3?></h2><br>
     <?=$model->noi_dung_3?><br>
        <h2 id="phanbaiviet"><?=$model->phan_4?></h2><br>
     <?=$model->noi_dung_4?><br>
</div>
<div id="khung">
    <h1>Thông tin tác giả</h1>
    <?php
        foreach($thong_tin as $thong_tin){
            if($thong_tin->id == $model->tac_gia_id){
    ?>
    <h1><?=$thong_tin->ten?></h1>
    <img src="<?= $thong_tin->anh_minh_hoa ?>" style="width:30%;margin-left: 35%";><br>
     <h2 id="phanbaiviet">Môn Học</h2><br>
     <?=$thong_tin->mon_hoc?>
     <h2 id="phanbaiviet">Hướng Nghiên Cứu</h2><br>
     <?=$thong_tin->huong_nghien_cuu?>
    <?php
        }
        }
    ?>
</div>
