<?php
$this->title = "Tin tức";
?>
<div id="khung">
    <div id="slider">

        <div class="container" style="margin-top: 0%">
            <div class="row">
                <div class="slide-content">
                    <div  class="col-lg-12" id="bang">
                        <h1>Bài viết nổi bật</h1>
                        <div id="carousel-example-generic1" class="col-lg-12 carousel slide" data-ride="carousel" >
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic1" data-slide-to="0" class="active" style="background-color: blue"></li>
                                <li data-target="#carousel-example-generic1" data-slide-to="1" style="background-color: blue"></li>
                                <li data-target="#carousel-example-generic1" data-slide-to="2" style="background-color: blue"></li>
                                <li data-target="#carousel-example-generic1" data-slide-to="3" style="background-color: blue"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div onclick="window.location.href = 'index.php?r=tin-tuc%2Fview&id=1'"  class="item active">
                                    <img src="images/tin-tuc/cong.jpg" > 
                                    <h1>Một số bài viết ngắn của Thầy Lê Chí Ngọc</h1>
                                </div>
                                <?php
                                foreach ($tin_tuc as $tin_tuc) {
                                    if ($tin_tuc->id != 1) {
                                        $id = $tin_tuc->id;
                                        $anh = $tin_tuc->anh_minh_hoa;
                                        $tieu_de = $tin_tuc->tieu_de;
                                        $tac_gia = $tin_tuc->tac_gia_id;
                                        $gioi_thieu = $tin_tuc->gioi_thieu;
                                        ?>
                                        <div onclick="window.location.href = 'index.php?r=tin-tuc%2Fview&id=<?= $id ?>'"  class="item">
                                            <img src="<?= $anh ?>" >
                                            <h1><?= $tieu_de = $tin_tuc->tieu_de?></h1>
                                        </div>
                                        <?php
                                    }
                                }
                                ?>
                                <!-- Controls 
                                <a class="left carousel-control" href="#carousel-example-generic1" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic1" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="khung">
    <h1>Bài viết mới</h1> 
    <?php
    foreach ($tin_tuc1 as $tin_tuc1) {
        if ($tin_tuc1->id <= 3) {
            $id = $tin_tuc1->id;
            $anh = $tin_tuc1->anh_minh_hoa;
            $tieu_de = $tin_tuc1->tieu_de;
            $tac_gia = $tin_tuc1->tac_gia_id;
            $gioi_thieu = $tin_tuc1->gioi_thieu;
            ?>
            <img src="<?= $anh ?>" style="width:80%;margin-left: 8%";>
            <a href="index.php?r=tin-tuc%2Fview&id=<?= $id ?>"> <h1><?= $tieu_de ?></h1></a>
            <?php
        }
    }
    ?>
</div>