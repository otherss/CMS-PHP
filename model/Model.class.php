<?php
  class Model {

    // 获取总记录条数
    protected function GetTotal($_sql){
      $_db = DB_inc::getDB();
      $_result = $_db->query($_sql);
      $_total = $_result->fetch_row();
      DB_inc::unDB($_result,$_db);
      return $_total[0];
    }

    // 获取一条记录
    protected function GetOne($_sql){
      $_db = DB_inc::getDB();
      $_result = $_db->query($_sql);
      $_obj = $_result->fetch_object();
      DB_inc::unDB($_result,$_db);
      return $_obj;     
    }

    // 获取多条记录
    protected function GetAll($_sql){
      $_db = DB_inc::getDB();
      $_result = $_db->query($_sql);
      $_html = array();
      while(!!$_obj = $_result->fetch_object()){
        $_html[] = $_obj;
      }
      DB_inc::unDB($_result,$_db);
      return $_html;
    }

    // 增改删
    protected function CUD($_sql){
      $_db = DB_inc::getDB();
      $_db->query($_sql);
      $_affected = $_db->affected_rows;
      DB_inc::unDB($_result,$_db);
      return $_affected;
    }

}
?>