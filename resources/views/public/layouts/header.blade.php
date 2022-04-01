<header>
    <div class="header-top">
        <ul class="nav justify-content-end container-fluid">
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fal fa-arrow-to-bottom"></i> Tải App</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#"><i class="fal fa-plus-hexagon"></i> Đăng phòng dễ dàng</a>
            </li>
        </ul>
    </div>
    <div class="header-main">
        <div class="container-fluid">
            <div class="header-main-content row">
                <div class="col">
                    <a href="{{url('/')}}" class="logo">
                        <img src="image/logo.png" alt="logo">
                    </a>
                    <div class="form-dropdown">
                        <div onclick="dropdownBtn()" class="dropdown sik-dropdown" id="sik-select">
                            <div class="btn dropdown-toggle" type="button">
                                HCM
                            </div>
                            <ul class="dropdown-menu">
                                <li>
                                    <span class="dropdown-item" data-value="HCM" selected>
                                        Hồ Chí Minh
                                    </span>
                                </li>
                                <li>
                                    <span class="dropdown-item" data-value="HN">
                                        Hà Nội
                                    </span>
                                </li>
                            </ul>
                        </div>
                        <form action="" class="search-container">
                            <input id="search-bar" type="text" name="" placeholder="Tìm kiếm theo địa điểm, quận, tên đường...">
                            <button type="" class="search-icon"><i class="fal fa-search"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>