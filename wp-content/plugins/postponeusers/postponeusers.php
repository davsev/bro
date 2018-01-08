<?php
/*
plugin Name: Postpone Users
Plugin URI: none
Version: 1.0
*/

/** Step 2 (from text above). */
add_action( 'admin_menu', 'postponeusers_admin_actions' );

/** Step 1. */
function postponeusers_admin_actions() {
  add_submenu_page( 'users.php', 'משתמשים מושהים', 'משתמשים מושהים', 'manage_options', __FILE__, 'postponeusers_admin');
}

/** Step 3. */
function postponeusers_admin() {
    ?>
    <div>
        <h4>רשימת משתמשים מושהים:</h4>
    </div>
    <table class="widefat">
    <thead>
        <tr>
            <th>
            שם משתמש
            </th>
            <th>
            מייל
            </th>
            <th>
            תפקיד
            </th>
            <th>
            תאריך ביטול
            </th>
        </tr>
    </thead>
    <tbody>
    </tbody>
    </table>
    <?php
}
?>

