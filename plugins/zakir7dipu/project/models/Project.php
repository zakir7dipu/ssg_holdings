<?php namespace Zakir7dipu\Project\Models;

use Model;

/**
 * Model
 */
class Project extends Model
{
    use \Winter\Storm\Database\Traits\Validation;

    use \Winter\Storm\Database\Traits\SoftDelete;

    protected $dates = ['deleted_at'];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'zakir7dipu_project_table';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $attachOne = [
        'project_banner' => 'System\Models\File',
        'project_thumb' => 'System\Models\File',
        'left_side' => 'System\Models\File',
        'right_side' => 'System\Models\File'
    ];

    public $attachMany  = [
        'gallery' => 'System\Models\File'
    ];
}
