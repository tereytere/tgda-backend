<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('author_theme', function (Blueprint $table) {
            $table->foreignUuid('author_id')->references('id')->on('authors')->onDelete('cascade');
            $table->foreignUuid('theme_id')->references('id')->on('themes')->onDelete('cascade');
            $table->timestamps();
            // Composite primary key
            $table->primary(['author_id', 'theme_id']);
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('author_theme');
    }
};
