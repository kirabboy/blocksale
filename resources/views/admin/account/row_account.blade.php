<tr>
    <td>
        {{ $admin->username }}
    </td>
    <td>
        {{ $admin_info->fullname }}
    </td>
    <td>
        {{ $admin_info->email }}
    </td>
    <td>
        {{ $admin_info->phone }}
    </td>
    <td>
        @if ($admin_info->gender == 1)
            Nam
        @else
            Nữ
        @endif
    </td>
    <td>
        {{ $admin_info->birthday }}
    </td>
    <td>
        {{ $admin_info->address }}
    </td>
</tr>