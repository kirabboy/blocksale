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