<?php namespace Zakir7dipu\Management\Models;

use Model;

/**
 * Model
 */
class Managements extends Model
{
    use \Winter\Storm\Database\Traits\Validation;
    
    use \Winter\Storm\Database\Traits\SoftDelete;

    protected $dates = ['deleted_at'];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'zakir7dipu_management_team';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $attachOne = [
        'management_image' => 'System\Models\File'
    ];
}
