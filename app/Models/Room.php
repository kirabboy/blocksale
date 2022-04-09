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
	protected $table = 'room';
	public $incrementing = false;

	protected $casts = [
		'id' => 'int',
		'id_floor' => 'int',
		'type' => 'int',
		'purpose' => 'int',
		'acreage' => 'int'
	];

	protected $fillable = [
		'id',
		'code',
		'name',
		'id_floor',
		'type',
		'purpose',
		'acreage',
		'note'
	];
}
