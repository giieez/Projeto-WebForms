using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsAgendaFinal
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btlogar_Click(object sender, EventArgs e)
        {
            String email = txbgmail.Text;
            String senha = txbsenha.Text;
            //
            // Inicializa rootWebConfig para acessar o arquivo de configuração da aplicação (Web.config)
            System.Configuration.Configuration rootWebConfig = System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration("~");

            // Recupera a string de conexão chamada "BancoAgendaConnectionString" do Web.config
            System.Configuration.ConnectionStringSettings connString;
            connString = rootWebConfig.ConnectionStrings.ConnectionStrings["BancoAgendaConnectionString"];

            // Verifica se a string de conexão foi encontrada
            if (connString != null)
            {
                // Cria a conexão com o banco de dados usando a string de conexão
                using (SqlConnection con = new SqlConnection(connString.ConnectionString))
                {
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandText = "select * from Usuario where email = @email and senha =@senha";
                    cmd.Parameters.AddWithValue("email", email);
                    cmd.Parameters.AddWithValue("senha", senha);
                    con.Open();
                    SqlDataReader registro = cmd.ExecuteReader();
                    if (registro.HasRows)
                    {

                        //adicionando cookie
                        HttpCookie login = new HttpCookie("login", txbgmail.Text);
                        Response.Cookies.Add(login);
                        
                        //direcionando para página principal
                        Response.Redirect("~/index.aspx");


                    }
                    else
                    {
                        //imagem de erro com JavaScript
                        Response.Write("<script> alert('Email ou senha incorretos!');</script>");
                        //ID1.Text = "Email ou senha incorretos!";
                    }





                }
            }
            else
            {
                Console.WriteLine("String de conexão não encontrada.");
            }
        }
    }     
}