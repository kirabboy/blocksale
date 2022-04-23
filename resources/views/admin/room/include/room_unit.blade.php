<div class="col-6 col-sm-3">
    <div class="card p-2">
        <p class="text-right text-secondary m-0"><i class="fas fa-ellipsis-h"></i></p>
        <button data-url="{{ route('phong.show',$room) }}" onclick="getRoomInfo(this)"
            class="btn-room btn {{ bgStatusOutline($room->status) }} p-1 text-12 text-center"><i
                class="fas fa-door-open"></i> {{ $room->name }}</button>
    </div>
</div>
