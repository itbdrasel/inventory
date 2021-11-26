<li class="nav-item">
    <a href="{{url('author/dashboard')}}" class="nav-link {{activeMenu(1, '')}}">
        <i class="nav-icon fas fa-tachometer-alt"></i>
        <p>Dashboard</p>
    </a>
</li>

@if (Sentinel::hasAnyAccess(['author.user_create','auth.users','system.user_permission','system.core.logs']))
    <li class="nav-item {{menuOpen(1, 'booking')}}">
        <a href="#" class="nav-link {{activeMenu(1, 'booking')}}">
            <i class="nav-icon fas fa-book-dead"></i>
            <p>
                System
                <i class="right fas fa-angle-down"></i>
            </p>
        </a>
        <ul class="nav nav-treeview">
            @if (Sentinel::hasAccess(['author.user_create']))
                <li class="nav-item">
                    <a href="{{route('author.user_create')}}" class="nav-link">
                        <!-- <i class="nav-icon fas fa-user-alt"></i> -->
                        <i class="fas fa-circle"></i>
                        <p>Add User</p>
                    </a>
                </li>
            @endif

            @if (Sentinel::hasAccess(['author.users']))
                <li class="nav-item">
                    <a href="{{route('author.users')}}" class="nav-link">
                        <!-- <i class="nav-icon fas fa-user-alt"></i> -->
                        <i class="fas fa-circle"></i>
                        <p>User Manager</p>
                    </a>
                </li>
            @endif

            @if (Sentinel::hasAccess(['author.permission']))
                <li class="nav-item">
                    <a href="{{route('author.permission')}}" class="nav-link">
                        <!-- <i class="nav-icon fas fa-user-alt"></i> -->
                        <i class="fas fa-circle"></i>
                        <p>Permissions</p>
                    </a>
                </li>
            @endif
            @if (Sentinel::hasAccess(['author.change_password']))
                <li class="nav-item">
                    <a href="{{url('author/change-password')}}" class="nav-link">
                        <!-- <i class="nav-icon fas fa-user-alt"></i> -->
                        <i class="fas fa-circle"></i>
                        <p>Change Password</p>
                    </a>
                </li>
            @endif
        </ul>
    </li>
@endif
@if (Sentinel::hasAccess(['base_setting']))
    <li class="nav-item">
        <a href="{{url('author/base_setting')}}" class="nav-link">
            <i class="nav-icon fas fa-cog"></i>
            <p>Settings</p>
        </a>
    </li>
@endif
