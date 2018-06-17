<?php

namespace backend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\GiangVien;

/**
 * GiangVienSearch represents the model behind the search form about `backend\models\GiangVien`.
 */
class GiangVienSearch extends GiangVien
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'giang_vien_id'], 'integer'],
            [['ten', 'tieu_de', 'anh_minh_hoa', 'gioi_thieu', 'phan_1', 'noi_dung_1', 'phan_2', 'noi_dung_2', 'phan_3', 'noi_dung_3', 'ngay_lap'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = GiangVien::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'giang_vien_id' => $this->giang_vien_id,
            'ngay_lap' => $this->ngay_lap,
        ]);

        $query->andFilterWhere(['like', 'ten', $this->ten])
            ->andFilterWhere(['like', 'tieu_de', $this->tieu_de])
            ->andFilterWhere(['like', 'anh_minh_hoa', $this->anh_minh_hoa])
            ->andFilterWhere(['like', 'gioi_thieu', $this->gioi_thieu])
            ->andFilterWhere(['like', 'phan_1', $this->phan_1])
            ->andFilterWhere(['like', 'noi_dung_1', $this->noi_dung_1])
            ->andFilterWhere(['like', 'phan_2', $this->phan_2])
            ->andFilterWhere(['like', 'noi_dung_2', $this->noi_dung_2])
            ->andFilterWhere(['like', 'phan_3', $this->phan_3])
            ->andFilterWhere(['like', 'noi_dung_3', $this->noi_dung_3]);

        return $dataProvider;
    }
}
