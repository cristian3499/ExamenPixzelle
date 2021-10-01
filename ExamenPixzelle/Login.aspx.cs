using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace ExamenPixzelle
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }    

        protected void btnIngresar_Click1(object sender, EventArgs e)
        {
            string conn = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString; 
            SqlConnection SqlConn = new SqlConnection(conn);
            SqlCommand cmd = new SqlCommand("validarUsuario", SqlConn)/*Llamando al porcedimiento almacenado de la BD y al SQLConn*/
            {
                CommandType = System.Data.CommandType.StoredProcedure/*PROCESO DEL ALMACENAMIENTOPROCESADO*/
            };

            cmd.Connection.Open(); /*Abrimos la Conn*/
            /*Paasmaos los parametros del formulario al porceso almacenado de las BD */
            cmd.Parameters.Add("@usuario", SqlDbType.VarChar, 50).Value = txtUser.Text;
            cmd.Parameters.Add("@contrasenia", SqlDbType.VarChar, 50).Value = txtPass.Text;
            cmd.Parameters.Add("@key", SqlDbType.VarChar, 50).Value = "examenPixzelle";

            SqlDataReader sqlDR = cmd.ExecuteReader();
            if (sqlDR.Read())
            {
                Response.Redirect("index.aspx");/*Redireccionando en el caso que sea correcto el logeo*/


            }
            else
            {

                Error.Text = "Error con las credenciales";

            }
            cmd.Connection.Close();/*Cerramos la conn*/
        }
    }
}