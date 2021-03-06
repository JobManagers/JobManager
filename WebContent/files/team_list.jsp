<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Demo</title>
		<link rel="stylesheet" href="../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../css/common.css" />
		<link rel="stylesheet" href="../css/welcome.css" />
		<link rel="stylesheet" type="text/css" href="../css/jk_zy_baogao.css"/>
		<style type="text/css">
			td span{white-space: nowrap;}
		</style>
	</head>
	<body>
		<div class="main_content member_list">
			<div class="col-xs-12 col-sm-12 div_bordered"> 
		  		<div class="panel panel-default">
			   		<div class="panel-heading">
			   			<div class="jkbg_title_boxa">
			   				<a class=" btn_blueg2 font14 pull-right" href="team_add.jsp">+新增</a>
							<h4>小组管理</h4>
						</div>
				    	<form class="form-inline pl20" role="form">
							<div class="form-group">小组查询：
							</div>
							
						    <div class="form-group">
						   	   <div class="search fl">
								<input placeholder="小组名称" id="keyWord" type="text">
								<input style="display:none;">
							   </div>
						    </div>
							<div class="form-group">
								<button type="button" class="btn btn_white20" id="member_search">搜索</button>
							</div>
						
						</form>
		      		</div>
					<table class="table table-bordered table_fixed table-multicols table-hover "> 
						<thead> 
						  <tr> 
						  <th width="11%" class="border_right">小组ID</th>
							<th width="21%" class="border_right">小组名称</th> 					
							<th width="16%" class="border_right">组长</th>
							<th width="12%">操作</th> 
						   </tr> 
						</thead> 
						<tbody>
                           <tr> 
							<td>倪以彤</td> 
							<td>5558</td> 
							<td>15369339749</td>
							
							<td>
								<span><a href="team_informations.jsp" class="colorblue">详情</a></span>
			
								<span><a href="javascript:showPopC('zhy_popa_cancel');" class="colorred">删除</a></span>
							</td>
						  </tr>

						  <tr> 
							<td>倪以彤</td> 
							<td>5555558</td> 
							<td>1536</td>
							 
							<td>
								<span><a href="blood_chart.html" class="colorblue">详情</a></span>
			
								<span><a href="javascript:showPopC('zhy_popa_cancel');" class="colorred">删除</a></span>
							</td>
						  </tr>
	                    </tbody> 
					</table> 
	        	</div>
		        <div class="row text-center">
				    <ul id="member_pagination" class="pagination "><div class="pagination"><span class="current prev">上一页</span><span class="current">1</span><a href="javascript:InitTable(1)">2</a><a class="next" href="javascript:InitTable(1)">下一页</a><span class="allentries">共17条记录</span></div></ul>
			    </div>
	   		</div>
	  	</div>  

</body>
<script src="../js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="../js/common.js"> </script>
<script type="text/javascript" src="../js/jquery.pagination.js"></script>
</html>
