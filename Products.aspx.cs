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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int rowIndex = GridView1.SelectedIndex;
            int prodID = Convert.ToInt32(GridView1.DataKeys[rowIndex].Values["ProdID"]);
            string prodName = GridView1.DataKeys[rowIndex].Values["ProdName"].ToString();
            decimal price = Convert.ToDecimal(GridView1.DataKeys[rowIndex].Values["ProdPrice"]);
            int qty = Convert.ToInt32(GridView1.DataKeys[rowIndex].Values["Quantity"]);

            CartItem cartItem = new CartItem
            {
                ProdID = prodID,
                ProdName = prodName,
                ProdPrice = price,
                Quantity = qty,
                SubTotal = price * qty
            };

            List<CartItem> cart = Session["Cart"] as List<CartItem> ?? new List<CartItem>();

            // Check if the item is already in the cart
            var existingItem = cart.FirstOrDefault(c => c.ProdID == cartItem.ProdID);
            if (existingItem != null)
            {
                existingItem.Quantity++; // Increment quantity if it’s already in cart
            }
            else
            {
                cart.Add(cartItem); // Add new item to cart
            }

            // Update the session
            Session["Cart"] = cart;

            // Optionally, provide feedback or refresh the page
            Response.Redirect("Cart.aspx");
        }
    }
}