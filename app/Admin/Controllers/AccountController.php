<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use App\Models\AdminInfo;
use Illuminate\Support\Facades\Hash;
use Spatie\Permission\Models\Role;
use App\Admin\Requests\AccountRequest;

class AccountController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $admins = Admin::with(['admin_info', 'roles:id,name'])->latest()->get();

        return view('admin.account.index', compact('admins'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $roles = Role::all();
        $gender = config('custom.user.gender');
        return view('admin.account.modal.create_account', ['roles' => $roles, 'gender' => $gender])->render();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AccountRequest $request)
    {
        //
        $data_admin = $request->only('username', 'password');
        $data_admin['password'] = Hash::make($data_admin['password']);
        $admin = Admin::create($data_admin);

        $data_admin_info = $request->only('fullname', 'email', 'phone', 'birthday', 'gender', 'address');

        $admin_info = $admin->admin_info()->create($data_admin_info);
        
        $admin->assignRole($request->role);

        $admin = $admin->load(['admin_info', 'roles:id,name']);

        return view('admin.account.row_account', ['admin' => $admin])->render();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id) {

        $admin = Admin::with(['admin_info', 'roles:id,name'])->findOrFail($id);
        $roles = Role::all();
        $gender = config('custom.user.gender');
        return view('admin.account.modal.edit_account', ['admin' => $admin, 'roles' => $roles, 'gender' => $gender])->render();
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AccountRequest $request, $id)
    {
        //
        $data_admin = $request->only('username');
        if($request->filled('password')){
            $data_admin['password'] = Hash::make($request->password);
        }
        $admin = Admin::findOrFail($id);

        $admin->update($data_admin);

        $data_admin_info = $request->only('fullname', 'email', 'phone', 'birthday', 'gender', 'address');

        $admin_info = $admin->admin_info()->update($data_admin_info);
        
        $admin->syncRoles($request->role);
        $admin = $admin->load(['admin_info', 'roles:id,name']);

        $result = view('admin.account.row_account', ['admin' => $admin])->render();
        return response()->json([
            'message' => 'Thực hiện thành công',
            'data' => $result
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        //
        $admin = Admin::findOrFail($id);
        $admin->delete();
        if($request->ajax()){
            return response()->json(['status' => 'success', 'id' => $admin->id]);
        }
    }
}
