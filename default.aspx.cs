using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ibtn_yzm.ImageUrl = "ImageCode.aspx";
            string constr = "Data Source=DESKTOP-JLKEOJG;Initial Catalog=db_lowvalue;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            string sql = string.Format("SELECT top 10 M_ID,M_Title,CONVERT(varchar(10),M_Time, 120) as 'Date' FROM Message order by M_Time desc");
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
                string d = "]&nbsp;&nbsp;</td></tr></table></td></tr>";
                //string[] str = reader[2].ToString().Split(' ');
                text = text + a + reader[0] + b + reader[1] + c + reader[2] + d;
            }

            con.Close();
            Label1.Text = text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string code = TextBox3.Text.ToLower().Trim();
            string scode = Session["ImageV"].ToString().ToLower().Trim();
            if (code != scode)
            {
                Response.Write("<script>alert('验证码输入不正确！')</script>");
                return;
            }
            string user = TextBox1.Text.Trim();
            string pwd = TextBox2.Text.Trim();
            string constr = "Data Source=DESKTOP-JLKEOJG;Initial Catalog=db_lowvalue;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            string sql = string.Format("SELECT count(*) FROM [User] WHERE U_User=@user and U_PWD=@pwd");

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pwd", pwd);
            con.Open();
            int count = (int)cmd.ExecuteScalar();

            if (count==1)
            {
                Session["U_User"] = user;
                Response.Redirect("/admin/default.aspx", false);
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                Response.Write("<script>alert('用户名或密码不正确！')</script>");
            }
            con.Close();
        }
    }
}