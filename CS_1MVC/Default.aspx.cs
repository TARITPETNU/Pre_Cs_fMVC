﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS_1MVC
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void changeBtn_Click(object sender, EventArgs e)
        {
            Server.Transfer("Products.aspx");
        }
    }
}