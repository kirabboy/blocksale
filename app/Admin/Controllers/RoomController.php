<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Room;
use App\Models\Building;

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
    public function store(Request $request)
    {
        //
        $room = Room::create([
            'code' => $request->code,
            'name' => $request->name,
            'building_id' => $request->building_id,
            'floor_id' => $request->floor_id,
            'type' => $request->type,
            'purpose' => $request->purpose,
            'acreage' => $request->acreage,
            'price' => $request->price,
            'note' => $request->note,
        ]);
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
        $current_contract = $contracts->whereStatus(2)->first();
        if($current_contract){
            $html_contract = view('admin.contract.include.show_quickly')->render();
        }else{
            $html_contract = view('admin.contract.include.empty')->render();
        }
        $html_room =  view('admin.room.show', compact('room','current_contract'))->render();
        return [$html_room, $html_contract];
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
