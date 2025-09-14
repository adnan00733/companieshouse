<?php

namespace Database\Factories\Mx;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class CompanyFactory extends Factory
{
    public function definition(): array
    {
        static $id = 101;
        return [
            'id' => $id++,
            'state_id' => $this->faker->numberBetween(1, 32),
            'slug' => Str::slug($this->faker->company() . '-' . Str::random(6)),
            'name' => strtoupper($this->faker->company()),
            'brand_name' => $this->faker->boolean(50) ? strtoupper($this->faker->company()) : null,
            'address' => $this->faker->address(),
            'created_at' => $this->faker->dateTimeBetween('-5 years', 'now'),
            'updated_at' => now(),
        ];
    }
}
