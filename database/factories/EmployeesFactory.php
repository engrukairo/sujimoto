<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Employees;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class EmployeesFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    protected $model = \App\Models\Employees::class;
    public function definition()
    {
        $timeIn = now()->endOfDay()->subHours(17);
        $timeInMax = now()->endOfDay()->subHours(15);
        return [
            'firstname' => $this->faker->title()." ".$this->faker->firstName(20),
            'lastname' => $this->faker->lastName(20),
            'email' => $this->faker->email(20),
            'phone' => $this->faker->phoneNumber(11),
            'gender' => 'Male|Female',
            'designation' => $this->faker->jobTitle(),
            'timein' => $this->faker->time($format = 'H:i', $max = 'now'),
            'timeout' => $this->faker->time($format = 'H:i', $max = 'now'),
            'address' => $this->faker->address()
        ];
    }
}
