<%@ Page Title="信息共享库" Language="C#" AutoEventWireup="true" CodeBehind="TechInfoDoc.aspx.cs" Inherits="WebApplication1.TechInfoDoc" %>

<!DOCTYPE html>

<html lang="zh-cn">
<head runat="server">
    <script src="../Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="../Scripts/bootstrap.min.js" type="text/javascript"></script>
      
    <link href="~/Content/bootstrap.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title><%:Page.Title %></title>
</head>
<body  >

    <form id="form1" runat="server"> 
    <header>
        <nav class="navbar navbar-default" role="navigation">
            <div class="container-fluid">
               <div>
                    <ul id="myTab" class="nav nav-tabs">
                        <li> <a class="navbar-brand" href="Default.aspx"><span class="glyphicon glyphicon-home"></span> 综合信息服务平台</a></li>
                        <li class="active"><a href="#tab1" data-toggle="tab"><span class="glyphicon glyphicon-book"></span> 技术文档</a></li>
                        <li ><a href="#tab2" data-toggle="tab"><span class="glyphicon glyphicon-book"></span> 规范性文档</a></li>
                        <li ><a href="#tab3" data-toggle="tab"><span class="glyphicon glyphicon-book"></span> 经验分享</a></li>
                        <li style="float:right"><div >
                    <section id="login">
                        <asp:LoginView ID="LoginView1" runat="server" ViewStateMode="Disabled">
                            <AnonymousTemplate>
                               <ul>
                                     <li><a id="registerLink" runat="server" href="~/Account/Register.aspx"><span class="glyphicon glyphicon-user"></span> 注 册</a></li>
                                     <li><a id="loginLink" runat="server" href="~/Account/Login.aspx"><span class="glyphicon glyphicon-log-in"></span> 登 录</a></li>
                               </ul>         
                            </AnonymousTemplate>
                            <LoggedInTemplate>
                                <p>
                                    您好！欢迎您, <a id="A1" runat="server" class=" username " href="~/Account/Manage.aspx" title="管理您的账户">
                                        <asp:LoginName ID="LoginName1" runat="server" CssClass="username" />
                                    </a>!
                                <asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutText="退 出" LogoutPageUrl="~/" />
                                </p>
                            </LoggedInTemplate>
                        </asp:LoginView>
                    </section>
                </div></li>
                    </ul>
               </div>
               
            </div>
        </nav> 
         
    </header>


<div id="myTabContent" class="tab-content">
    <div class="tab-pane fade in active " id="tab1">

        <div class="row-fluid">
            <div class="col-xs-2">
                <ul class="nav nav-tabs nav-stacked" >
                    <li class="active"><a href="#radartab" data-toggle="tab"><span class="glyphicon glyphicon-file"></span> 雷达设备管理室</a></li>
                    <li><a href="#navgationtab" data-toggle="tab"><span class="glyphicon glyphicon-file"></span> 导航设备管理室</a></li>
                    <li><a href="#powertab" data-toggle="tab"><span class="glyphicon glyphicon-file"></span> 动力设备管理室</a></li>
                    <li><a href="#terminaltab" data-toggle="tab"><span class="glyphicon glyphicon-file"></span> 终端设备管理室</a></li>
                    <li><a href="#communicationtab" data-toggle="tab"><span class="glyphicon glyphicon-file"></span> 通信枢纽室</a></li>
                </ul>
            </div>
            <div class="col-xs-10">
                <div class="tab-content" id="myTabContent1">
                    <div id="radartab" class="tab-pane in active">
                      
                    <div>
                        <table class="table table-hover table-bordered">
                            <caption>文件管理<div class="pull-right"><input type="text" class="input-medium search-query " placeholder="search"/>
                                        <button type="submit" class="bottom"><span class="glyphicon glyphicon-search"></span> Search</button></div></caption>
                           
                            <tbody>
                                <tr>
                                    <td class="text-center"><div class="well-lg"><a href="#xyModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 襄阳Thales雷达</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#ycModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 宜昌Thales雷达</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#whsModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 武汉Selex雷达</a></div></td>
                                </tr>
                                <tr>
                                    <td class="text-center"><div class="well-lg"><a href="#blfModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 白莲南京十四所一次雷达</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#blsModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 白莲南京十四所二次雷达</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#bqModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 柏泉Raytheon雷达</a></div></td>
                                </tr>
                                <tr>
                                    <td class="text-center"><div class="well-lg"><a href="#esModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 恩施Indra雷达</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#whcjModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 武汉Terma场监雷达</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#whmlatModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 民航二所多点定位系统</a></div></td>
                                </tr>
                                <tr>
                                    <td class="text-center"><div class="well-lg"><a href="#whadsbModal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> ADS-B系统</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#qt1Modal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 其它...</a></div></td>
                                    <td class="text-center"><div class="well-lg"><a href="#qt2Modal" role="button" class="btn btn-lg" data-toggle="modal"><span class="glyphicon glyphicon-folder-open"></span> 其它...</a></div></td>
                                </tr>
                            </tbody>
                        </table>
