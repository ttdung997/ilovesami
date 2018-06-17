<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body style="background-color: #e5e5e8">
    <?php $this->beginBody() ?>

    <div id ="wrap-page" style="background-color: rgb(35, 82, 124)" >

        <div class="blog-masthead">
            <div class="container">
                <nav class="blog-nav">
                    <a class="blog-nav-item" href="http://www.hust.edu.vn">Đại học Bách Khoa Hà Nội</a>
                </nav>
            </div> <!-- container -->
        </div> <!-- blog-masthead -->
        <div class="sami-header">
            <div class="container">
                <div id="top-logo" class="col-sm-5">
                    <a href="?" id="branding">
                        <img src="images/img/logo.png" 
                        style="max-width: 100%;width:100%" /></a>
                    <!-- <h1 class="blog-title">Viện Toán ứng dụng và Tin học</h1>
                    <p class="lead blog-description">School of Applied Mathematics and Informatics</p> -->
                </div>  
                <div id="top-logo" class="col-sm-7 top-menu" style="right: -4%">
                    <div class="container-fluid" style="margin-top: 7%">
                        <div class="navbar-header">
                            <button type="button" class="my-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <!-- > -->
                            </button>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse in" aria-expanded="true" >

                            <ul class="nav navbar-nav" >
                                <li class="">
                                    <a  class="ui-link" title="Giới thiệu" href="#" data-toggle="dropdown" class="dropdown-toggle" aria-haspopup="true">Giảng Viên <span class="caret"></span></a>
                                    <ul role="menu" class=" dropdown-menu">   
                                    <li><a href="?r=giang-vien-thong-tin" class="ui-link">Thông tin giảng viên</a></li>
                                    <li><a href="?r=giang-vien" class="ui-link">Bài viết về giảng viên</a></li>  
                                    </ul>
                                </li>
                                <li class=""><a href="?r=tin-tuc" class="ui-link">Bài Viết</a></li>
                                <li class=""><a href="?r=sinh-vien" class="ui-link">Sinh Viên</a></li>
                                <!-- <li class=""><a href="?r=cuu-sinh-vien" class="ui-link">Cựu Sinh Viên</a></li> -->
                                <li class=""><a href="?r=site/tailieu" class="ui-link">Tài liệu</a></li>
                            </ul>
                        </div>
                    </div><!-- container-fluid -->
                </div>
            </div>
        </div>
    </div>

                <!--                  
                <br> <br class="space">--><!-- end header --></div>

                <div class="mainbody" >
                    <?= $content ?>
                </div>
                <div id="global-footer">
                    <div class="container">
                        <div class="row">
                            <!-- #bottom-logo end -->
                            <div class="clear"></div>
                            <p class="copyright">&copy; Viện Toán ứng dụng và Tin học, ĐHBK Hà Nội.&nbsp; 1 Đại Cồ Việt, Hai Bà Trưng, Hà Nội</p>
                        </div><!-- row -->
                    </div><!-- container -->
                </div>


                <?php $this->endBody() ?>
            </body>
            </html>
            <?php $this->endPage() ?>
