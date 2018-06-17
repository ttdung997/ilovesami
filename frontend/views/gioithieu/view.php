<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\TintucSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = $gioithieu->gioithieu_tieude;
$this->params['breadcrumbs'][] = $this->title;
?>

  

<div class="content-catogery" style="margin-top: 100px;margin-left: 7%">
    
    
    
    <div class="col-sm-12">
        <div class="detail-new">

            <hr>
            <div class="new">
                <div class="khungten">
                    <h1 style="font-size: 20px;"><?=$gioithieu->gioithieu_tieude?></h1>
                    <hr style="width: 15%;">
                </div>
                

                <?=$gioithieu->gioithieu_noidung;?>
            </div>
          
        </div> <!-- end content-catogery -->
    </div>
   
      <br class="space"/>
</div>