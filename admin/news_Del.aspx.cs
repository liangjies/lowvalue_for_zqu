using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1.admin
{
    public partial class news_Del : System.Web.UI.Page
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
            //判断文章id是否空
            if (Request.Params["id"] == null)
            {
                Response.Write("<script>window.location.href = 'default.aspx';</script>");
                return;
            }
            string M_ID = Request.Params["id"];
            string sql = string.Format("DELETE FROM Message WHERE M_ID={0}", M_ID);

            if (execute(sql) > 0)
            {
                Response.Write("<script>alert('删除成功！');window.location.href = 'default.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('删除失败，请稍后再试！');;history.go(-2);</script>");
            }
        }
    }
}