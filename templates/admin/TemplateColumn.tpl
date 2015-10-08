<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Template</title>
    <link href="../style/admin.css" rel="stylesheet">
    <link href="../style/bootstrap.min.css" rel="stylesheet">
  </head>
  <body class="background">
  <div class="container min-height wite">
    {if isset($defaultColumn)&&$defaultColumn == true}
      <form method="post">
        <div class="form-group">
          <label for="templates">栏目默认模板：</label>
          <input input type="text" name="templates" class="form-control" value="{$default}"/>
        </div>
        <div class="form-group">  
          <input name="send" type="submit" class="btn btn-primary btn-lg" value="设置模板" />
        </div>
      </form>
      
      {elseif isset($setColumnTemplate)&&$setColumnTemplate==true}
      <form method="post">
        <table class="table table-hover">
          <tr><th>ID</th><th>标题</th><th>模板</th><th><input type="checkbox"/>本页全选</th></tr>
          {foreach from=$column key=key item=item}
            <tr>
              <td>{$item.columnID}</td>
              <td>{$item.columnName}</td>
              <td>{$item.templateName}</td>
              <td><input type="checkbox" name="checkbox[]" value="{$item.columnID}" /></label></td>
            </tr>
          {/foreach}
      </table>
      <div class="page">
        <ul class="pagination">
          {$Page}
        </ul>
      </div>
      <div class="form-group">
          <label for="templates">栏目模板：</label>
          <input input type="text" name="templates" class="form-control"/>
      </div>
      <div class="form-group">  
        <input name="select" type="submit" class="btn btn-primary btn-lg" value="设置选中栏目" />
        <input name="all" type="submit" class="btn btn-primary btn-lg" value="设置所有栏目" />
      </div>
      </form>
    {/if}
  </div>
	<script src="../js/jq/jquery-1.11.3.min.js"></script>
	<script src="../js/bootstrap/bootstrap.min.js"></script>
  </body>
</html>