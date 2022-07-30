<?php namespace Zakir7dipu\Project\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableUpdateZakir7dipuProjectTable3 extends Migration
{
    public function up()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->boolean('feature_project')->default(false);
        });
    }
    
    public function down()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->dropColumn('feature_project');
        });
    }
}
