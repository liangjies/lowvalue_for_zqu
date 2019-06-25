using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace WebApplication1
{
    public partial class Mshow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (id == null)
            {
                Response.Redirect("Mshow.aspx?id=1", false);
                return;
            }
            string constr = "Data Source=DESKTOP-JLKEOJG;Initial Catalog=db_lowvalue;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

            string sql = string.Format("SELECT * FROM Message WHERE M_Id=@id");

            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();

            if (rd.Read() && !IsPostBack)
            {

                Label1.Text = rd["M_Title"].ToString();
                Label2.Text = rd["M_Time"].ToString();
                Label3.Text = rd["M_Content"].ToString();
            }
            con.Close();

                
      
        }
    }
}