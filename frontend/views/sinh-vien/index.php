<?php
$this->title = "Sinh Viên";
?>

<!-- Wrapper for slides -->

<div id="khung">
    <div class="container">
      <?php
      foreach ($sinh_vien1 as $sinh_vien1) {
       if ($sinh_vien1->id <= 3) {
        $id = $sinh_vien1->id;
        $anh = $sinh_vien1->anh_minh_hoa;
        $tieu_de = $sinh_vien1->tieu_de;
        $gioi_thieu = $sinh_vien1->gioi_thieu;
        ?>     
        <div class="row" >
            <div class="col-md-7 col-sm-7">
            <br>
                <a href="index.php?r=sinh-vien%2Fview&id=<?= $id ?>">
                  <p style="text-align: center;">  <img class="img-responsive img-hover" style="width: 400px;height: 400px" src="<?= $anh ?>" ></p>
                </a>
            </div>
            <div class="col-md-5 col-sm-5 text-justify " id="post">
                <h3 id="postTitle"><?=$tieu_de?></h3>

                <p id="postIntro"><?=$gioi_thieu?></p>

                <a class="btn btn-primary" href="index.php?r=sinh-vien%2Fview&id=<?= $id ?>">Xem chi tiết</a>
            </div>
        </div>
        <br><hr><br>

        <?php
    }
}
?>
</div>
</div>