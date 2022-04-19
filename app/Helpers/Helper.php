<?php

if (!function_exists('bgStatus')) {
    function bgStatus($status = 0)
    {
        if($status == 0){
            return 'bg-danger';
        }else if($status == 1){
            return 'bg-warning';
        }else if($status == 2){
            return 'bg-success';
        }else if($status == 3){
            return 'bg-secondary';
        }
    }
}
if (!function_exists('badgeStatus')) {
    function badgeStatus($status = 0)
    {
        if($status == 0){
            return 'danger';
        }else if($status == 1){
            return 'warning';
        }else if($status == 2){
            return 'success';
        }else if($status == 3){
            return 'secondary';
        }
    }
}

if (!function_exists('roomStatus')) {
    function roomStatus($status = 0)
    {
        if($status == 0){
            return 'Trống';
        }else if($status == 1){
            return 'Đã cọc';
        }else if($status == 2){
            return 'Đã thuê';
        }else if($status == 3){
            return 'Tạm ngưng';
        }
    }
    if (!function_exists('permissionOfRole')) {
        function permissionOfRole($data){
            $str = '';
            foreach ($data as $value){
                $str .= '<span class="badge bg-primary me-1">'.$value->name.'</span>';
            }
            return $str;
        }
    }
    if (!function_exists('checkRoleHasPermissions')) {
        function checkRoleHasPermissions($role, $permissionName){
            if($role->hasPermissionTo($permissionName)){
                return 'selected';
            }
        }
    }
    if (!function_exists('showAdminWithRoles')) {
        function showAdminWithRoles($data){
            $str = '';
            foreach ($data as $value){
                $str .= '<span class="badge bg-primary me-1">'.$value->name.'</span>';
            }
            return $str;
        }
    }
    if (!function_exists('selected')) {
        function selected($value1, $value2){
            if($value1 == $value2){
                return 'selected';
            }
            return;
        }
    }
    
    if (!function_exists('checked')) {
        function checked($value1, $value2){
            if($value1 == $value2){
                return 'checked';
            }
            return;
        }
    }
    if (!function_exists('checkAdminHasRole')) {
        function checkAdminHasRole($admin, $RoleName){
            if($admin->hasRole($RoleName)){
                return 'selected';
            }
        }
    }
}