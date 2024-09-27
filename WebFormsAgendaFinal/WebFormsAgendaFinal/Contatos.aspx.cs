using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Threading.Tasks;

namespace WebFormsAgendaFinal
{
    public partial class Contatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Buttoninserir_Click(object sender, EventArgs e)
        {
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
                    cmd.CommandText = "INSERT INTO contato (nome, email, telefone) VALUES (@nome, @email,@telefone)";
                    cmd.Parameters.AddWithValue("@nome", txbnome.Text);
                    cmd.Parameters.AddWithValue("@email", txbemail.Text);
                    cmd.Parameters.AddWithValue("@telefone", txbtelefone.Text);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();

                }
            }
            else
            {
                Console.WriteLine("String de conexão não encontrada.");
            }
        }
    }
}
