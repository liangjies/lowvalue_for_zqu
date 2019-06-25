<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="WebApplication1.Message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/master.css" rel="stylesheet" type="text/css" />
    <link href="css/MainStyle.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-color: #808080; margin-top: 0; margin-left: 0; margin-right: 0; margin-bottom: 0;">
    <form id="form1" runat="server">
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
                                    <td style="text-align: left; width: 300px"><a href="./" style="text-decoration: none;">首页>>信息浏览</a> </td>
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
                            <td style="font-size: 15px;">
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>


            <div class="foot">
                <p class="text-align:center">
                    Copyright &copy;2019 &nbsp;&nbsp;&nbsp;&nbsp;
                </p>
            </div>
        </div>
    </form>
</body>
</html>
