<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leaveme.aspx.cs" Inherits="WebApplication1.leaveme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>意见反馈</title>
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
                                <td style="text-align: left; width: 300px"><a href="./" style="text-decoration: none;">首页>>意见反馈</a> </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <form id="form1" runat="server">
            <div class="content" style="text-align: center">
                <p>
                    意见反馈
                </p>
                <p>
                    标题：<asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="452px"></asp:TextBox>
                </p>
                <p>
                    内容：<asp:TextBox ID="TextBox2" runat="server" Height="396px" Width="452px" TextMode="MultiLine"></asp:TextBox>
                </p>
                <p>
                    &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="发表" OnClick="Button1_Click" />
                    &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="清空" OnClick="Button2_Click" />
                </p>
            </div>
        </form>
    </div>
    <div class="foot">
        <p class="text-align:center">
            Copyright &copy;2019 &nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </div>
</body>
</html>

