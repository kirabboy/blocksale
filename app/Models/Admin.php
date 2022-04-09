<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;
use Illuminate\Foundation\Auth\User as Authenticatable;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Admin
 * 
 * @property int $id
 * @property string $username
 * @property string $password
 * @property Carbon $updated_at
 * @property Carbon $created_at
 *
 * @package App\Models
 */
class Admin extends Authenticatable
{
	protected $table = 'admins';

	protected $hidden = [
		'password'
	];

	protected $fillable = [
		'username',
		'password'
	];

	public function admin_info(){
        return $this->hasOne(AdminInfo::class, 'admin_id', 'id');
    }
}
