<?php namespace Zakir7dipu\Slider\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableUpdateZakir7dipuSliderSshbdhl extends Migration
{
    public function up()
    {
        Schema::table('zakir7dipu_slider_sshbdhl', function($table)
        {
            $table->dropColumn('image');
        });
    }
    
    public function down()
    {
        Schema::table('zakir7dipu_slider_sshbdhl', function($table)
        {
            $table->string('image', 255)->nullable();
        });
    }
}
