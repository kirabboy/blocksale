<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Building
 * 
 * @property int $id
 * @property string $code
 * @property string $name
 * @property string $adress
 * @property string $owner
 * @property string $owner_phone
 * @property string $owner_email
 * @property int|null $note
 * @property string|null $introduce
 * @property Carbon $updated_at
 * @property Carbon $created_at
 *
 * @package App\Models
 */
class Building extends Model
{
	protected $table = 'buildings';

	protected $casts = [
		'note' => 'int'
	];

	protected $fillable = [
		'code',
		'name',
		'address',
		'owner',
		'owner_phone',
		'number_floor',
		'owner_email',
		'note',
		'introduce'
	];

	public function floor(){
		return $this->hasMany(Floor::class, 'building_id');
	}
	public function room(){
		return $this->hasMany(Room::class, 'building_id');
	}
}
