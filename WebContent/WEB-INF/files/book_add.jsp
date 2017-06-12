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
         <link rel="stylesheet" href="../css/jquery.ptTimeSelect.css" /><!-- 日历样式 -->
</head>
<body>
<!--遮罩层-->
<div class="zhy_zhezhao_pop " style="height:800px;" ></div>
<!--遮罩层 end-->	
<!--系统提示-->
<div class="zhy_popa mem_choose_search" style="width: 725px;margin-left: -363px;">
  <p class="color66">系统提示
  <span class="pull-right close_icon" onclick="hidePop()"></span>
  </p>
  <div class="pop_content" >
  	<form class="form-inline" role="form">
	   <div class="form-group" >
		   	<div class="search " >
				<input type="text" placeholder="请输入需要查询的会员姓名/会员编号/手机号" class="font14" />
				<input style="display:none" > 
			</div>
		</div>
	   <div class="form-group"><button type="button" class="btn btn_white20" >搜索</button></div>
	</form>
  </div>
  <div class="text-center color333 font18 " style="margin-bottom: 80px;margin-top: 80px;" >请在搜索框内输入需要绑定的会员信息</div>
  <div class="operate_btn pull-right">
  	    <button type="button" class="btn cancle_yes" onclick="">确定</button>
	  	<button type="button" class="btn cancle_btn" onclick="hideEdit()">取消</button>
  </div>
  <div class="clear" style="height: 20px;"></div>
</div>

<div class="zhy_popa mem_choose_zero" style="width: 725px;margin-left: -363px;">
  <p class="color66">系统提示
  <span class="pull-right close_icon" onclick="hideEdit()"></span>
  </p>
  <div class="pop_content" >
  	<form class="form-inline" role="form">
	   <div class="form-group" >
		   	<div class="search " >
				<input type="text" placeholder="请输入需要查询的会员姓名/会员编号/手机号" class="font14" />
				<input style="display:none" > 
			</div>
		</div>
	   <div class="form-group"><button type="button" class="btn btn_white20" >搜索</button></div>
	</form>
  </div>
  <div class="text-center color333 font18 " style="margin-bottom: 10px;margin-top: 80px;" >抱歉，未搜索到相关会员，请您检查输入内容</div>
  <div class="text-center color333 font18" style="margin-bottom: 80px;">是否正确或者请联系管理员</div>
  <div class="operate_btn pull-right">
  	    <button type="button" class="btn cancle_yes" onclick="">确定</button>
	  	<button type="button" class="btn cancle_btn" onclick="hideEdit()">取消</button>
  </div>
  <div class="clear" style="height: 20px;"></div>
</div>
<div class="zhy_popa mem_choose" style="width: 725px;margin-left: -363px;">
  <p class="color66">系统提示
  <span class="pull-right close_icon" onclick="hidePopC()"></span>
  </p>
  <div class="pop_content" >
  	<form class="form-inline" role="form">
	   <div class="form-group" >
		   	<div class="search " >
				<input type="text" placeholder="请输入需要查询的会员姓名/会员编号/手机号" class="font14" />
				<input style="display:none" > 
			</div>
		</div>
	   <div class="form-group"><button type="button" class="btn btn_white20" >搜索</button></div>
	</form>
  </div>
  
  <table class="table table-bordered  table-hover"> 
     <thead> 
        <tr> 
	      <th width="16%" class="border_right">姓名</th>
	      <th width="16%" class="border_right">性别</th>
	      <th width="16%" class="border_right">年龄</th>
	      <th width="16%" class="border_right">手机号</th>
	      <th width="20%" class="border_right">身份证号</th>
	      <th width="16%">操作</th>
        </tr> 
     </thead> 
     <tbody> 
	      <tr> 
	        <td>老张</td>
	        <td>女</td>
	        <td>60岁</td>
	        <td>124356798910</td>
	        <td>123456799555555</td>
	        <td>
	        	<span> <a href="javascript:hidePopC();" class="colorblue">预定</a></span>
	        </td>
	      </tr> 
	      <tr> 
	        <td>小刘</td>
	        <td>女</td>
	        <td>60岁</td>
	        <td>124356798910</td>
	        <td>123456799555555</td>
	        <td>
	        	<span> <a href="javascript:hidePopC();" class="colorblue">预定</a></span>
	        </td>
	      </tr> 
     </tbody> 
    </table>
    <!--分页-->
    <div class="text-center">
        <div id="Pagination" class="pagination"><a class="prev" href="#">上一页</a><a href="#">1</a><a href="#">2</a><span class="current">3</span><a href="#">4</a><span>...</span><a href="#">8</a><a class="next" href="#">下一页</a></div>
    </div>
  	<div class="clear" style="height: 20px;"></div>
