<?php

// If it's desired to kill the session, also delete the session cookie.
// Note: This will destroy the session, and not just the session data!
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

if(isset($_SESSION)) {
	session_unset();
	session_destroy();
}

setcookie('usu_id');
setcookie('usu_time');
setcookie('usu_login');
setcookie('usu_nome');
setcookie('usu_nivel');
setcookie('usu_escudo');

header('Location: ./');
exit();
?>