<?php
require substr(dirname(__FILE__),0,-6).'/init.inc.php';
global $_tpl;
$_manage = new ManageController($_tpl);   //入口
$_manage->Action();
$_tpl->display('manage.tpl');
?>