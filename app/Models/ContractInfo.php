<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ContractInfo
 * 
 * @property int $id
 * @property int $id_contract
 * @property int $amount_earnest
 * @property int $price_room
 * @property float $price_electric
 * @property float $price_water
 * @property Carbon $updated_at
 * @property Carbon $created_at
 *
 * @package App\Models
 */
class ContractInfo extends Model
{
	protected $table = 'contract_info';

	protected $casts = [
		'id_contract' => 'int',
		'amount_earnest' => 'int',
		'price_room' => 'int',
		'price_electric' => 'float',
		'price_water' => 'float'
	];

	protected $fillable = [
		'id_contract',
		'amount_earnest',
		'price_room',
		'price_electric',
		'price_water'
	];
}
