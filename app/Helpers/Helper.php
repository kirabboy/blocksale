<?php

if (!function_exists('bgStatus')) {
    function bgStatus($status = 0)
    {
        if($status == 0){
            return 'bg-danger text-light';
        }else if($status == 1){
            return 'bg-warning text-light';
        }else if($status == 2){
            return 'bg-success text-light';
        }else if($status == 3){
            return 'bg-secondary text-light';
        }
    }
}

if (!function_exists('bgStatusOutline')) {
    function bgStatusOutline($status = 0)
    {
        if($status == 0){
            return 'border border-danger bg-light text-dark';
        }else if($status == 1){
            return 'border border-warning bg-light text-dark';
        }else if($status == 2){
            return 'border border-success bg-light text-dark';
        }else if($status == 3){
            return 'border border-secondary bg-light text-dark';
        }
    }
}