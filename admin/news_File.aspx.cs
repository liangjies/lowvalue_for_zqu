using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //判断是否登陆
            if (Session["U_User"] == null)
            {
                Response.Write("<script>alert('未登陆！');window.location.href = '../default.aspx';</script>");
                return;
            }
            //数据显示
            string constr = "Data Source=DESKTOP-JLKEOJG;Initial Catalog=db_lowvalue;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            string sql = string.Format("SELECT F_ID,F_Title,CONVERT(varchar(10),M_Time, 120) as 'Date' FROM File");
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            string text = "";

            while (reader.Read())
            {
                string a = "<tr><td class=\"items\"><table width = \"100%\" cellpadding=\"0\" cellspacing=\"0\"><tr><td align = \"left\" ><a href=\"Mshow.aspx?id=";
                string b = "\" style=\"cursor:hand;\" target=\"_blank\"><img alt = \"\" src=\"images/point.gif\" border=\"0\" width=\"12px\" height=\"12px\"/>";
                string c = "</a></td><td align = \"right\" >[";
                string d = "]&nbsp;&nbsp;<a href=\"news_Edit.aspx?id=";
                string f = "\" style=\"cursor:hand;\" target=\"_self\">编辑</a>&nbsp;|&nbsp;<a href=\"news_Del.aspx?id=";
                string g = "\" style=\"cursor:hand;\" target=\"_self\">删除</a></td></tr></table></td></tr>";
                //string[] str = reader[2].ToString().Split(' ');
                text = text + a + reader[0] + b + reader[1] + c + reader[2] + d + reader[0] + f + reader[0] + g;
            }

            con.Close();
            Label2.Text = text;
        }
    }
}