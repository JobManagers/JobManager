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
<link rel="stylesheet" type="text/css" href="../css/jk_zy_baogao.css" />
<link rel="stylesheet" href="../css/jquery.ptTimeSelect.css" />
<!-- 日历样式 -->
</head>
<body>
		<div class="main_content create_site">
			<div class="col-xs-12 col-sm-12 div_bordered ">
				<div class="jkbg_title_boxa" style="border: 0px">
					<a href="javascript:history.go(-1);"
						class="btn_blue pull-right mr15">&lt;&lt;返回</a>
					<h4>小组详情</h4>
					<div class="divider"></div>
				</div>
				<div class="panel-body ">
					<div class="well_head mt0">
						<!-- <div class="line"></div> -->
						<!-- <span class="pull-left" href="javascript:void(0);"><b class="color66">员工增加</b></span> -->
					</div>
					<div class="panel-body">
						<table class="zhy_book_table">
						<!-- -------------此处不用,只是好看--------------------------------------------- -->
							<tr>
								<!-- <td align="right" width="120">员工头像：</td>
									<td align="left" width="40%" height="40%">
										<img src="../img/v_2.jpg"  />
									</td>
								</td> -->
								<div class="form-group" id="">
								
								<div class="col-md-5" hidden="hidden">
									<!-- 定义表单输入组件 -->
									<input type="file" id="" name="pic" class="form-control"
										placeholder="请选择雇员照片"> 
										<img src="../img/v_2.jpg"  />
								</div>
								<!-- 定义表单错误提示显示元素 -->
								<div class="col-md-4" id=""></div>
							</div>
							<!-- ---------------------------------------------------------- -->
							</tr> 
							<tr >
								<td align="right" width=5%">小组名称：</td>
								<td align="left" width="5%"><input type="text"
									class="form-control inline input150" placeholder="请选择小组" />
									<!-- <button type="button" class="btn btn_save2" onclick="showPopC('mem_choose')" style="width: auto;padding: 0px 5px;">选择</button> -->
								</td>
							</tr>
							<tr >
								<td align="right" width=5%">组长姓名：</td>
								<td align="left" width="5%"><input type="text"
									class="form-control inline input150" placeholder="请输入组长姓名" />
									<!-- <button type="button" class="btn btn_save2" onclick="showPopC('mem_choose')" style="width: auto;padding: 0px 5px;">选择</button> -->
								</td>
							</tr>
							<tr>
								<td align="right" width="5%">创建人</td>
								<td align="left" width="5%"><input type="text"
									class="form-control inline input150" placeholder="" />
								</td>
							</tr> 
							<tr>
								<td align="right" width="5%">最后修改人</td>
								<td align="left" width="5%"><input type="text"
									class="form-control inline input150" placeholder="" />
								</td>
							</tr> 
							<tr>
								<td align="right" width="5%">最后修改时间</td>
								<td align="left" width="5%"><input type="text"
									class="form-control inline input150" placeholder="" />
								</td>
							</tr>
							<tr>
								<td align="right" width="5%">修改次数</td>
								<td align="left" width="5%"><input type="text"
									class="form-control inline input150" placeholder="" />
								</td>
							</tr>  
						</table>
					</div>
					<div class="form-group add_block ">
						<div class="divider"></div>
						<div class="col-sm-12 text-center">
							<button type="button" class="btn btn_green" onclick="goHref()">保存</button>
							<button type="button" class="btn btn_whites">取消</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="../js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="../js/common.js"></script>
	<script type="text/javascript" src="../js/jquery.ptTimeSelect.js"></script>
	<script src="../js/jquery.ganged.select.js" type="text/javascript"></script>
	<script type="text/javascript" src="../js/pro.js"></script>
	<script type="text/javascript">
		var mydate = new Date();

		//---获取当前月最后一天start
		var yearT = mydate.getFullYear();
		var monthT = mydate.getMonth() + 1;

		var daysT;
		//当月份为二月时，根据闰年还是非闰年判断天数
		if (monthT == 2) {
			daysT = yearT % 4 == 0 ? 29 : 28;
		} else if (monthT == 1 || monthT == 3 || monthT == 5 || monthT == 7
				|| monthT == 8 || monthT == 10 || monthT == 12) {
			//月份为：1,3,5,7,8,10,12 时，为大月.则天数为31；
			daysT = 31;
		} else {
			//其他月份，天数为：30.
			daysT = 30;
		}
		//输出天数
		monthT = monthT < 10 ? 0 + monthT : monthT;
		var dT = new Date(yearT + "-" + monthT + "-" + daysT);
		//---获取当前月最后一天end

		var year = mydate.getFullYear(), month = mydate.getMonth();
		year = month == 0 ? year - 1 : year;
		month = month == 0 ? 11 : month;
		var prevFrist = new Date(year, month, 1);

		var picker_S = new Pikaday(
				{
					field : document.getElementById("sTime"),
					firstDay : 1,
					// maxDate: new Date(),
					format : 'YYYY/MM/dd',
					defaultDate : prevFrist,
					yearRange : [ 1900, 2330 ],
					onOpen : function() {
						//picker_S.setMaxDate(new Date(picker_E));
					},
					onSelect : function() {
						var MaxDate = new Date(picker_S);
						var year = MaxDate.getFullYear(), month = MaxDate
								.getMonth() + 1;
						var days;
						//当月份为二月时，根据闰年还是非闰年判断天数
						if (month == 2) {
							days = year % 4 == 0 ? 29 : 28;
						} else if (month == 1 || month == 3 || month == 5
								|| month == 7 || month == 8 || month == 10
								|| month == 12) {
							//月份为：1,3,5,7,8,10,12 时，为大月.则天数为31；
							days = 31;
						} else {
							//其他月份，天数为：30.
							days = 30;
						}
						//输出天数
						month = month < 10 ? 0 + month : month;
						var d = new Date(year + "-" + month + "-" + days);
						picker_E.setMaxDate(d);
						picker_E.setDate(d);
					}

				});
		var picker_E = new Pikaday({
			field : document.getElementById("eTime"),
			firstDay : 1,
			minDate : new Date('2016/01/01'),
			format : 'YYYY/MM/dd',
			defaultDate : dT,
			yearRange : [ 1900, 2330 ],
			onOpen : function() {
				picker_E.setMinDate(new Date(picker_S))
			}
		});
	</script>
</html>