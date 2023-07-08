<?php
session_start();
if ($_SESSION['authenticated'] != 1) {
    echo("Update complete!");
	exit();
}

system('tail -n30 /flyovrio/flyovrio-update.log');
//echo($output);
?>

