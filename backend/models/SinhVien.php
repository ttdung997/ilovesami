<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "sinh_vien".
 *
 * @property integer $id
 * @property string $ten
 * @property string $tieu_de
 * @property string $anh_minh_hoa
 * @property string $gioi_thieu
 * @property string $phan_1
 * @property string $noi_dung_1
 * @property string $phan_2
 * @property string $noi_dung_2
 * @property string $phan_3
 * @property string $noi_dung_3
 * @property string $ngay_lap
 */
class SinhVien extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sinh_vien';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ten', 'tieu_de', 'gioi_thieu', 'phan_1', 'noi_dung_1'], 'required'],
            [['tieu_de', 'anh_minh_hoa', 'gioi_thieu', 'phan_1', 'noi_dung_1', 'phan_2', 'noi_dung_2', 'phan_3', 'noi_dung_3'], 'string'],
            [['ngay_lap'], 'safe'],
            [['ten'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Ten',
            'tieu_de' => 'Tieu De',
            'anh_minh_hoa' => 'Anh Minh Hoa',
            'gioi_thieu' => 'Gioi Thieu',
            'phan_1' => 'Phan 1',
            'noi_dung_1' => 'Noi Dung 1',
            'phan_2' => 'Phan 2',
            'noi_dung_2' => 'Noi Dung 2',
            'phan_3' => 'Phan 3',
            'noi_dung_3' => 'Noi Dung 3',
            'ngay_lap' => 'Ngay Lap',
        ];
    }
}
