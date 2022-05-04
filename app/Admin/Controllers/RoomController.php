<?php

namespace App\Admin\Controllers;

use App\Models\Room;
use App\Models\Building;
use Illuminate\Http\Request;
use App\Admin\Requests\RoomRequest;
use App\Http\Controllers\Controller;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        //
        $building = Building::whereId($request->building_id)->first();
        $floor_id = $request->floor_id;
        $floors = $building->floor()->get();
        return view('admin.room.modal.create_room', compact('building', 'floors', 'floor_id'))->render();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(RoomRequest $request)
    {
        //
        $room = Room::create($request->all());
        return view('admin.room.include.room_unit', compact('room'));
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
        $room = Room::find($id);
        $contracts = $room->contract();
        $html_room_contract_history = view('admin.room.include.room_contract_history', compact('contracts'))->render();
        $html_service_detail = '';
        $current_contract = $contracts->whereType(1)->whereStatus(1)->with('contractinfo')->first();
        if($current_contract){
            $html_contract = view('admin.contract.include.show_quickly', compact('current_contract'))->render();
            $html_service_detail = view('admin.service_detail.show', compact('current_contract'))->render();
        }else{
            $html_contract = view('admin.contract.include.empty', compact('room'))->render();
        }
        $contracts = $room->contract();
        $current_contract_earnest = $contracts->whereType(2)->whereStatus(1)->with('contractinfo')->with('customers')->first();
        if($current_contract_earnest){
            $html_contract_earnest = view('admin.contract_earnest.include.show_quickly', compact('current_contract_earnest','contracts'))->render();
        }else{
            $html_contract_earnest = view('admin.contract_earnest.include.empty', compact('room'))->render();
        }
        $html_room =  view('admin.room.show', compact('room','current_contract'))->render();
        return response()->json(['html_room'=>$html_room, 'html_contract'=>$html_contract,
        'html_room_contract_history' => $html_room_contract_history, 'html_contract_earnest'=>$html_contract_earnest,
        'html_service_detail' => $html_service_detail]);
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
