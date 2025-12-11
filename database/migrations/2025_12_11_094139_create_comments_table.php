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
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            $table->foreignId('blog_id')->constrained()->cascadeOnDelete(); // কোন নিউজে কমেন্ট
            $table->string('name'); // কমেন্টকারীর নাম
            $table->text('message'); // বার্তা
            $table->boolean('is_approved')->default(false); // ডিফল্টভাবে অনুমোদন নেই
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('comments');
    }
};
