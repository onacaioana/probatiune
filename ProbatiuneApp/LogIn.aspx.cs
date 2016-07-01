﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ProbatiuneApp
{
    public partial class LogIn : System.Web.UI.Page
    {
        private BAL.BusinessLayer pBAL = new BAL.BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                if (Request.Cookies["UserName"] != null)
                {
                    txtusername.Value = Request.Cookies["UserName"].Value;
                    Response.Redirect("Default.aspx");
                }
            }
           
        }

  
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            /* if (chkRememberMe.Checked)
             {
                 Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                 Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
             }
             else
             {
                 Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                 Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                  Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
             Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);

             Response.Cookies["UserName"].Value = txtusername.Value.Trim();
             Response.Cookies["Password"].Value = txtpassword.Value.Trim();

             }*/

           
            if (pBAL.LogIn(txtusername.Value, txtpassword.Value) )
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                

                Response.Cookies["UserName"].Value = txtusername.Value.Trim();
               

                pBAL.UpdateIP(txtusername.Value);
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("<script>alert('Please enter valid Username and Password')</script>");
            }
            
        }
    }
}
