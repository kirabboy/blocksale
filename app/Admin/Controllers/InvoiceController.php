<?php

namespace App\Admin\Controllers;

use App\Models\Room;
use App\Models\Invoice;
use App\Models\Contract;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Admin\Requests\InvoiceRequest;

class InvoiceController extends Controller
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
        $room = Room::whereId($request->id_room)->with('building')->first();

        $contract = $room->contract()->with('contractinfo')->first();
        $service_detail = $contract->service_detail()->whereStatus(0)->get();
        if(count($service_detail )>0){
            return response()->json(['status' =>true, 'message' => view('admin.invoice.modal.create_invoice', compact('room', 'contract','service_detail'))->render()]);
        }else{
            return response()->json(['status' =>false, 'message' => 'Bạn cần cập nhập chỉ số điện nước tháng trước khi xuất hóa đơn']);
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(InvoiceRequest $request)
    {        
        $contract = Contract::whereId($request->id_contract)->first();
        $service_detail = $contract->service_detail()->whereStatus(0)->get();
        $check = true;
        foreach ($service_detail as $item){
            if($item->is_confirm == 0){
                $check = false;
            }
        }
        if($check){
            $invoice = Invoice::create($request->all());    
            $contract->service_detail()->whereStatus(0)->update(['status'=>1]);
            return response()->json(['status' =>true, 'message' => 'Thêm hóa đơn thành công']);
        }else{
            return response()->json(['status' =>false, 'message' => 'Chỉ số điện nước chưa được chốt']);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $invoice = Invoice::whereId($id)->first();
        $contract = $invoice->contract()->with('contractinfo')->first();
        $service_detail = $contract->service_detail()->get();
        $room = $contract->room()->with('building')->first();

        return response()->json(['status' =>true, 'message' => view('admin.invoice.modal.edit_invoice', compact('invoice','room', 'contract','service_detail'))->render()]);

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
