<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Room
 * 
 * @property int $id
 * @property string $code
 * @property string $name
 * @property int $id_floor
 * @property int $type
 * @property int $purpose
 * @property int $acreage
 * @property string $note
 * @property Carbon $updated_at
 * @property Carbon $created_at
 *
 * @package App\Models
 */
class Room extends Model
{
	protected $table = 'rooms';
	public $incrementing = false;

	protected $casts = [
		'id' => 'int',
		'floor_id' => 'int',
		'type' => 'int',
		'purpose' => 'int',
		'acreage' => 'int'
	];

	protected $fillable = [
		'id',
		'code',
		'building_id',
		'name',
		'floor_id',
		'type',
		'purpose',
		'acreage',
		'price',
		'note',
		'status'
	];

	
	public function contract()
	{
		return $this->hasMany(Contract::class,'id_room', 'id');
	}
}
