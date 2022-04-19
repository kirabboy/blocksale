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
}