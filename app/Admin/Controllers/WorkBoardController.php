<?php

namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Building;
use App\Models\Floor;
class WorkBoardController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        //
        if($request->has('building')){
            $building = Building::whereId($request->building)->with('floor')->first();
        }else{
            $building = Building::with('floor')->first();
        }
        $buildings = Building::latest()->get();
        $building->count = $building->room->countBy('status');
        $building->ratio = $building->count->sum() != 0 ? $building->count['2'] / $building->count->sum() *100 : 0;
        $building->floor = $building->floor->map(function($item) {
            $total = $item->room->count();
            $hired = $item->room->where('status', 2)->count();
            return (object) collect($item)->merge([
                'total' => $total,
                'hired' => $hired,
                'ratio' => $total != 0 ? $hired/$total * 100 : 0,
                'room' => $item->room()->oldest()->get(),
            ]);
        });
        return view('admin.workboard.index', compact('building', 'buildings'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
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
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id, Request $request)
    {
        //
        $building = Building::whereId($id)->with('floor')->first();
        $status = $request->status;
        return view('admin.workboard.include.building_detail', compact('building','status'));
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