</div>
	<div class="main_content create_site" >
		<div class="col-xs-12 col-sm-12 div_bordered ">
		   <div class="jkbg_title_boxa" style="border: 0px">
		   	    <a href="javascript:history.go(-1);" class="btn_blue pull-right mr15" >&lt;&lt;返回</a>
				<h4>增加</h4>
				<div class="divider"></div>
		  </div>
		    <div class="panel-body ">
				<div class="well_head mt0">
					<div class="line"></div>
					<span class="pull-left" href="javascript:void(0);"><b class="color66">会员信息</b></span>
				</div>
				<div class="panel-body">
					<table class="zhy_book_table" >
						<tr>
							<td align="right" width="120">会员姓名：</td>
							<td align="left" width="40%">
								<input type="text" class="form-control inline input150" readonly="" placeholder="请选择会员"/>
								<button type="button" class="btn btn_save2" onclick="showPopC('mem_choose')" style="width: auto;padding: 0px 5px;">选择</button>
							</td>
							<td align="right" width="160"></td>
							<td align="right" width="60%" ></td>
						</tr>
						<tr>
						    <td align="right" >性别：</td>
							<td align="left">
									<label  class="label_radio r_on"><input type="radio" name="sex" checked="checked" onclick="setupLabel()"/>男</label>&nbsp;&nbsp;&nbsp;&nbsp;
									<label  class="label_radio"><input type="radio" name="sex" onclick="setupLabel()"/>女</label>
							</td>
							<td align="right">手机号：</td>
							<td align="left">
								<input type="text" class="form-control inline input150" placeholder="请输入手机号" value="15369332162"/>
							</td>
							
						</tr>
						<tr>
							
							<td align="right">紧急联系人：</td>
							<td align="left">
								<input type="text" class="form-control inline input150" placeholder="请输入紧急联系人" value="李彤"/>
							</td>
							<td align="right">身份证号：</td>
							<td align="left">
								<input type="text" class="form-control inline input200" value="111111111111111111" placeholder="请输入身份证号"/>
							</td>
						</tr>
						
						<tr>
							<td align="right">居住地址：</td>
							<td align="left" colspan="3">
								<div id="jsAddress_0"  class="selectbox_l">
									<input type="hidden" class="province" value=""/>
									<input type="hidden" class="city" value="110100"/>
									<input type="hidden" class="area" value="110108"/>
									<div name="province" type="selectbox"  class="btn-group inline "></div>
									<div name="city" type="selectbox"  class="btn-group inline"></div>
									<div name="area" type="selectbox"  class="btn-group inline"></div>
								</div>
								<div class=" inline">
									<input type="text" class="form-control input300" id="" placeholder="详细地址">
								</div>
							</td>
						</tr>
					</table>
				</div>
				
				
				<div class="form-group add_block ">
			   	  <div class="divider"></div>
			      <div class="col-sm-12 text-center">
			         <button type="button" class="btn btn_green" onclick="goHref()">保存</button>
			         <button type="button" class="btn btn_whites" >取消</button>
			      </div>
			    </div>
			</div>
		</div>
	</div>
	</body>
	<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="../js/common.js" ></script>
	<script type="text/javascript" src="../js/jquery.ptTimeSelect.js" ></script><!--日历插件-->
	 <!-- 省市区联动 s -->  
	<script src="../js/jquery.ganged.select.js" type="text/javascript"></script>
	<script type="text/javascript" src="../js/pro.js"></script><!--  省市区的json数据 -->
	<!-- 省市区联动 e -->
	<script type="text/javascript">
	
		/****
		***
		省市区联动 调用
		*/
	    $('#jsAddress_0').ganged({'data': provinceList, 'width': 133, 'height': 32});
	var mydate=new Date();
	var picker = new Pikaday(
          {
            field:document.getElementById("rudate"),
            firstDay: 1,
            minDate: new Date('2016/01/01'),
            maxDate: new Date(),
            format: 'YYYY/MM/dd',
            defaultDate:mydate,
            yearRange: [1900,2330]
    });
    
    var picker_S = new Pikaday(
          {
            field:document.getElementById("startDate"),
            firstDay: 1,
            minDate: new Date('2016/01/01'),
            maxDate: new Date(),
            format: 'YYYY/MM/dd',
            defaultDate:mydate,
            yearRange: [1900,2330]
    });
    var picker_E = new Pikaday(
          {
            field:document.getElementById("endDate"),
            firstDay: 1,
            minDate: new Date('2016/01/01'),
            maxDate: new Date(),
            format: 'YYYY/MM/dd',
            defaultDate:mydate,
            yearRange: [1900,2330]
    });
	</script>
</html>