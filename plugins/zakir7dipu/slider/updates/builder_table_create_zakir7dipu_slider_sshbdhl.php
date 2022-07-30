<?php namespace Zakir7dipu\Slider\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableCreateZakir7dipuSliderSshbdhl extends Migration
{
    public function up()
    {
        Schema::create('zakir7dipu_slider_sshbdhl', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('image', 255)->nullable();
            $table->timestamp('deleted_at')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('zakir7dipu_slider_sshbdhl');
    }
}
