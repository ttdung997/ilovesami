<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "giang_vien".
 *
 * @property integer $id
 * @property integer $giang_vien_id
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
 *
 * @property GiangVienThongTin $id0
 */
class GiangVien extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'giang_vien';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['giang_vien_id', 'ten', 'tieu_de', 'gioi_thieu', 'phan_1', 'noi_dung_1'], 'required'],
            [['giang_vien_id'], 'integer'],
            [['ten', 'tieu_de', 'anh_minh_hoa', 'gioi_thieu', 'phan_1', 'noi_dung_1', 'phan_2', 'noi_dung_2', 'phan_3', 'noi_dung_3'], 'string'],
            [['ngay_lap'], 'safe'],
            [['id'], 'exist', 'skipOnError' => true, 'targetClass' => GiangVienThongTin::className(), 'targetAttribute' => ['id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'giang_vien_id' => 'giảng viên ID',
            'ten' => 'Họ và tẻn',
            'tieu_de' => 'Tiêu đề',
            'anh_minh_hoa' => 'Ảnh minh họa',
            'gioi_thieu' => 'Giới thiệu',
            'phan_1' => 'Phần 1',
            'noi_dung_1' => 'Nội dung1',
            'phan_2' => 'Phần 2',
            'noi_dung_2' => 'Nội dung 2',
            'phan_3' => 'Phần 3',
            'noi_dung_3' => 'Nội dung 3',
            'ngay_lap' => 'Ngày lập',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getId0()
    {
        return $this->hasOne(GiangVienThongTin::className(), ['id' => 'id']);
    }
}
