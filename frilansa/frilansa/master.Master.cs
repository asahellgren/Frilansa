using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace frilansa
{
    public partial class master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_OnClick(object sender, EventArgs e)
        {
            //try
            //{
            //    var search = this.tbSearch.Text;
            //    Response.Redirect("search_results.aspx?searchtext=" + search);
            //}
            //catch (Exception ex)
            //{
            //    Response.Write(ex.Message);
            //}
        }
    }
}