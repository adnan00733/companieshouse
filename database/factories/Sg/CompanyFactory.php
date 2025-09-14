<?php

namespace Database\Factories\Sg;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\\Models\\Sg\\Company>
 */
class CompanyFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $regNum = strtoupper(Str::random(9));
        static $id = 81;
        return [
            'id' => $id++,
            'slug' => Str::slug($this->faker->company() . '-' . $regNum),
            'name' => strtoupper($this->faker->company()),
            'former_names' => $this->faker->boolean(20) ? strtoupper($this->faker->company()) : null,
            'registration_number' => $regNum,
            'address' => $this->faker->address(),
            'created_at' => $this->faker->dateTimeBetween('-5 years', 'now'),
            'updated_at' => now(),
        ];
    }
}
