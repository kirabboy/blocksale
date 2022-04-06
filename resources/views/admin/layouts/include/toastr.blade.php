@if (session('success'))
    <script>
        toastr.success('{{ session('success') }}', {
            timeOut: 5000
        })
    </script>
@elseif (session('error'))
    <script>
        toastr.error('{{ session('error') }}', {
            timeOut: 5000
        })
    </script>
@endif
