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
    <body>
        <?php $this->beginBody() ?>
        
        <div id="wrap-page">
            <div id="top-page">
                <div class="top-in">
                    <span class="phone"> 0973 5etretertert</span>
                    <div class="language">
                        <select>
                            <option value="en_US">Tiếng Anh</option>
                            <option value="vn_US">Việt Nam</option>
                        </select>
                    </div>
                </div><!-- end .top-in-->

            </div><!-- end .top-page-->
            <header>
                <div style="margin-left: 6%;;">
                    <div class="row">
                        <div class="header-in">
                           
                                <a href="?r=site/index" class="logo"><img src="images/logo.png"></a>
                            </div>
                            <br>
                            <br>
                           
                           
                                <div class="menu">
                                    <ul>
                                            <li class="active"><a href="?r=site/index">Trang chủ</a></li>
                                            <li class="active"><a href="?r=gioithieu%2Fview&id=1" class="ui-link">Giới thiệu</a></li>
                                            <li class="active"><a href="?r=sanpham" class="ui-link">Sản phẩm</a></li>
                                            <li class="active"><a href="?r=site/dichvu" class="ui-link">Dịch vụ</a></li>
                                            <li class="active"><a href="?r=tintuc" class="ui-link">Tin tức</a></li>
                                              <li class="active"><a href="?r=site/lienhe" class="ui-link">Liên hệ</a></li>
                                        </ul>
                                    </div><!--/.nav-collapse -->
                               
                            </div>
                        </div>
                
                </div><!-- end .container-->
            </header><!-- end header -->
                <?= $content ?>
        </div>
        <footer>
            <div class="container">
                <div class="row">
                    <div class="wrap-footer">
                        <div class="col-sm-8">
                            <div class="ft-top">
                                
                             
                            </div>
                            <div class="ft-bottom">
                                <span class="namecompany">Trung tâm thiết kế, chế tạo và chuyển giao thiết bị công nghệ cao Việt Nam</span>
                                <span> Địa chỉ:  Số 196 - đường Thân Nhân Trung - Bích Động - Việt Yên - Bắc Giang.</span>
                                <span> Điện thoại:  (0973) 58 77 59 | Email: quanghc43bkhn@gmail.com</span>
                            </div>
                        </div>
                           <div class="col-sm-4 footer-social">
                                    <h2>kết nối với chúng tôi</h2>
                                    <a target="_blank" class="twitter"  href="https://twitter.com/thietbicongnghe"></a>
                                    <a target="_blank" class="facebook" href="https://www.facebook.com/maythietbicongnghe"></a>
                                    <a target="_blank" class="google" rel="publisher"
                                       href="https://plus.google.com/u/2/106242573171093732801/about?hl=vi"></a>
                                    <a target="_blank" class="youtube" rel="publisher" href="https://youtube.com"></a>
                                </div>
                        
                        <br class="space"/>
                    </div>
                </div>
            </div>
        </footer><!--end footer -->

<?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>
