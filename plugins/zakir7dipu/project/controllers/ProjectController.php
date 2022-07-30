<?php namespace Zakir7dipu\Project\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class ProjectController extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';

    public $requiredPermissions = [
        'project_access' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Zakir7dipu.Project', 'main-menu-item', 'side-menu-item2');
    }
}
