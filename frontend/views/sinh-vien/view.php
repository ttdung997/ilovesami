<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\SinhVien */

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
</div>
