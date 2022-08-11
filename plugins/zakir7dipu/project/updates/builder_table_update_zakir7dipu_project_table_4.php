<?php namespace Zakir7dipu\Project\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableUpdateZakir7dipuProjectTable4 extends Migration
{
    public function up()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->integer('basement_number')->default(10)->change();
        });
    }
    
    public function down()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->integer('basement_number')->default(null)->change();
        });
    }
}
