<?php namespace Zakir7dipu\Slider\Controllers;

use Backend\Classes\Controller;
use BackendMenu;

class BannerSliderController extends Controller
{
    public $implement = [        'Backend\Behaviors\ListController',        'Backend\Behaviors\FormController'    ];

    public $listConfig = 'config_list.yaml';
    public $formConfig = 'config_form.yaml';

    public $requiredPermissions = [
        'banner_slider_access'
    ];

    public function __construct()
    {
        parent::__construct();
        BackendMenu::setContext('Zakir7dipu.Slider', 'main-menu-item');
    }
}
