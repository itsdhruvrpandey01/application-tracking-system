<?php $extraItem = $extraItem ?? '';?>
<?php $back = $back ?? 'Home.php';?>

<nav class="navbar navbar-expand-lg navbar-light bg-light ">

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item" style="margin-left: 225px;">
                    <a class="nav-link size " href="<?php echo $back;?>"><i class="fa-solid fa-arrow-left"></i></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link size " href="Home.php"><span><i class="fas fa-home"></i></span></a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link size Wel" href="#"><?php echo $welcome; ?> </a>
                </li>
                <li class="nav-item">
                <?php echo $extraItem ?>
                </li>
                <li class="nav-item">
                    <div class="dropdown pb-4 pt-2" style="margin-left: 200px;">
                        <a href="#" class="d-flex align-items-center text-Black text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false" style="color: black;">
                            <!-- <img src="https://github.com/mdo.png" alt="hugenerd" width="35" height="35"
                                class="rounded-circle"> -->
                            <span class="d-sm-inline mx-1 ">User Profile</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                            <li><a class="dropdown-item" href="profile.php">Profile</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="logout.php">Sign out</a></li>
                        </ul>
                    </div>
                </li>
            </ul>

        </div>
    </nav>