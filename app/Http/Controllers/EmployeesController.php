<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Employees;


class EmployeesController extends Controller
{
    //return employees information
    //view = welcome.blade.php
    public function index(){
        $employees = new Employees();
        //$summary = $employees->getEmployeesSummary();
        //$allEmployees = $employees->getAllEmployees();


        //$this->view->summary = $summary[0];
        //$this->view->userrs = $allEmployees;


        $onTimeEmp = $employees->find([
            'conditions' => 'time($format = "H:i", timein) BETWEEN time($format = "H:i", "02:00") AND time($format = "H:i", ?)',
            //'conditions' => 'TIME_FORMAT(timein, "%H:%i") >  TIME_FORMAT("08:00", "%H;%i")'
            'bind' => ["12:30"]
        ]);
        $allEmployees = Employees::all();
        //$empData = ['allEmployees' => $allEmployees,'' => $onTimeEmp];
        return view('welcome')->with('allEmployees', $allEmployees)->with('onTimeEmps', $onTimeEmp);
    }
}
