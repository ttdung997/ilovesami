<?php

namespace frontend\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use frontend\models\GiangVienThongTin;

/**
 * GiangVienThongTinSearch represents the model behind the search form about `frontend\models\GiangVienThongTin`.
 */
class GiangVienThongTinSearch extends GiangVienThongTin
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'anh_minh_hoa'], 'integer'],
            [['ten', 'mon_hoc', 'huong_nghien_cuu', 'ngay_lap'], 'safe'],
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
        $query = GiangVienThongTin::find();

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
            'anh_minh_hoa' => $this->anh_minh_hoa,
            'ngay_lap' => $this->ngay_lap,
        ]);

        $query->andFilterWhere(['like', 'ten', $this->ten])
            ->andFilterWhere(['like', 'mon_hoc', $this->mon_hoc])
            ->andFilterWhere(['like', 'huong_nghien_cuu', $this->huong_nghien_cuu]);

        return $dataProvider;
    }
}
