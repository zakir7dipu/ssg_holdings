<?php namespace Zakir7dipu\Project\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableUpdateZakir7dipuProjectTable2 extends Migration
{
    public function up()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->integer('apartments_number')->nullable()->unsigned(false)->default(null)->change();
        });
    }
    
    public function down()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->string('apartments_number', 255)->nullable()->unsigned(false)->default(null)->change();
        });
    }
}
