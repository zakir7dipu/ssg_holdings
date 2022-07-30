<?php namespace Zakir7dipu\Project\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableCreateZakir7dipuProjectCategory extends Migration
{
    public function up()
    {
        Schema::create('zakir7dipu_project_category', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('name', 255);
            $table->timestamp('deleted_at')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('zakir7dipu_project_category');
    }
}
