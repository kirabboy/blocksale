<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contract;
use App\Models\Room;
use App\Models\ContractInfo;
use App\Models\ContractCustomer;

class ContractController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('admin.contract.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
        $room = Room::whereId($request->room_id)->first();
        if($room->contract()->whereStatus(1)->first()){
            return false;
        }
        return view('admin.contract.modal.create_contract', compact('room'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $room = Room::whereId($request->room_id)->first();
        if(!$request->customer_ids){
            return response()->json(['status' => false, 'message' => 'Vui lòng chọn khách hàng đại diện' ]);
        } 
        if($room->status == 2){
            return response()->json(['status' => false, 'message' => 'Hợp đồng còn hiệu lực' ]);
        }
        $contract = Contract::create([
            'id_room' => $request->room_id,
            'code' => $request->code,
            'name' => $request->name,
            'type' => $request->type,
            'time_start' => $request->time_start,
            'time_end' => $request->time_end,
            'time_charge' =>$request->time_charge,
            'is_earnest' => $request->is_earnest,
            'note' => $request->note, 
        ]);
        $contract_info = ContractInfo::create([
            'id_contract' => $contract->id,
            'amount_earnest' => ($request->is_earnest == 1 ) ? $request->amount_earnest : 0,
            'price_room' => $request->price_room,
            'price_electric' => $request->price_electric,
            'price_water' => $request->price_water,
            'type_water' => $request->type_water,//1: tháng, 2: m3
            'price_service' => $request->price_service,
            'number_room' => $request->number_room,
            'number_electric' => $request->number_electric,
            'number_water' => $request->number_water,
            'number_service' => $request->number_service,
            'note_room' => $request->note_room,
            'note_electric' => $request->note_electric,
            'note_water' => $request->note_water,
            'note_service' => $request->note_service,
        ]);
        foreach($request->customer_ids as $id){
            ContractCustomer::create([
                'id_contract' =>$contract->id,
                'is_representative' => ($id == $request->is_representative) ? 1:0,
                'id_customer' => $id,
                'note' => $_POST['note'.$id],
            ]);
        }
        Room::whereId($request->room_id)->update(['status'=>2]);
        $contracts = $room->contract();
        $current_contract = $contract;
        $html_contract = view('admin.contract.include.show_quickly', compact('current_contract'))->render();
        $html_room =  view('admin.room.show', compact('room','current_contract'))->render();
        $html_room_contract_history = view('admin.room.include.room_contract_history', compact('contracts'))->render();
        return response()->json(['status' => true, 'message' => 'Thêm hợp đồng thành công','html_room' => $html_room, 'html_contract' => $html_contract, 'html_contract_history' => $html_room_contract_history]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
