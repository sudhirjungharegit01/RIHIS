<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
        .table_tr_td{
	padding:10px;
}
.table_css {
background-color: none;
}
.topheaderTop{
	background-color:#903;
	position:fixed;
	top:0px;
	left:0px;
	width:100%;
	padding:10px 10px 10px 100px;
	color:#FFF;
	font-size:16px;
	z-index:50;
	display:none;
}

.topheader{
	padding:10px;
	background-color:#FFF;
	box-shadow: 5px 5px 5px #999999;
	margin-bottom:1px;
	width:100%;
	z-index:40;
}

.vl {
  border-left: 1px solid  #999;
  height: 150px;
  display:inline;
  float:left;
}
.titleheading{
	font-family:Georgia, "Times New Roman", Times, serif;
	font-size:45px;
	color:#006;
	padding-left:100px;
}   
        </style>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).scroll(function() {
  var y = $(this).scrollTop();
  if (y > 200) {
    $('.topheaderTop').fadeIn(1000);
  } else {
    $('.topheaderTop').fadeOut(1000);
  }
});
</script>
</head>

<body>
<div>
<div class="topheaderTop"><span class="glyphicon glyphicon-earphone"></span> 1-855-840-4774&nbsp;&nbsp;&nbsp; <span class="glyphicon glyphicon-envelope"></span> info@his.com<div style="float:right"><span class="glyphicon glyphicon-home"></span>Home    &nbsp;&nbsp;&nbsp;&nbsp;<span  class="glyphicon glyphicon-log-out"></span>Logout</div></div>
<div class="topheader"><table  class="table_css" width="0" border="0" cellspacing="5" cellpadding="5">
  <tr>
    <td width="140"><img src="http://www.dhs.ri.gov/assets/img/logo_DHS.png" /></td><td width="11" class="table_tr_td"><div class="vl"></div></td>
    <td class="table_tr_td" width="258"><img src="https://healthyrhode.ri.gov/HIXWebI3/img/homepage/logo_healthsourceri.jpg" /></td>
    <td width="auto" style="padding-top:20px;"><h1 class="titleheading">Health <font color="#FF6600">Insurance</font> Project </h1></td>
  </tr>
</table>
</div>
</div>
</body>
</html>
    