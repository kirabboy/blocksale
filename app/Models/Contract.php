<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Contract
 * 
 * @property int $id
 * @property int $id_room
 * @property int $name
 * @property int $type
 * @property Carbon $time_start
 * @property Carbon $time_end
 * @property Carbon $time_charge
 * @property int $is_earnest
 * @property float|null $amount_is_earnest
 * @property string $note
 * @property int $status
 * @property Carbon $updated_at
 * @property Carbon $created_at
 *
 * @package App\Models
 */
class Contract extends Model
{
	protected $table = 'contract';

	protected $casts = [
		'id_room' => 'int',
		'name' => 'int',
		'type' => 'int',
		'is_earnest' => 'int',
		'amount_is_earnest' => 'float',
		'status' => 'int'
	];

	protected $dates = [
		'time_start',
		'time_end',
		'time_charge'
	];

	protected $fillable = [
		'id_room',
		'name',
		'type',
		'time_start',
		'time_end',
		'time_charge',
		'is_earnest',
		'amount_is_earnest',
		'note',
		'status'
	];
}
