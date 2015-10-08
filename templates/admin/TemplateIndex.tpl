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
  
    {if isset($setIndex)&&$setIndex == true}
      <form method="post">
        <div class="form-group">
          <label for="templates">首页模板：</label>
          <input input type="text" name="templates" class="form-control" value="{$indexTemplate}"/>
        </div>
        <div class="form-group">  
          <input name="send" type="submit" class="btn btn-primary btn-lg" value="设置模板" />
        </div>
      </form>
    {/if}
  </div>
	<script src="../js/jq/jquery-1.11.3.min.js"></script>
	<script src="../js/bootstrap/bootstrap.min.js"></script>
  </body>
</html>