<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
		<body>
		<!--é®ç½©å±-->
		<div class="zhy_zhezhao_pop " style="height: 800px; display: none;"></div>
		<!--é®ç½©å± end-->
		<div class="zhy_popa zhy_popa_cancel " style="width: 450px;margin-left: -225px;display: none;">
			<p class="color66">æç¤º<span class="pull-right close_icon" onclick="hidePopC()"></span></p>
		  	<div class="pop_content">
			    <p>ç¡®å®è¦å é¤ä¼åãå¼ ä¸ãçæ°æ®å?</p>
			  	<div class="operate_btn pull-right"> 
			  	    <button type="button" class="btn cancle_yes">ç¡®å®</button>
			        <button type="button" class="btn cancle_btn" onclick="hidePopC()">åæ¶</button>
			  	</div>
		  	</div>
		</div>
		
		
		<div class="main_content member_list">
			<div class="col-xs-12 col-sm-12 div_bordered"> 
		  		<div class="panel panel-default">
			   		<div class="panel-heading">
			   			<div class="jkbg_title_boxa">
			   				<a class=" btn_blueg2 font14 pull-right" href="shiftTable_add.html">+æ°å¢</a>
							<h4>æç­æ¹æ¡ç®¡ç</h4>
						</div>
				    	<form class="form-inline pl20" role="form">
							
							
						    <div class="form-group">
						   	   <div class="search fl">
								<input placeholder="è¯·è¾å¥æ¹æ¡åç§°" id="keyWord" type="text">
								<input style="display:none;">
							   </div>
						    </div>
							<div class="form-group">
						    <div class="inline relative mr0">
								<input type="text" class="form-control" style="width: 125px;"
									id="sTime" name="startDateStr" readonly="readonly" placeholder="å¼å§æ¥æ">
								<span class="date_icon" style="left: 94px;"><i></i></span>
							</div>
							<div class="inline">è³</div>
							<div class="inline relative mr0">
								<input type="text" class="form-control mr0" id="eTime"
									name="endDateStr" style="width: 125px;" readonly="readonly" placeholder="ç»ææ¥æ"/>
								<span class="date_icon" style="left: 94px;"><i></i></span>
							</div>
				   		</div>
							<div class="form-group">
								<button type="button" class="btn btn_white20" id="member_search">æç´¢</button>
							</div>
						
						</form>
		      		</div>
					<table class="table table-bordered table_fixed table-multicols table-hover "> 
						<thead> 
						  <tr> 
							<th width="14%" class="border_right">æç­è¡¨åç§°</th> 
							<th width="14%" class="border_right">æç­æ¹æ¡åç§°</th>  
							<th width="14%" class="border_right">å¼å§æ¥æ</th>
							<th width="14%" class="border_right">ç»ææ¥æ</th> 
							<th width="14%" class="border_right">æä½äºº</th>  
							<th width="14%" class="border_right">æä½æ¶é´</th> 
							<th width="16%" class="border_right">æä½</th>  
						 </tr> 
						</thead> 
						<tbody>
                           <tr> 
								<td>Aç»6ææç­è¡¨</td> 
								<td>ä¸¤ç­å</td> 
								<td>2017-06-01</td> 
								<td>2017-06-30</td> 
								<td>å¼ ä¸</td>
								<td>2017-06-01</td> 							
								<td>
									<span><a href="#" class="colorblue">æ¥ç</a></span>
									<span><a href="#" class="colorblue">ä¿®æ¹</a></span>			
									<span><a href="#" class="colorred">å é¤</a></span>
								</td>
						  </tr>
						   <tr> 
								<td>Aç»6ææç­è¡¨</td> 
								<td>ä¸¤ç­å</td> 
								<td>2017-06-01</td> 
								<td>2017-06-30</td> 
								<td>å¼ ä¸</td>
								<td>2017-06-01</td> 							
								<td>
									<span><a href="#" class="colorblue">æ¥ç</a></span>
									<span><a href="#" class="colorblue">ä¿®æ¹</a></span>			
									<span><a href="#" class="colorred">å é¤</a></span>
								</td>
						  </tr>
						  			
						  
	                    </tbody> 
					</table> 
	        	</div>
		        <div class="row text-center">
				    <ul id="member_pagination" class="pagination "><div class="pagination"><span class="current prev">ä¸ä¸é¡µ</span><span class="current">1</span><a href="javascript:InitTable(1)">2</a><a class="next" href="javascript:InitTable(1)">ä¸ä¸é¡µ</a><span class="allentries">å±17æ¡è®°å½</span></div></ul>
			    </div>
	   		</div>
	  	</div>  

</body>
<script src="../js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="../js/common.js"> </script>
<script type="text/javascript" src="../js/jquery.pagination.js"></script>
</html>
