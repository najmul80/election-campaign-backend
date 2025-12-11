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
        Schema::create('candidates', function (Blueprint $table) {
            $table->id();
            $table->foreignId('constituency_id')->constrained()->cascadeOnDelete(); // আসনের সাথে লিংক
            $table->string('name');
            $table->boolean('is_approved')->default(false);
            $table->string('photo');
            $table->string('symbol_photo')->nullable(); // মার্কার ছবি
            $table->string('designation')->nullable(); // উদাঃ এমপি পদপ্রার্থী
            $table->string('facebook_url')->nullable();
            $table->json('biography')->nullable();
            $table->text('intro_video_link')->nullable(); // প্রার্থীর পরিচিতি ভিডিও
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('candidates');
    }
};
