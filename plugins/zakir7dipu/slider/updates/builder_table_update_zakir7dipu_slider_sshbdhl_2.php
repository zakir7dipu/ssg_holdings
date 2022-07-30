<?php namespace Zakir7dipu\Slider\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableUpdateZakir7dipuSliderSshbdhl2 extends Migration
{
    public function up()
    {
        Schema::table('zakir7dipu_slider_sshbdhl', function($table)
        {
            $table->string('name', 255)->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('zakir7dipu_slider_sshbdhl', function($table)
        {
            $table->dropColumn('name');
        });
    }
}
