<div class="col-6 col-sm-3">
    <div class="card p-2">
        <div class="dropdown text-right">
            <span class="text-secondary" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-ellipsis-h"></i>
            </span>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <span role="button" class="dropdown-item btn-change-status-room" data-room_id="{{ $room->id }}"
                    data-url="{{ route('phong.getChangeStatus') }}">Chuyển trạng thái</span>
                <span role="button" class="dropdown-item" data-room_id="{{ $room->id }}"
                    onclick="createContract(this)" data-url="{{ route('hop-dong.create') }}">Tạo hợp đồng</span>
                <span role="button" class="dropdown-item" data-room_id="{{ $room->id }}"
                    onclick="createInvoice(this)" data-id_room="{{$room->id}}" data-url="{{ route('hoa-don.create') }}">Xuất hóa đơn</span>
            </div>
        </div>
        <button id="room-{{ $room->id }}" data-url="{{ route('phong.show', $room) }}" onclick="getRoomInfo(this)"
            class="btn-room btn {{ bgStatusOutline($room->status) }} p-1 text-12 text-center"><i
                class="fas fa-door-open"></i> {{ $room->name }}</button>
    </div>
</div>