<!-- 模态框-->
   <!--1-->
    <div class="modal  fade" id="xyModal" tabindex="-1" role="dialog" aria-labelledby="xyModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="xyModalLabel">襄阳Thales雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div>  
   <!--2-->
    <div class="modal  fade" id="ycModal" tabindex="-1" role="dialog" aria-labelledby="ycModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="ycModalLabel">宜昌Thales雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div> 
   <!--3-->
    <div class="modal  fade" id="whsModal" tabindex="-1" role="dialog" aria-labelledby="whsModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="whsModalLabel">武汉Selex雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div> 
   <!--4-->
    <div class="modal  fade" id="blfModal" tabindex="-1" role="dialog" aria-labelledby="blfModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="blfModalLabel">白莲一次雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div> 
   <!--5-->
    <div class="modal  fade" id="blsModal" tabindex="-1" role="dialog" aria-labelledby="blsModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="blsModalLabel">白莲二次雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div> 
   <!--6-->
    <div class="modal  fade" id="bqModal" tabindex="-1" role="dialog" aria-labelledby="bqModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="bqModalLabel">柏泉Raytheon雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div> 
   <!--7-->
    <div class="modal  fade" id="esModal" tabindex="-1" role="dialog" aria-labelledby="esModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="esModalLabel">恩施Indra雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div> 
   <!--8-->
    <div class="modal  fade" id="whcjModal" tabindex="-1" role="dialog" aria-labelledby="whcjModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="whcjModalLabel">武汉场面监视雷达</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div> 
   <!--9-->
    <div class="modal  fade" id="whmlatModal" tabindex="-1" role="dialog" aria-labelledby="whmlatModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="whmlatModalLabel">武汉多点定位系统</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div>
<!--10-->
    <div class="modal  fade" id="whadsbModal" tabindex="-1" role="dialog" aria-labelledby="whadsbModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="whadsbModalLabel">武汉ADS-B系统</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div>
<!--11-->
    <div class="modal  fade" id="qt1Modal" tabindex="-1" role="dialog" aria-labelledby="qt1ModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="qt1ModalLabel">其它...</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div>
<!--12-->
    <div class="modal  fade" id="qt2Modal" tabindex="-1" role="dialog" aria-labelledby="qt2ModalLabel" aria-hidden="false" >
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="qt2ModalLabel">其它...</h4>
                                </div>
                                <div class="modal-body">
                                    <p>这里是我的内容</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" >提交更改</button>
                                </div>                              
                            </div>
                        </div>
    </div>     
                    </div> 
                                         
                    </div>
                    <div id="navgationtab" class="tab-pane">2</div>
                    <div id="powertab" class="tab-pane">3</div>
                    <div id="terminaltab" class="tab-pane">4</div>
                    <div id="communicationtab" class="tab-pane">5</div>
                </div>
            </div>
        </div>



    </div>
    <div class="tab-pane fade " id="tab2">
        <p>这是我的第二块内容</p>
    </div>
    <div class="tab-pane fade" id="tab3">
        <p>这是我得第三块内容</p>
    </div>
</div>
<footer>
   <div class="content-wrapper">
            <div class="float-bottom">
                <p>&copy; <%: DateTime.Now.Year %> - 民航湖北空管分局技术保障部www.tutorialspoint.com/bootstrap/bootstrap_glyph_icons.htm</p>
            </div>
        </div>
</footer>
    </form>



</body>
</html>
