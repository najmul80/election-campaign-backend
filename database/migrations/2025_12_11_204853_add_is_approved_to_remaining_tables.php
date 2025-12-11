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
        Schema::table('remaining_tables', function (Blueprint $table) {
             Schema::table('videos', function (Blueprint $table) {
                    $table->boolean('is_approved')->default(false);
                });

                // উক্তি টেবিল
                Schema::table('quotes', function (Blueprint $table) {
                    // যদি is_active থাকে, সেটাকেই is_approved হিসেবে ব্যবহার করতে পারেন, 
                    // অথবা নতুন করে is_approved দিতে পারেন। আমরা নতুন দিচ্ছি কনফিউশন এড়াতে।
                    $table->boolean('is_approved')->default(false);
                });

                // ইশতেহার টেবিল
                Schema::table('manifestos', function (Blueprint $table) {
                    $table->boolean('is_approved')->default(false);
                });
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('remaining_tables', function (Blueprint $table) {
            //
        });
    }
};
