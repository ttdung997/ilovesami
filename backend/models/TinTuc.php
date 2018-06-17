<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tin_tuc".
 *
 * @property integer $id
 * @property integer $tac_gia_id
 * @property string $tieu_de
 * @property string $anh_minh_hoa
 * @property string $gioi_thieu
 * @property string $phan_1
 * @property string $noi_dung_1
 * @property string $phan_2
 * @property string $noi_dung_2
 * @property string $phan_3
 * @property string $noi_dung_3
 * @property string $phan_4
 * @property string $noi_dung_4
 * @property string $ngay_lap
 */
class TinTuc extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'tin_tuc';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tac_gia_id', 'tieu_de', 'gioi_thieu', 'phan_1', 'noi_dung_1'], 'required'],
            [['tac_gia_id'], 'integer'],
            [['tieu_de', 'anh_minh_hoa', 'gioi_thieu', 'phan_1', 'noi_dung_1', 'phan_2', 'noi_dung_2', 'phan_3', 'noi_dung_3', 'phan_4', 'noi_dung_4'], 'string'],
            [['ngay_lap'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tac_gia_id' => 'Tac Gia ID',
            'tieu_de' => 'Tieu De',
            'anh_minh_hoa' => 'Anh Minh Hoa',
            'gioi_thieu' => 'Gioi Thieu',
            'phan_1' => 'Phan 1',
            'noi_dung_1' => 'Noi Dung 1',
            'phan_2' => 'Phan 2',
            'noi_dung_2' => 'Noi Dung 2',
            'phan_3' => 'Phan 3',
            'noi_dung_3' => 'Noi Dung 3',
            'phan_4' => 'Phan 4',
            'noi_dung_4' => 'Noi Dung 4',
            'ngay_lap' => 'Ngay Lap',
        ];
    }
}
