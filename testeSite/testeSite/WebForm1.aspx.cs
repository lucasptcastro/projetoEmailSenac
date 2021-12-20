using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testeSite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void btnValidar_Click(object sender, EventArgs e)
        {
            string Nome = nome.Text;
            string Email = email.Text;
            string Telefone = telefone.Text;
        } 
    }
}