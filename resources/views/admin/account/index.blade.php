@extends('admin.layouts.master')
@section('title')
    Quản lý tài khoản Admin
@endsection
@push('css')
    <link rel="stylesheet" href="//cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="{{ asset('public/admin/css/account.css') }}">
@endpush
@section('content')
    <div class="content-wrapper">
        <div class="page-header d-flex justify-content-between align-items-center">
            <h3 class="page-title"><i class="fas fa-laptop"></i>Quản lý tài khoản Admin</h3>
            <div class="page-header-tool">
                <button class="btn btn-cyan" id="btn-create-account" data-url="{{ route('quan-ly-admin.create') }}">
                    <i class="fas fa-plus-circle"></i>
                    Thêm tài khoản
                </button>
            </div>
        </div>
        <div class="row p-2" >
            <table id="table-account" class="table">
                <thead>
                    <th>
                        Tên tài khoản
                    </th>
                    <th>
                        Họ và tên
                    </th>
                    <th>
                        Email
                    </th>
                    <th>
                        Số điện thoại
                    </th>
                    <th>
                        Giới tính
                    </th>
                    <th>
                        Ngày sinh
                    </th>
                    <th>
                        Địa chỉ
                    </th>
                </thead>
                <tbody id="after-submit">
                    @foreach ($admins as $admin)
                        <tr>
                            <td>
                                {{ $admin->username }}
                            </td>
                            <td>
                                {{ $admin->admin_info->fullname }}
                            </td>
                            <td>
                                {{ $admin->admin_info->email }}
                            </td>
                            <td>
                                {{ $admin->admin_info->phone }}
                            </td>
                            <td>
                                @if ($admin->admin_info->gender == 1)
                                    Nam
                                @else
                                    Nữ
                                @endif
                            </td>
                            <td>
                                {{ $admin->admin_info->birthday }}
                            </td>
                            <td>
                                {{ $admin->admin_info->address }}
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
@push('script')
    <script src="{{ asset('public/admin/js/account.js') }}"></script>
    <script src="//cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
@endpush
