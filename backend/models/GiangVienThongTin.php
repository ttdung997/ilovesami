<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "giang_vien_thong_tin".
 *
 * @property integer $id
 * @property string $ten
 * @property string $anh_minh_hoa
 * @property string $mon_hoc
 * @property string $huong_nghien_cuu
 * @property string $ngay_lap
 *
 * @property GiangVien $giangVien
 */
class GiangVienThongTin extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'giang_vien_thong_tin';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'ten', 'mon_hoc', 'huong_nghien_cuu'], 'required'],
            [['id'], 'integer'],
            [['ten', 'anh_minh_hoa', 'mon_hoc', 'huong_nghien_cuu'], 'string'],
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
            'ten' => 'Ten',
            'anh_minh_hoa' => 'Anh Minh Hoa',
            'mon_hoc' => 'Mon Hoc',
            'huong_nghien_cuu' => 'Huong Nghien Cuu',
            'ngay_lap' => 'Ngay Lap',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getGiangVien()
    {
        return $this->hasOne(GiangVien::className(), ['id' => 'id']);
    }
}
