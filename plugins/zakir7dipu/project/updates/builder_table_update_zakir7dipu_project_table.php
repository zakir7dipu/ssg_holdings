<?php namespace Zakir7dipu\Project\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableUpdateZakir7dipuProjectTable extends Migration
{
    public function up()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->bigInteger('category_id');
            $table->timestamp('deleted_at')->nullable();
            $table->timestamp('created_at')->nullable();
            $table->timestamp('updated_at')->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('zakir7dipu_project_table', function($table)
        {
            $table->dropColumn('category_id');
            $table->dropColumn('deleted_at');
            $table->dropColumn('created_at');
            $table->dropColumn('updated_at');
        });
    }
}
