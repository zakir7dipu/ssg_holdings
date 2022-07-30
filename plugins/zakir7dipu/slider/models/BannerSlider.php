<?php namespace Zakir7dipu\Slider\Models;

use Model;

/**
 * Model
 */
class BannerSlider extends Model
{
    use \Winter\Storm\Database\Traits\Validation;

    use \Winter\Storm\Database\Traits\SoftDelete;

    protected $dates = ['deleted_at'];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'zakir7dipu_slider_sshbdhl';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $attachOne = [
        'banner' => 'System\Models\File'
    ];
}
