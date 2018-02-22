<?php
if (isset($_SESSION['usu_id'])) :
	session_unset();
	session_destroy();
endif;

/** Voila! Here we shall gently nudge them somewhere else. */
header('Location: index.php');
exit();