<?php namespace Zakir7dipu\Management\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableUpdateZakir7dipuManagementTeam extends Migration
{
    public function up()
    {
        Schema::table('zakir7dipu_management_team', function($table)
        {
            $table->string('company', 255)->nullable();
        });
    }
    
    public function down()
    {
        Schema::table('zakir7dipu_management_team', function($table)
        {
            $table->dropColumn('company');
        });
    }
}
