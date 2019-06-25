using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1.admin
{
    public partial class news_AddFile : System.Web.UI.Page
    {
        public int execute(String sql)
        {
            //执行SQL命令返回影响行数
            string constr = "Data Source=DESKTOP-JLKEOJG;Initial Catalog=db_lowvalue;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int num = cmd.ExecuteNonQuery();
            con.Close();
            return num;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //判断是否登陆
            if (Session["U_User"] == null)
            {
                Response.Write("<script>alert('未登陆！');window.location.href = '../default.aspx';</script>");
                return;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string U_User = Session["U_User"].ToString();
            if (TextBox1.Text == "" || TextBox2.Text == "")
                return;
            //添加文件
            string sql = string.Format("insert File(F_Title,F_Link,F_User,F_Time) values ('{0}','{1}','{2}','{3}')", TextBox1.Text, TextBox2.Text, U_User, DateTime.Now.ToString());
            if (execute(sql) > 0)
            {
                Response.Write("<script>alert('添加成功！');</script>");
                TextBox1.Text = string.Empty;  //清空文本框
                TextBox2.Text = string.Empty;  //清空文本框
            }
            else
            {
                Response.Write("<script>alert('添加失败，请稍后再试！');</script>");
            }
        }
    }
}