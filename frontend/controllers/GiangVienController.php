<?php

namespace frontend\controllers;

use Yii;
use frontend\models\GiangVien;
use frontend\models\GiangVienSearch;
use frontend\models\GiangVienThongTin;
use frontend\models\GiangVienThongTinSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * GiangVienController implements the CRUD actions for GiangVien model.
 */
class GiangVienController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all GiangVien models.
     * @return mixed
     */
    public function actionIndex()
    {
       $giang_vien= GiangVien::find()->all();
       $giang_vien1= GiangVien::find()->all();
        return $this->render('index', [
            'giang_vien'=>$giang_vien,
            'giang_vien1'=>$giang_vien1,
        ]);
    }

    /**
     * Displays a single GiangVien model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
          $thong_tin=  GiangVienThongTin::find()->all();
        return $this->render('view', [
            'model' => $this->findModel($id),
            'thong_tin'=>$thong_tin,
        ]);
    }

    /**
     * Creates a new GiangVien model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new GiangVien();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing GiangVien model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing GiangVien model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the GiangVien model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return GiangVien the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = GiangVien::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
