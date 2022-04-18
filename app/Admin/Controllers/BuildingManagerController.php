<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Building;
use App\Models\Admin;
use App\Admin\Requests\BuildingRequest;
class BuildingManagerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $buildings = Building::select('id', 'name', 'number_floor', 'address', 'owner')
        ->with('room:building_id,purpose,status')->latest()->get();
        // dd($buildings);
        //marco dữ liệu
        $buildings = $buildings->map(function($item){
            //nhóm theo trạng thái
            $room = $item->room->countBy('status');
            //đếm phòng đã thuê
            $hired_room = $room->has('2') ? $room->get('2') : 0;
            //Tổng phòng đã thuê
            $total_room = $room->sum();
            //Giá trung bình
            $avg_room = $item->room->avg('purpose') ?? 0;
            
            //trả dữ liệu
            return (object) collect($item)->merge([
                'total_room' => $total_room, 
                'avg_room' => $avg_room,
                'room' => [
                    'hired' => $hired_room, 
                    'empty' => $total_room - $hired_room, 
                    'ratio' => $total_room !=0 ? $hired_room / $total_room * 100 : 0,
                ]
            ]);
        });
        // dd($buildings[0]['name']);
        return view('admin.manager_building.index', compact('buildings'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('admin.manager_building.modal.create_building')->render();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $building = Building::create([
            'code' => $request->code,
            'name' => $request->name,
            'number_floor' => $request->number_floor,
            'owner' => $request->owner,
            'owner_phone' => $request->owner_phone,
            'owner_email' => $request->owner_email,
            'address' => $request->address,
            'note' => $request->note,
            'introduce' => $request->introduce,
        ]);
        for($i = 1; $i <= $building['number_floor']; $i++){
            $building->floor()->create([
                'name' => 'Tầng '.$i,
                'code' => 'TA'.$i
            ]);
        }
        $building = collect($building)->merge([
            'total_room' => 0,
            'avg_room' => 0,
            'room' => [
                'hired' => 0,
                'empty' => 0,
                'ratio' => 0,
            ]
        ]);
        // dd($building);
        return view('admin.manager_building.card_building', ['building' => $building]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Building $building)
    {
        //
        $building = $building->load(['floor' => function($query){
            $query->select('id', 'name', 'building_id');
            $query->with('room:id,name,code,floor_id,building_id,status');
        }]);
        // dd($building);
        $marco = $building->floor->map(function($item) {

            $total = $item->room->count();

            $hired = $item->room->where('status', 2)->count();

            return (object) collect($item)->merge([
                'total' => $total,
                'hired' => $hired,
                'booked' => $item->room->where('status', 1)->count(),
                'empty' => $item->room->whereIn('status', 0)->count(),
                'unactive' => $item->room->where('status', 3)->count(),
                'ratio' => $total !=0 ? $hired/$total * 100 : 0
            ]);
        });
        $building = collect($building->only('id', 'code', 'name', 'floor'))->merge([
            'total' => $marco->sum('total'),
            'hired' => $marco->sum('hired'),
            'booked' => $marco->sum('booked'),
            'empty' => $marco->sum('empty'),
            'unactive' => $marco->sum('unactive'),
            'ratio' => $marco->sum('total') !=0 ? $marco->sum('hired') / $marco->sum('total') * 100 : 0,
            'floor' => $marco
        ]);
        // dd($building);
        return view('admin.manager_building.show', compact('building'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Building $building)
    {
        return view('admin.manager_building.modal.edit_building', compact('building'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(BuildingRequest $request)
    {
        $building = Building::find($request->id);
        $data = $request->only('code', 'name', 'number_floor', 'owner', 'owner_phone', 'owner_email', 'address', 'note', 'introduce');
        $building->update($data);
        $building->load('room:building_id,purpose,status');
        //marco dữ liệu
        //nhóm theo trạng thái
        $room = $building->room->countBy('status');
        //đếm phòng đã thuê
        $hired_room = $room->has('2') ? $room->get('2') : 0;
        //Tổng phòng đã thuê
        $total_room = $room->sum();
        //Giá trung bình
        $avg_room = $building->room->avg('purpose') ?? 0;
        
        //trả dữ liệu
        $building = (object) collect($building->only('id', 'name', 'number_floor', 'address', 'owner'))->merge([
            'total_room' => $total_room, 
            'avg_room' => $avg_room,
            'room' => [
                'hired' => $hired_room, 
                'empty' => $total_room - $hired_room, 
                'ratio' => $total_room !=0 ? $hired_room / $total_room * 100 : 0,
            ]
        ]);
        return view('admin.manager_building.card_building', ['building' => $building]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function delete(Request $request, Building $building){
        $building->delete();
        if($request->ajax()){
            return response()->json(['status' => 'success', 'id' => $building->id]);
        }
    }
}
