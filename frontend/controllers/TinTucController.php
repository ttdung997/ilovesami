<?php

namespace frontend\controllers;

use Yii;
use frontend\models\TinTuc;
use frontend\models\TinTucSearch;
use frontend\models\GiangVienThongTin;
use frontend\models\GiangVienThongTinSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * TinTucController implements the CRUD actions for TinTuc model.
 */
class TinTucController extends Controller
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
     * Lists all TinTuc models.
     * @return mixed
     */
    public function actionIndex()
    {
 
          $tin_tuc= TinTuc::find()->all();
          $tin_tuc1= TinTuc::find()->all();
        return $this->render('index', [

            'tin_tuc' => $tin_tuc,
            'tin_tuc1' => $tin_tuc1,
        ]);
    }

    /**
     * Displays a single TinTuc model.
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
     * Creates a new TinTuc model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new TinTuc();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing TinTuc model.
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
     * Deletes an existing TinTuc model.
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
     * Finds the TinTuc model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return TinTuc the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = TinTuc::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
