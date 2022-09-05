<?php namespace Zakir7dipu\Management\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class ManagementController extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController'    ];
    
    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';

    public $requiredPermissions = [
        'management_access' 
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Zakir7dipu.Management', 'main-menu-item');
    }
}
