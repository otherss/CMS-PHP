<?php /* Smarty version 3.1.24, created on 2015-06-25 14:04:39
         compiled from "E:/develop/wamp/www/CMS/templates/admin.tpl" */ ?>
<?php
/*%%SmartyHeaderCode:1111558bee57598919_25971271%%*/
if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '58d82db81cc71c457213ba0007600cd12c32a9c2' => 
    array (
      0 => 'E:/develop/wamp/www/CMS/templates/admin.tpl',
      1 => 1434579706,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1111558bee57598919_25971271',
  'has_nocache_code' => false,
  'version' => '3.1.24',
  'unifunc' => 'content_558bee576ec6e5_86382749',
),false);
/*/%%SmartyHeaderCode%%*/
if ($_valid && !is_callable('content_558bee576ec6e5_86382749')) {
function content_558bee576ec6e5_86382749 ($_smarty_tpl) {

$_smarty_tpl->properties['nocache_hash'] = '1111558bee57598919_25971271';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎光临CMS内容管理系统后台操作</title>
<link rel="stylesheet" type="text/css" href="style/index.css" />
</head>
<frameset rows="80px,*" border="0">
	<frame src="top.php" noresize="true" scrolling="no" />
	<frameset cols="150px,*" border="0">
		<frame src="../templates/sidebar.html" name="sidebar" noresize="true" scrolling="no" />
		<frame src="main.php" name="main" noresize="true" />
	</frameset>
</frameset>
</html><?php }
}
?>