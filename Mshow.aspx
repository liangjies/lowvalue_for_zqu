<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mshow.aspx.cs" Inherits="WebApplication1.Mshow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/master.css" rel="stylesheet" type="text/css" />
    <link href="css/MainStyle.css" type="text/css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }

        #ctl00_ContentPlaceHolder1_table7 {
            width: 987px;
        }
    </style>
</head>
<body style="background-color: #808080; margin-top: 0; margin-left: 0; margin-right: 0; margin-bottom: 0;">
    <div class="out">
        <div class="top">
            <table style="border: 0; width: 998px; padding: 0; border-collapse: collapse; border-spacing: 0; height: 160px;">
                <tr>
                    <td style="background-image: url(images/logo.jpg); height: 120px"></td>
                </tr>
                <tr>
                    <td style="height: 20px">
                        <table class="menu" style="border-collapse: collapse; border-spacing: 0; padding: 0; width: 100%">
                            <tr>
                                <td style="text-align: center"><a href="./">首页</a></td>
                                <td style="text-align: center"><a href="Message.aspx">信息浏览</a></td>
                                <td style="text-align: center"><a href="File.aspx">文件下载</a></td>
                                <td style="text-align: center"><a href="aboutvalue.aspx">关于系统</a></td>
                                <td style="text-align: center"><a href="leaveme.aspx">意见反馈</a></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="background-image: url(images/nv.jpg); height: 20px; text-align: left;">
                        <table style="border-collapse: collapse; border-spacing: 0; padding: 0; width: 100%; height: 20px">
                            <tr>
                                <td style="text-align: left; width: 300px"><a href="./" style="text-decoration: none;">首页>>信息详情</a> </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <div class="content">
            <div class="content">

                <table class="width:998px">
                    <tr>
                        <td style="font-size: 20px; font-weight: bold;">
                            <br />
                            <br />
                        </td>
                    </tr>

                </table>

                <form id="form1" runat="server">
                    <div style="width: 990px; overflow: hidden; height: 400px;">
                        <table id="ctl00_ContentPlaceHolder1_table7" class="border:0; cellpadding:0;border-collapse:collapse;">
                            <tr class="tr2">
                                <td colspan="2" style="padding-left: 5px; height: 26px">
                                    <h3>
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h3>
                                </td>
                            </tr>
                            <tr class="tr2">
                                <td colspan="2" style="padding-left: 5px;" class="auto-style1">发布时间：<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </td>
                            </tr>
                            <tr class="tr2">
                                <td colspan="2" style="padding-left: 5px; height: 26px; text-align: left;">&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p>【<a href="javascript:history.go(-1)">返回</a>】【<a href="javascript:window.opener=null;window.open('','_self');window.close();">关闭</a>】</p>
                                </td>
                            </tr>
                        </table>
                    </div>




                </form>
                <span style="background-repeat: repeat-x; background-image: url('images/line.gif'); display: block; width: 100%; height: 1px;"></span>
            </div>
            <div class="foot">
                <p class="text-align:center">
                    Copyright &copy;2011肇庆学院 资产与实验室管理处 电话：0758-2716366&nbsp;&nbsp;&nbsp;&nbsp;
           
                </p>
            </div>

        </div>
    </div>
</body>
</html>
