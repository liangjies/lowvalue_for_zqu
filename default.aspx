<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>肇庆学院低值品管理系统</title>
    <link href="../css/master.css" rel="stylesheet" type="text/css" />
    <link href="../css/MainStyle.css" type="text/css" rel="stylesheet" />
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
                                <td style="text-align: left; width: 300px"><a href="./" style="text-decoration: none;">首页</a> </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>

        <div class="content">
            <form id="form1" runat="server">
                <div style="width: 990px; overflow: hidden; height: 400px;">
                    <div style="float: left; width: 260px; overflow: hidden;">



                        <table style="border-collapse: collapse; border-spacing: 0; padding: 0; width: 100%">

                            <tr>
                                <td colspan="2" style="text-align: center">用户登录</td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: left"></td>
                            </tr>
                            <tr>
                                <td class="style2" style="height: 25px">账 号： </td>
                                <td style="text-align: left; height: 30px">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2" style="height: 25px">密 码： </td>
                                <td style="text-align: left; height: 30px">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2" style="height: 25px">验证码：</td>
                                <td style="text-align: left; height: 30px">
                                    <asp:TextBox ID="TextBox3" runat="server" Style="width: 76px;"></asp:TextBox>
                                    <asp:ImageButton ID="ibtn_yzm" runat="server" />
                                    <a href="javascript:changeCode()" style="text-decoration: underline; font-size: 10px;"></a>
                                </td>
                                <script type="text/javascript">
                                    function changeCode() {
                                        document.getElementById('ibtn_yzm').src = document.getElementById('ibtn_yzm').src + '?';
                                    }
                                </script>
                            </tr>

                            <tr>
                                <td class="style1"></td>
                                <td style="text-align: left"></td>
                            </tr>
                            <tr>
                                <td colspan="2" class="align:text-center">
                                    <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" class="ButtonCss" Style="font-size: Medium;" />
                                </td>
                            </tr>
                        </table>
                    </div>


                    <div style="float: right; width: 700px; overflow: hidden; white-space: nowrap;">
                        <table class="width:800px">
                            <tr>
                                <td class="height:5px"></td>
                            </tr>
                            <tr>
                                <td class="align:left">
                                    <br />
                                    最新信息<br />
                                    <br />
                                </td>
                            </tr>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
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
    </div>
</body>
</html>


