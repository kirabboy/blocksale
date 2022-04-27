<div class="col-6 col-sm-3">
    <div class="card p-2">
            <div class="dropdown text-right">
                <span class="text-secondary" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-ellipsis-h"></i>
                </span>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                  <a class="dropdown-item" href="#">Action</a>
                  <a class="dropdown-item" href="#">Another action</a>
                  <a class="dropdown-item" href="#">Something else here</a>
                </div>
              </div>
        <button data-url="{{ route('phong.show', $room) }}" onclick="getRoomInfo(this)"
            class="btn-room btn {{ bgStatusOutline($room->status) }} p-1 text-12 text-center"><i
                class="fas fa-door-open"></i> {{ $room->name }}</button>
    </div>
</div>
