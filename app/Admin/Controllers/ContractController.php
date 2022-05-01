<?php

namespace App\Admin\Controllers;

use App\Models\Room;
use App\Models\Contract;
use App\Models\ContractInfo;
use Illuminate\Http\Request;
use App\Models\ContractCustomer;
use App\Http\Controllers\Controller;
use App\Admin\Requests\ContractRequest;

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
        if($room->contract()->whereType(1)->whereStatus(1)->first()){
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
    public function store(ContractRequest $request)
    {
        //
        $room = Room::whereId($request->room_id)->first();
        $contract = Contract::create( $request->all());
        $request->id_contract = $contract->id;
        $request->amount_earnest = ($request->is_earnest == 1 ) ? $request->amount_earnest : 0;
        $contract_info = ContractInfo::create(
            $request->all()
        );
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
        return response()->json(['message' => 'Thêm hợp đồng thành công','html_room' => $html_room, 'html_contract' => $html_contract, 'html_contract_history' => $html_room_contract_history]);
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
