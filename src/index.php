<?php
$param = isset($_GET['new_member']) ? $_GET['new_member'] : null;

 $myTeamList = array("Cris", "Javi", "Josh");
 foreach($myTeamList as $member) {
    echo $member ."<br>";
 }

 if ( isset($param) and $param != null ) {
    echo "and our new member " . ucwords($param) ."<br>";
 }
   echo "More joining...";