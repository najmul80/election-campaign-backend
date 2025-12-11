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
        Schema::create('settings', function (Blueprint $table) {
            $table->id();
            $table->string('site_name')->default('দাড়িপাল্লা মার্কা');
            $table->string('logo')->nullable();
            $table->string('favicon')->nullable();
            $table->string('contact_phone')->nullable();
            $table->string('contact_email')->nullable();
            $table->string('contact_address')->nullable();
            $table->text('meta_description')->nullable();
            $table->text('footer_text')->nullable();
            $table->json('social_links')->nullable(); // Facebook, Twitter links
            $table->string('popup_image')->nullable(); // পপ-আপ ছবি
            $table->boolean('is_popup_active')->default(true); 
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('settings');
    }
};
