using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenPixzelle
{
    public partial class index : System.Web.UI.Page
    {
        BLExamen classe = new BLExamen();/*Instnaciando la clase*/

        protected void Page_Load(object sender, EventArgs e)
        {
            /*Mandando los elementos de la clase al repetidor*/

            repVJ.DataSource = classe.GetVideojuegos;
            repVJ.DataBind();/*Actualiza el repetidor*/

        }
    }
}