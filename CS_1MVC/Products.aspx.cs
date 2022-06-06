using CS_1MVC.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS_1MVC
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* product productRepositories = new product();
             productRepositories.getProduct();*/
            if (!IsPostBack)
            {
                bindDataProducts();
            }
        }
        private void bindDataProducts()
        {
            product productRepositories = new product();
            GDProductList.DataSource = productRepositories.getProduct();
            GDProductList.DataBind();
        }
    }
}