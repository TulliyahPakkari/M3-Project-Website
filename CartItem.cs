using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Townbush_Pharmacy_Website
{
    public class CartItem
    {
        public int ProdID { get; set; }
        public string ProdName {get; set; }
        public int ProdPrice { get; set; }
        public int Quantity { get; set; }
        public decimal SubTotal { get; set; }
        public decimal GetSubTotal()
        {
            return (ProdPrice * Quantity);
        }
    }
}