<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="UTF-8">
    <title>我的租赁</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
    <!--datatable-->
    <link rel="stylesheet" href="../css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/myrent.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="navbar" role="navigation">
      <div class="container-fluid container-nav">
          <!-- 点击收缩左边的菜单栏  + 缩小后左边菜单栏的显示 -->
          <ul class="nav navbar-nav navbar-actions navbar-left">
              <li class="visible-md visible-lg"><a href="index.html#"><i class="icon-th-large"></i></a></li>
              <li class="visible-xs visible-sm"><a href="index.html#"><i class="icon-align-justify"></i></a></li>
          </ul>
      
          <span class="teachCenterTitle">基地管理系统</span>
          <!-- Navbar Left -->
    
          <!-- Navbar Right -->
          <div class="navbar-right">
              <!-- Notifications -->
              <ul class="notifications" avalonctrl="subNotificationsController">
                  <li class="hidden-sm hidden-xs">
                      <a href="#" class="dropdown-toggle notification-icon" data-toggle="dropdown">
                          <i class="icon-envelope"></i>
                              <!--ms-if-->
                      </a>
                      <ul class="dropdown-menu">
                          <li class="dropdown-header" style="text-align: center;">
                          <strong>未读消息列表</strong>
                          </li>    
                          <li class="dropdown-menu-footer text-center">
                              <a href="../teach/notifications.html">更多消息</a>
                          </li>
                      </ul>
    
                  </li>
                  <li>
                      <a href="#outModal" class="dropdown-toggle notification-icon" data-toggle="modal">
                          <i class="icon-remove"></i>
                      </a>
                  </li>
              </ul>
    
              <!-- End Notifications -->
          </div>
          <!-- End Navbar Right -->
      </div>
    </div>



	<div class="container-fluid content">
    	<div class="row">
        	
        	<div class="sidebar">
					<div class="sidebar-collapse">
						<!-- Sidebar Header Logo-->
						<div class="sidebar-header ">
							<a href="#" target="_blank"><img src="../image/manage-logo.png" alt=""></a>
						</div>
						
						<!-- Sidebar Menu-->
						<div class="sidebar-menu" style="height: 384px;">
							<nav id="menu" class="nav-main" role="navigation">
								<ul class="nav nav-sidebar">
									<div class="panel-body text-center">
										<div class="bk-avatar">
											<a href="#"><img class="img-circle bk-img-60" alt="" src="../image/psu.jpg"></a>
											<!--ms-if-->
										</div>
										<div class="bk-padding-top-10">
											<i class="icon-circle text-success"></i> 
											<small>罗旭</small>
											<!--ms-if-->
										</div>
									</div>
									<div class="divider2"></div>
									
									
									<li class="menuItem">
										<a href="index.html">
											<i class="icon-home" aria-hidden="true"></i><span>主界面</span>
										</a>
									</li>
									
									 <li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>我的工作</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="#"><span class="text">我的租赁</span></a></li>
											<li><a href="#"><span class="text">我的实习</span></a></li>
											<li><a href="#"><span class="text">我的报修</span></a></li>
											<li><a href="#"><span class="text">我的基地</span></a></li>
										</ul>
									</li>

									<li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>审批工作</span>
										</a>
										<ul class="nav nav-children">
                                            <li><a href="#"><span class="text">租赁审批</span></a></li>
                                            <li><a href="#"><span class="text">实习审批</span></a></li>
                                            <li><a href="#"><span class="text">基地审批</span></a></li>
                                            <li><a href="#"><span class="text">基地审批</span></a></li>

										</ul>
									</li>

										<li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>数据管理</span>
										</a>
										<ul class="nav nav-children">
                                        	<li><a href="#"><span class="text"> 发布通知公告</span></a></li>
                                        	<li><a href="#"><span class="text"> 土地布局设置</span></a></li>
                                        	<li><a href="#"><span class="text"> 实习基地维护</span></a></li>
                                            <li><a href="#"><span class="text"> 土地租赁维护</span></a></li>
                                            <li><a href="#"><span class="text"> 实习计划维护</span></a></li>
                                            <li><a href="#"><span class="text"> 系统用户维护</span></a></li>
                                            <li><a href="#"><span class="text"> 系统权限设置</span></a></li> 
										</ul>
									</li>
									 <li class="menuItem nav-parent">
										<a>
											<i class="icon-copy" aria-hidden="true"></i><span>统计分析</span>
										</a>
										<ul class="nav nav-children">
											<li><a href="#"><span class="text">租赁统计</span></a></li>
											<li><a href="#"><span class="text">实习分析</span></a></li>
											<li><a href="#"><span class="text">实习基地统计</span></a></li>
										</ul>
									</li>									
									
								</ul>
							</nav>
						</div>
						<!-- End Sidebar Menu-->
					</div>
					<!-- Sidebar Footer-->
					<div class="sidebar-footer">
						<div class="copyright text-center">
							<div>湖南农业大学版权所有 </div>
						</div>
					</div>
					<!-- End Sidebar Footer-->
				</div>   <!-- End Sidebar--> 
		        
                
			<div class="main " style="min-height: 584px;">
					<!-- 当前地址导航 -->
					<div class="page-header">
						<div class="pull-left">
							<ol class="breadcrumb visible-sm visible-md visible-lg">
                            	<li><a href="index.html">位置</a></li>
								<li><a href="index.html"><i class=" icon-home"></i>首页</a></li>
                                <li><a href="index.html">我的工作</a></li>
                                <li><a href="index.html">我的租赁</a></li>
							</ol>
						</div>
						<div class="pull-right">
							<ol class="breadcrumb visible-sm visible-md visible-lg">
								<li><a href="index.html"><i class=" icon-building"></i>基地申报</a></li>
                                <li><a href="index.html"><i class="icon-legal"></i>土地租赁</a></li>
                                <li><a href="index.html"><i class="icon-user"></i>实习申请</a></li>
                                <li><a href="index.html"><i class="icon-home"></i>报修申请</a></li>
							</ol>
						</div>
					</div>
					<!-- 主面板内容 -->
					<div class="row form">

						<div class="col-lg-12">
							<div class=" col-md-offset-1 col-md-10">
                                <table id="table1" class="cell-border" cellspacing="0" width="100%">
                                    <thead>
                                        <tr bgcolor="#3B6290" style="color:#FFF">
                                            <th>开始日期</th>
                                            <th>租期</th>
                                            <th>基地名</th>
                                            <th>土地编号</th>
                                            <th>状态</th>
                                            <th>操作</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>2016.10</td>
                                            <td>1年</td>
                                            <td>长安基地</td>
                                            <td>#123</td>
                                            <td>提交中</td>
                                            <td>
                                            <span class="icon-plus-sign-alt">提交</span>
                                            <span class="icon-pencil" data-toggle="modal" data-target="#myModal">编辑</span>
                                            <span class="icon-trash">删除</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2016.10</td>
                                            <td>1年</td>
                                            <td>长安基地</td>
                                            <td>#124</td>
                                            <td>审核中</td>
                                            <td>
                                            <span class="icon-search" data-toggle="modal" data-target="#myModal">查看</span>
                                            <span class="glyphicon glyphicon-share-alt">撤回</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                  </table>
                             </div> 
						</div>
                        
                        <!--弹出框-->
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content" style="border:#4D719B 8px solid">
                                  <div class="modal-header" style="background:#4D719B; color:#FFF">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                    <h4 class="modal-title text-center" id="myModalLabel">土地租赁详情及修改</h4>
                                  </div>
                                  <div class="modal-body table-responsive">
                                    <table class="table">
                                        <tr>
                                            <td>基地名 ： </td>
                                            <td><input type="text" value="基地的名称"></td>
                                            <td>租赁人 ： </td>
                                            <td><input type="text" value="租赁人的名称"></td>
                                        </tr>
                                        <tr>
                                            <td>所属学院 ： </td>
                                            <td><input type="text" value="农学院"></td>
                                            <td>面向专业 ： </td>
                                            <td><input type="text" value="茶学"></td>
                                        </tr>
                                        <tr>
                                            <td>土地面积 ： </td>
                                            <td><input type="text" value="12平方米"></td>
                                            <td>适宜种植内容 ： </td>
                                            <td><input type="text" value="玉米"></td>
                                        </tr>
                                        <tr>
                                            <td>可承担人数 ： </td>
                                            <td><input type="text" value="70人"></td>
                                            <td>建筑面积 ： </td>
                                            <td><input type="text" value="10平方米"></td>
                                        </tr>
                                        <tr>
                                            <td>土地名称 ： </td>
                                            <td><input type="text" value="景园气象站"></td>
                                            <td>土地编号 ： </td>
                                            <td><input type="text" value="#001"></td>
                                        </tr>
                                        <tr>
                                            <td>起止年限 ： </td>
                                            <td><input type="text" value="2013-08-01"></td>
                                            <td>———————</td>
                                            <td><input type="text" value="2017-08-01"></td>
                                        </tr>
                                        <tr>
                                            <td>计划种植内容 ： </td>
                                            <td><input type="text" value="玉米"></td>
                                        </tr>
                                    </table>
                                  </div>
                                  <div class="modal-footer table-responsive">
                                    <table class="table">
                                        <tr>
                                            <td>申请材料</td>
                                            <td><input type="text"></td>
                                            <td><button type="button">浏览</button><button type="button">上传</button></td>
                                            <td width="160px"></td>
                                        </tr>
                                    </table>
                                    <center>
                                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                    <button type="button" class="btn btn-primary">确定</button>
                                    </center>
                                  </div>
                                </div>
                              </div>
                            </div>




						<div class="col-lg-12 form-group">
							<div class=" col-md-offset-1 col-md-10">
								<table id="table2" class="cell-border" cellspacing="0" width="100%">
                                   <thead>
                                        <tr bgcolor="#ECF1F5">
                                            <td>租赁历史</td>
                                            <td colspan="6" ><!--筛选<span class="glyphicon glyphicon-sort-by-attributes"> </td>-->
                                                <ul id="dropdown_show">
                                                	<li><span class="icon-filter" onClick="showsubmenu()">筛选</span>
                                                    	<ul id="hide_ul" style="display:none;">
                                                        	<li>
                                                            	<form>
                                                            	<table class="table">
                                                            	<tr>
                                                                	<td>
                                                                    基地名：
                                                                    <select  name="" id="">
                                                                      <option value="">显示全部</option>
                                                                      <option value="">耘园科教综合基地</option>
                                                                      <option value="">西南角农学基地</option>	
                                                                    </select>  
                                                                    </td>
                                                                    <td>
                                                                    起止年份：
                                                                    <select  name="" id="">
                                                                      <option value="">请选择</option>
                                                                      <option value="">2015</option>
                                                                      <option value="">2016</option>	
                                                                    </select>年
                                                                    -----
                                                                     <select  name="" id="">
                                                                      <option value="">请选择</option>
                                                                      <option value="">2015</option>
                                                                      <option value="">2016</option>	
                                                                    </select>年
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                	<td>
                                                                    	土地编号
                                                                        <select  name="" id="">
                                                                          <option value="">显示全部</option>
                                                                          <option value="">#1</option>
                                                                          <option value="">#2</option>	
                                                                        </select>  
                                                                    </td>
                                                                    <td>
                                                                    最终状态
                                                                    <select  name="college" id="college" size="1">
                                                                      <option value="">显示全部</option>
                                                                      <option value="">申请成功</option>
                                                                      <option value="">申请失败</option>	
                                                                    </select>  
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                	<td colspan="2">
                                                                    	<button type="reset" class="btn btn-primary" >重置</button>
                                    									<button onClick="hidesubmenu()" type="button" class="btn btn-primary">完成</button>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        		</form>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                        </tr>
                                        <tr style="background:#eeeff4">
                                            <th>序号</th>
                                            <th>开始日期</th>
                                            <th>结束日期</th>
                                            <th>基地名</th>
                                            <th>土地编号</th>
                                            <th>最终状态期</th>
                                            <th>详情</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>2016.10</td>
                                            <td>2016.10</td>
                                            <td>耘园科教综合基地</td>
                                            <td>#123</td>
                                            <td>申请成功</td>
                                            <td><span class="icon-search" data-toggle="modal" data-target="#myModal2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>2016.10</td>
                                            <td>2016.10</td>
                                            <td>耘园科教综合基地</td>
                                            <td>#123</td>
                                            <td>申请成功</td>
                                            <td><span class="icon-search" data-toggle="modal" data-target="#myModal2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>2016.10</td>
                                            <td>2016.10</td>
                                            <td>耘园科教综合基地</td>
                                            <td>#123</td>
                                            <td>申请成功</td>
                                            <td><span class="icon-search" data-toggle="modal" data-target="#myModal2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>2016.10</td>
                                            <td>2016.10</td>
                                            <td>耘园科教综合基地</td>
                                            <td>#123</td>
                                            <td>申请成功</td>
                                            <td><span class="icon-search" data-toggle="modal" data-target="#myModal2"></span></td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>2016.10</td>
                                            <td>2016.10</td>
                                            <td>耘园科教综合基地</td>
                                            <td>#123</td>
                                            <td>申请成功</td>
                                            <td><span class="icon-search" data-toggle="modal" data-target="#myModal2"></span></td>
                                        </tr>
                                    </tbody>
                                  </table>
                              </div>
						</div>
						<!--弹出框2-->
						<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                              <div class="modal-dialog">
                                <div class="modal-content" style="border:#4D719B 8px solid">
                                  <div class="modal-header" style="background:#4D719B; color:#FFF">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                    <h4 class="modal-title text-center" id="myModalLabel">土地租赁详情及修改</h4>
                                  </div>
                                  <div class="modal-body table-responsive">
                                    <table class="table">
                                        <tr>
                                            <td>基地名 ： </td>
                                            <td><input type="text" value="基地的名称"></td>
                                            <td>租赁人 ： </td>
                                            <td><input type="text" value="租赁人的名称"></td>
                                        </tr>
                                        <tr>
                                            <td>所属学院 ： </td>
                                            <td><input type="text" value="农学院"></td>
                                            <td>面向专业 ： </td>
                                            <td><input type="text" value="茶学"></td>
                                        </tr>
                                        <tr>
                                            <td>土地面积 ： </td>
                                            <td><input type="text" value="12平方米"></td>
                                            <td>适宜种植内容 ： </td>
                                            <td><input type="text" value="玉米"></td>
                                        </tr>
                                        <tr>
                                            <td>可承担人数 ： </td>
                                            <td><input type="text" value="70人"></td>
                                            <td>建筑面积 ： </td>
                                            <td><input type="text" value="10平方米"></td>
                                        </tr>
                                        <tr>
                                            <td>土地名称 ： </td>
                                            <td><input type="text" value="景园气象站"></td>
                                            <td>土地编号 ： </td>
                                            <td><input type="text" value="#001"></td>
                                        </tr>
                                        <tr>
                                            <td>起止年限 ： </td>
                                            <td><input type="text" value="2013-08-01"></td>
                                            <td>———————</td>
                                            <td><input type="text" value="2017-08-01"></td>
                                        </tr>
                                        <tr>
                                            <td>计划种植内容 ： </td>
                                            <td><input type="text" value="玉米"></td>
                                        </tr>
                                    </table>
                                  </div>
                                </div>
                              </div>
                            </div>
                            
					</div>
				</div><!-- End Sidebar-->                 
                
                    
            
        </div><!--row end-->
    </div>
	<div class="clearfix"></div>
	<script>
    function showsubmenu(){
	var submenu=document.getElementById("hide_ul");
		if (submenu.style.display == 'none')
		{
			submenu.style.display = 'block';
		}
		else
		{
			submenu.style.display = 'none';
		}
		
	}
	 function hidesubmenu(){
		 var submenu=document.getElementById("hide_ul");
		 submenu.style.display = 'none';
		 }
    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery.min.js"></script>
    <!--datatable javascript-->
	<script src="../js/jquery.dataTables.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/main.js"></script>
  </body>
</html>