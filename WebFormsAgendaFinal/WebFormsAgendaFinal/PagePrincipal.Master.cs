﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsAgendaFinal
{
    public partial class PagePrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //resolvendo a autenticação
            if (Request.Cookies["login"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
           
        }
    }
}