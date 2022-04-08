@extends('layouts.app')

@section('content')
    <div class="p-3">
        <div class="container">
            {{--<div class="row mb-3 text-center">
                <div class="col-lg-3">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3 bg-primary text-white">
                            <h4 class="my-0 fw-normal">Total Staff</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">{{$allEmployees ->count()}}<small class="text-muted fw-light"> Employees</small></h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3">
                            <h4 class="my-0 fw-normal">Late</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">{{$onTimeEmps ->count()}}<small class="text-muted fw-light"> Employees</small></h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3">
                            <h4 class="my-0 fw-normal">Early Close</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">{{$allEmployees ->count()}}<small class="text-muted fw-light"> Employees</small></h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="card mb-4 rounded-3 shadow-sm">
                        <div class="card-header py-3">
                            <h4 class="my-0 fw-normal">Overtime</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">{{$allEmployees ->count()}}<small class="text-muted fw-light"> Employees</small></h1>
                        </div>
                    </div>
                </div>
            </div>--}}
            <div class="row my-5">
                <div class="col-lg-12">
                    <div class="card shadow">
                        <div class="card-header bg-success d-flex justify-content-between align-items-center">
                            <h3 class="text-light">Manage Employees</h3>
                        </div>
                        <div class="card-body" id="show_all_employees">
                            @if ($allEmployees ->count() > 0)
                                <table class="table table-striped table-sm text-center">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Fullname</th>
                                            <th>Email</th>
                                            <th>Phone Number</th>
                                            <th>Gender</th>
                                            <th>Designation</th>
                                            <th>Time In</th>
                                            <th>T/I Remarks</th>
                                            <th>Time Out</th>
                                            <th>T/O Remarks</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach ($allEmployees as $employee)
                                        <tr>
                                            <td>{{$employee->id}}</td>
                                            <td>{{$employee->firstname." ".$employee->lastname}}</td>
                                            <td>{{$employee->email}}</td>
                                            <td>{{$employee->phone}}</td>
                                            <td>{{$employee->gender}}</td>
                                            <td>{{$employee->designation}}</td>
                                            <td>{{$employee->timein}}</td>
                                            <td> @if (date('H:i', strtotime($employee->timein)) < date('H:i',strtotime('8:10')))
                                                On time
                                            @else
                                                Late
                                            @endif</td>
                                            <td>{{$employee->timeout}}</td>
                                            <td> @if (date('H:i', strtotime($employee->timeout)) < date('H:i',strtotime('18:00')))
                                                Early Clockout
                                            @else
                                                Overtime
                                            @endif
                                        </td>
                                        </tr>
                                    @endforeach
                                </table>

                            @else
                                No record found
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
