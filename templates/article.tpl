<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>main</title>
<link rel="stylesheet" type="text/css" href="../style/admin.css" />
<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="../ueditor/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="../ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<body id="manage">

<div class="map">
  内容管理 &gt;&gt; 查看文档列表 &gt;&gt; <strong id="title">{$title}</strong>
</div>

  {if isset($show)&&$show == true}
    <table class="list" id="show">
    <tr><th>ID</th><th>所属栏目</th><th>标题</th><th>文章描述</th><th>更新时间</th><th>操作</th></tr>
    {foreach $AllArticle as $key=>$value}
      <tr>
        <td>{$value->id}</td>
        <td>{$value->column_name}</td>
        <td>{$value->title}</td>
        <td>{$value->info}</td>
        <td>{$value->updatetime}</td>
        <td><a href="article.php?action=update&id={$value->id}">[ 修改 ]</a> | <a href="article.php?action=delete&id={$value->id}" onclick="return confirm('确定删除此文章')?true:false">[ 删除 ]</a></td>
      </tr>
    {/foreach}
  </table>
  <p class="crelink"><a class="crelink" href="article.php?action=add">[ 新增文章 ]</a><p>
  <div id="page">{$Page}</div>

{elseif isset($update)&&$update == true}
<script type="text/javascript" charset="utf-8" src="../js/admin_article.js"></script>
  <form method="post">
  <input type="hidden" id="articleid" name="a_id" value="{$a_id}"/>
  <input type="hidden" id="c_id" value="{$c_id}">
  <table cellspacing="0" class="content">
    <tr><td>文档标题：<input type="text" name="title" class="text" value="{$title}" /></td></tr>
    <tr><td>栏目：<select name="column">
                    {foreach $columnlist as $key=>$value}
                    <option value="{$value->id}">{$value->column_name}</option>
                    {/foreach}
                  </select></td></tr>
    <tr><td>定义属性：<input type="checkbox" name="top" value="头条" />头条
                  <input type="checkbox" name="rec" value="推荐" />推荐
                  <input type="checkbox" name="bold" value="加粗" />加粗
                  <input type="checkbox" name="skip" value="跳转" />跳转
    </td></tr>
    <tr><td>标　　签：<input type="text" name="tag" class="text" /></td></tr>
    <tr><td>关 键 字：<input type="text" name="keyword" class="text" /></td></tr>
    <tr><td>缩 略 图：<input type="text" name="thumbnail" class="text" /> <input type="button" value="上传缩略图" onclick="centerWindow('../templates/upload_file.html','upfile','400','100')" /></td></tr>
    <tr><td>文章来源：<input type="text" name="source" class="text" /></td></tr>
    <tr><td>作　　者：<input type="text" name="author" class="text" /></td></tr>
    <tr><td><span class="middle">内容摘要：</span><textarea name="info">{$info}</textarea></td></tr>
    <tr><td>评论选项：<input type="radio" name="commend" value="1" checked="checked" />允许评论 
                  <input type="radio" name="commend" value="0" />禁止评论 
            　　　　浏览次数：<input type="text" name="count" value="100" class="small" />
    </td></tr>
    <tr><td>文档排序：<select name="sort">
                    <option>默认排序</option>
                    <option>置顶一天</option>
                    <option>置顶一周</option>
                    <option>置顶一月</option>
                    <option>置顶一年</option>
                  </select>
             　 　　消费金币：<input type="text" name="gold" value="0" class="small" />
    </td></tr>
    <tr><td>阅读权限：<select name="limit">
                    <option>开放浏览</option>
                    <option>初级会员</option>
                    <option>中级会员</option>
                    <option>高级会员</option>
                    <option>VIP会员</option>
                  </select>
          标题颜色：<select name="color">
                    <option>默认颜色</option>
                    <option style="color:red;">红色</option>
                    <option style="color:blue;">蓝色</option>
                    <option style="color:orange;">橙色</option>
                  </select>
    </td></tr>
    <tr><td>编辑文章内容：<div><textarea id="editor" name="editor" type="text/plain" style="width:1024px;height:500px;">{$content}</textarea></div></td></tr>
    <tr><td><input name="send" type="submit" value="发布文档" /> <input type="reset" value="重置" /></td></tr>
  </table>
  </form>
  <script type="text/javascript">
      var ue = UE.getEditor('editor');
  </script>

{elseif isset($add)&&$add == true}
<script type="text/javascript" charset="utf-8" src="../js/admin_content.js"></script>
  <form method="post">
  <table cellspacing="0" class="content">
    <tr><th><strong>发布一篇文章</strong></th></tr>
    <tr><td>文档标题：<input type="text" name="title" class="text" /></td></tr>
    <tr><td>栏目：<select name="column">
                    {foreach $columnlist as $key=>$value}
                    <option value="{$value->id}">{$value->column_name}</option>
                    {/foreach}
                  </select></td></tr>
    <tr><td>定义属性：<input type="checkbox" name="top" value="头条" />头条
                  <input type="checkbox" name="rec" value="推荐" />推荐
                  <input type="checkbox" name="bold" value="加粗" />加粗
                  <input type="checkbox" name="skip" value="跳转" />跳转
    </td></tr>
    <tr><td>标　　签：<input type="text" name="tag" class="text" /></td></tr>
    <tr><td>关 键 字：<input type="text" name="keyword" class="text" /></td></tr>
    <tr><td>缩 略 图：<input type="text" name="thumbnail" class="text" /> <input type="button" value="上传缩略图" onclick="centerWindow('../templates/upload_file.html','upfile','400','100')" /></td></tr>
    <tr><td>文章来源：<input type="text" name="source" class="text" /></td></tr>
    <tr><td>作　　者：<input type="text" name="author" class="text" /></td></tr>
    <tr><td><span class="middle">内容摘要：</span><textarea name="info"></textarea></td></tr>
    <tr><td>评论选项：<input type="radio" name="commend" value="1" checked="checked" />允许评论 
                  <input type="radio" name="commend" value="0" />禁止评论 
            　　　　浏览次数：<input type="text" name="count" value="100" class="small" />
    </td></tr>
    <tr><td>文档排序：<select name="sort">
                    <option>默认排序</option>
                    <option>置顶一天</option>
                    <option>置顶一周</option>
                    <option>置顶一月</option>
                    <option>置顶一年</option>
                  </select>
             　 　　消费金币：<input type="text" name="gold" value="0" class="small" />
    </td></tr>
    <tr><td>阅读权限：<select name="limit">
                    <option>开放浏览</option>
                    <option>初级会员</option>
                    <option>中级会员</option>
                    <option>高级会员</option>
                    <option>VIP会员</option>
                  </select>
          标题颜色：<select name="color">
                    <option>默认颜色</option>
                    <option style="color:red;">红色</option>
                    <option style="color:blue;">蓝色</option>
                    <option style="color:orange;">橙色</option>
                  </select>
    </td></tr>
    <tr><td>编辑文章内容：<div><textarea id="editor" name="editor" type="text/plain" style="width:1024px;height:500px;"></textarea></div></td></tr>
    <tr><td><input name="send" type="submit" value="发布文档" /> <input type="reset" value="重置" /></td></tr>
  </table>
  </form>
  <script type="text/javascript">
      var ue = UE.getEditor('editor');
  </script>
{/if}
</body>
</html>