
using Eagle_Hotel_System;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Eagle_Hotel_Web_Master
{
    public partial class Login : System.Web.UI.Page
    {
        Function fn = new Function();
        String query;

        protected void Page_Load(object sender, EventArgs e)
        {


        }


        protected void bt_login_Click1(object sender, EventArgs e)
        {
    
            query = "select * from TB_usuarios WHERE usuario='"+ tx_user.Text.Trim() + "' And senha='"+ tx_pass.Text.Trim() + "' ";
            DataSet ds = fn.GetData(query);

            try
            {
                string user = ds.Tables[0].Rows[0][1].ToString();
                string pass = ds.Tables[0].Rows[0][2].ToString();

                if (user == tx_user.Text.Trim() && pass == tx_pass.Text.Trim())
                {
                    Session["username"] = tx_user.Text.Trim();
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    lb_mensagem.Text = "usuario não encontrado";
                }
            }
            catch
            {
                lb_mensagem.Text = "Usuario ou senhas incorretos";
            }
                
                
                
            }

            

        
    }
}