<?php namespace Zakir7dipu\Management\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableCreateZakir7dipuManagementTeam extends Migration
{
    public function up()
    {
        Schema::create('zakir7dipu_management_team', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('name', 255);
            $table->string('designation', 255);
            $table->longText('about')->nullable();
            $table->timestamp('deleted_at')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('zakir7dipu_management_team');
    }
}
