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
        Schema::table('blogs', function (Blueprint $table) {
        // ডিফল্ট false মানে অটোমেটিক পাবলিশ হবে না
        $table->boolean('is_approved')->default(false)->after('is_published'); 
    });

    // প্রার্থীর জন্য
    Schema::table('candidates', function (Blueprint $table) {
        $table->boolean('is_approved')->default(false)->after('name');
    });

    // গ্যালারির জন্য
    Schema::table('galleries', function (Blueprint $table) {
        $table->boolean('is_approved')->default(false);
    });
    
    // প্রোগ্রামের জন্য
    Schema::table('programs', function (Blueprint $table) {
        $table->boolean('is_approved')->default(false);
    });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tables', function (Blueprint $table) {
            //
        });
    }
};
