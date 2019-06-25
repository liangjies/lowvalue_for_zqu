<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="news_File.aspx.cs" Inherits="WebApplication1.admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>文件管理</title>
    <link href="../css/master.css" rel="stylesheet" type="text/css" />
    <link href="../css/MainStyle.css" type="text/css" rel="stylesheet" />
</head>
<body style="background-color: #808080; margin-top: 0; margin-left: 0; margin-right: 0; margin-bottom: 0;">
    <div class="out">
        <div class="top">
            <table style="border: 0; width: 998px; padding: 0; border-collapse: collapse; border-spacing: 0; height: 160px;">
                <tr>
                    <td style="background-image: url(../images/logo.jpg); height: 120px"></td>
                </tr>
                <tr>
                    <td style="height: 20px">
                        <table class="menu" style="background-image: url(../images/nv.jpg); border-collapse: collapse; border-spacing: 0; padding: 0; width: 100%">
                            <tr>
                                <td style="text-align: center"><a href="default.aspx">文章管理</a></td>
                                <td style="text-align: center"><a href="news_Add.aspx">添加文章</a></td>
                                <td style="text-align: center"><a href="news_File.aspx">文件管理</a></td>
                                <td style="text-align: center"><a href="news_AddFile.aspx">添加文件</a></td>
                                <td style="text-align: center"><a href="news_User.aspx">用户管理</a></td>
                                <td style="text-align: center"><a href="leaveme.aspx">退出</a></td>
                            </tr>
                        </table>
                    </td>
                </tr>

            </table>
        </div>
        <form id="form1" runat="server">
            <div class="content" style="text-align: center">
                <p>文件管理</p>

                <div style="width: 990px; overflow: hidden; height: 400px;">
                    <table class="width:800px">
                        <tr>
                            <td class="height:5px"></td>
                        </tr>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>

                    </table>
                </div>
            </div>

            <span style="background-repeat: repeat-x; background-image: url('images/line.gif'); display: block; width: 100%; height: 1px;"></span>


            <div class="foot">
                <p class="text-align:center">
                    Copyright &copy;2019 &nbsp;&nbsp;&nbsp;&nbsp;
                </p>
            </div>
        </form>
    </div>
</body>
</html>
