<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Customer;
use App\Admin\Requests\CustomerRequest;

class CustomerManagerController extends Controller
{
    //
    public function index(){
        $customers = Customer::select('id', 'code', 'fullname', 'phone', 'email', 'identification_number')->get();
        return view('admin.customer.index', compact('customers'));
    }

    public function create(){
        $gender = config('custom.customer.gender');

        return view('admin.customer.modal.create', ['gender' => $gender])->render();
    }

    public function store(CustomerRequest $request){
        $data = $request->except('_token');
        $customer = Customer::create($data);
        $customer = (object) $customer->only('id', 'code', 'fullname', 'phone', 'email', 'identification_number');
        $result = view('admin.customer.row', ['customer' => $customer])->render();
        return response()->json([
            'message' => 'Thêm khách hàng thành công',
            'data' => $result
        ]);
    }

    public function edit(Customer $customer){
        $gender = config('custom.customer.gender');

        return view('admin.customer.modal.edit', ['customer' => $customer, 'gender' => $gender])->render();
    }

    public function update(CustomerRequest $request){
        $data = $request->except('_token', 'id', '_method');
        
        $customer = Customer::find($request->id);
        $customer->update($data);
        $customer = (object) $customer->only('id', 'code', 'fullname', 'phone', 'email', 'identification_number');
        $result = view('admin.customer.row', ['customer' => $customer])->render();
        return response()->json([
            'message' => 'Sửa khách hàng thành công',
            'data' => $result
        ]);
    }
    public function delete(Request $request, Customer $customer){
        $customer->delete();
        if($request->ajax()){
            return response()->json(['status' => 'success', 'id' => $customer->id]);
        }
    }

    public function multiple(Request $request){
        $customers = Customer::whereIn('id', $request->id);
        $customers->delete();
        return back()->with('success', 'Thực hiện thành công');
    }
}
