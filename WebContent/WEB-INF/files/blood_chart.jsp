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
				
			
		<div class="check_title" >
		<a href="javascript:history.go(-1);" class="btn_blue pull-right mr15" >&lt;&lt;返回</a>
			<div class="nav_head" >
			<ul>
				<li class="on" >血压数据趋势</li>
			</ul>
			</div>
		</div>

		<div>
			<div style="height: 520px;width: 100%;" id="echart"></div> <!-- 血压图表 -->
		</div>
			
	  	</div> 
		

</body>
<script src="../js/jquery-1.8.3.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="../js/common.js"> </script>
<script type="text/javascript" src="../js/highcharts.js"></script>


<script type="text/javascript">
$(function () {
	var low = [75, 25, 75, 75, 75, 75, 75, 75, 80, 80];
	var high=[142, 25, 142, 142, 142, 142, 142, 142, 120, 95];
	if(low==""&&high==""){
		$('#echart').append("<div class='data_null_sm text-center'><img src='http://res.sankai.com/st/zhcloud_v1/img/data_null.png' /></div>");
	}else{
    $('#echart').highcharts({
        credits:{
             enabled:false // 禁用版权信息
        },
        chart: {
            type: 'line'
        },
        title: {
            text: ''
        },
        subtitle: {
            text: ''
        },
        plotOptions: {
            series: {
                pointStart: 200
            }
        },
        xAxis: {
            gridLineWidth: 0,
            tickWidth:0,
            categories: ['2016年01月28日 11:29:02', '2016年01月28日 11:29:02', '2016年01月28日 11:29:02', '2016年01月28日 11:29:02', '2016年01月28日 11:29:02', '2016年01月28日 11:29:02', '2016年01月28日 11:29:02', '2016年01月28日 11:29:02', '2016年07月04日 10:56:36', '2016年07月04日 11:21:06']
        },
        yAxis: {
            type: 'value',
            labels:{step:2},
            title: {
                text: ''
            },
            ceiling: 200,
            min:0,
            max:300,
            tickColor:'#ababab',
            tickWidth:1,
            tickPosition:"inside",
            tickmarkPlacement:"on",
            tickInterval:20,
            gridLineWidth: 0,
            lineWidth: 1,
            plotBands: [ { // Light breeze
                from: 0,
                to: 60,
                color: '#fff',
                label: {
                    text: '低血压',
                    align:'right',
                    style: {
                        color: '#666666',
                        fontSize: 16,
                        fontWeight:"bold"
                    }
                }
            },{ // Light breeze
                from: 60,
                to: 90,
                color: '#e1f3f8',
                label: {
                    text: '舒张压正常',
                    align:'right',
                    style: {
                        color: '#47b7d8',
                        fontSize: 16,
                        fontWeight:"bold"
                    }
                }
            }, { // Gentle breeze
                from: 90,
                to:120,
                color: '#fff',
                label: {
                    text: '',
                    align:'right',
                    style: {
                        color: '#e19748',
                        fontSize: 16,
                        fontWeight:"bold"
                    }
                }
            }, { // Gentle breeze
                from: 120,
                to:140,
                color: '#fbedde',
                label: {
                    text: '收缩压正常',
                    align:'right',
                    style: {
                        color: '#e19748',
                        fontSize: 16,
                        fontWeight:"bold"
                    }
                }
            }, { // Gentle breeze
                from: 140,
                to:200,
                color: '#fde4e4',
                label: {
                    text: '高血压',
                    align:'right',
                    style: {
                        color: '#f00',
                        fontSize: 16,
                        fontWeight:"bold"
                    }
                }
            }]
        },
        tooltip: {
            shared: true,
            useHTML: true,
            headerFormat: '<b>{point.key}</b><table>',
            pointFormat: '<tr>' +
                '<td><b>{series.name}：{point.y} mmHg</b></td></tr>',
            footerFormat: '</table>',
            valueDecimals: 0,
            crosshairs: [{
                width: 2,
                color: '#ccc',
                dashStyle: 'shortdot'
            }]
        },
        plotOptions: {
            spline: {
                lineWidth: 4,
                states: {
                    hover: {
                        lineWidth: 5
                    }
                },
                marker: {
                    enabled: false
                }
            }
        },
        series: [{
            name: '低血压',
            data:  [75, 25, 75, 75, 75, 75, 75, 75, 80, 80]

        },{
            name: '高血压',
            data: [142, 25, 142, 142, 142, 142, 142, 142, 120, 95]

        }],
        colors:['#cb4987','#20b0d5'],
        navigation: {
            menuItemStyle: {
                fontSize: '10px'
            }
        }
    });

}
});



</script>

</html>
