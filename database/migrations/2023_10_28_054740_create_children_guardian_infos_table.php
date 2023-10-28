<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('children_guardian_infos', function (Blueprint $table) {
            $table->id();
            $table->string('person_name');
            $table->string('relation');
            $table->string('contact_no');
            $table->unsignedBigInteger('children_id')->nullable();
            $table->foreign('children_id', 'children_fk_7090456')->references('id')->on('children_infos');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('children_guardian_infos');
    }
};
