<?php namespace Zakir7dipu\Project\Updates;

use Schema;
use Winter\Storm\Database\Updates\Migration;

class BuilderTableCreateZakir7dipuProjectTable extends Migration
{
    public function up()
    {
        Schema::create('zakir7dipu_project_table', function($table)
        {
            $table->engine = 'InnoDB';
            $table->increments('id')->unsigned();
            $table->string('name', 255);
            $table->string('address', 255)->nullable();
            $table->string('sub_title', 255)->nullable();
            $table->string('architect_name', 255)->nullable();
            $table->string('land_area', 255)->nullable();
            $table->string('land_orientation', 255)->nullable();
            $table->string('facing', 255)->nullable();
            $table->string('front_road', 255)->nullable();
            $table->string('apartments_number', 255)->nullable();
            $table->string('unit_size', 255)->nullable();
            $table->integer('basement_number')->nullable();
            $table->integer('car_parking')->nullable();
            $table->string('rajuk_approval_no', 255)->nullable();
            $table->longText('feature_amenitie')->nullable();
            $table->longText('map_location', 255)->nullable();
            $table->string('type', 255)->default('Residential');
        });
    }
    
    public function down()
    {
        Schema::dropIfExists('zakir7dipu_project_table');
    }
}
