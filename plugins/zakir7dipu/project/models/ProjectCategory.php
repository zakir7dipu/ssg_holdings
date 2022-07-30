<?php namespace Zakir7dipu\Project\Models;

use Model;

/**
 * Model
 */
class ProjectCategory extends Model
{
    use \Winter\Storm\Database\Traits\Validation;

    use \Winter\Storm\Database\Traits\SoftDelete;

    protected $dates = ['deleted_at'];


    /**
     * @var string The database table used by the model.
     */
    public $table = 'zakir7dipu_project_category';

    /**
     * @var array Validation rules
     */
    public $rules = [
    ];

    public $attachOne = [
        'page_banner' => 'System\Models\File'
    ];
}
