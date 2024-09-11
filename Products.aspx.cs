using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Townbush_Pharmacy_Website
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // Format ProdName to be in title case
                e.Row.Cells[0].Text = ToTitleCase(e.Row.Cells[0].Text);

                // Format ProdDescription to be in title case
                e.Row.Cells[1].Text = ToTitleCase(e.Row.Cells[1].Text);

                // Format Form to be in title case
                e.Row.Cells[2].Text = ToTitleCase(e.Row.Cells[2].Text);
            }
        }

        // Utility method to convert a string to title case
        public string ToTitleCase(string str)
        {
            return System.Globalization.CultureInfo.CurrentCulture.TextInfo.ToTitleCase(str.ToLower());
        }
    }
}