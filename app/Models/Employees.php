<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employees extends Model
{
    use HasFactory;
    protected $fillable = [
        'firstname',
        'lastname',
        'gender',
        'email',
        'phone',
        'address',
        'designation',
        'timein',
        'timeout'
    ];

    // public function __construct($employees = ''){
    //     $table = 'employees';
    //     parent::__construct($table);
    // }

    public function getAllEmployees() {
        $employees = new Employees();
        $allEmployees = $employees->find([
            // // 'conditions' => 'deleted = ?',
            // // 'bind' => [0],
            // 'order' => 'id DESC',
            // 'limit' => 10
        ]);
        return $allEmployees;
    }

}
