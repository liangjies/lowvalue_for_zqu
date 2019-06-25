using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class leaveme : System.Web.UI.Page
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
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
                return;
            //添加文章
            string sql = string.Format("insert LeaveMessage(L_Title,L_Content,L_Time) values ('{0}','{1}','{2}')", TextBox1.Text, TextBox2.Text, DateTime.Now.ToString());
            if (execute(sql) > 0)
            {
                Response.Write("<script>alert('反馈成功！');</script>");
                TextBox1.Text = string.Empty;  //清空文本框
                TextBox2.Text = string.Empty;  //清空文本框
            }
            else
            {
                Response.Write("<script>alert('反馈失败，请稍后再试！');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = string.Empty;  //清空文本框
            TextBox2.Text = string.Empty;  //清空文本框
        }
    }
}