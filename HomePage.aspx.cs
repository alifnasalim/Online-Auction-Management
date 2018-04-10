using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    BusinessLogic obj_business = new BusinessLogic();
    DataContext obj_datacontext = new DataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string query = "select* from tbl_login where username = '" + txtUsername.Text.ToString() + "' and password='"+ txtpwd.Text.ToString()+"'";

        DataTable dt = obj_datacontext.getdataTable(query);
        int refid = Convert.ToInt32(dt.Rows[0]["id"].ToString());
        if (dt.Rows.Count > 0)
        {
            Session["username"] = dt.Rows[0]["username"].ToString();

            if (dt.Rows[0]["usertype"].ToString() == "admin")
            {
                Session["userid"] = 0;
                Response.Redirect("admin/AdminHomePage.aspx?userid=" + Session["userid"].ToString());

            }
            else
            {
                string query1 = "select * from tbl_userdetails where ref_id = '" + refid + "'";
                DataTable dt1 = obj_datacontext.getdataTable(query1);
                Session["userid"] = Convert.ToInt32(dt1.Rows[0]["userid"].ToString());
                  
                if (Session["bidid"] == null)
                {
                   Response.Redirect("user/UserHomePage.aspx?userid=" + Session["userid"].ToString());

                }
                else
                {
                    Response.Redirect("user/Auction.aspx?pid=" + Session["bidid"].ToString());
                }
            }

            }
        


    }
    
    protected void ImageButton1_Command(object sender, CommandEventArgs e)
    {
      //    Response.Redirect("Products.aspx?catid=" + Convert.ToInt32(e.CommandArgument));

    }
}