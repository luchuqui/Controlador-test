using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AdministradorTerminal.WSControlador;

namespace AdministradorTerminal.Contenido
{
    public partial class AgregarTerminal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (cboxModelo.Items.Count == 0) {
                inicio();
            }
        }

        private void inicio() {
            cboxModelo.Items.Clear();
            ModeloObj [] modelos =  Globales.servicio.obtener_modelo_terminal(true);
            foreach (ModeloObj modelo in modelos) {
                ListItem item = new ListItem(modelo.nombre,modelo.id_modelo.ToString());
                cboxModelo.Items.Add(item);
            }
        }

        public void guardar_datos(object sender, EventArgs e) {
            AtmObj terminal = new AtmObj();
            terminal.codigo = txbxCodigoTerminal.Text;
            terminal.estado = "A";
            terminal.id_modelo = int.Parse(cboxModelo.SelectedValue);
            terminal.ip = txbxDirIP.Text;
            terminal.ubicacion = txbxDescripcion.Text;
            terminal.modoSupervisor = false;
            string [] mensaje = Globales.servicio.guardar_actualizar_terminal(terminal,false).Split('\n');
            lblmensaje.Text = mensaje[0];
            //Response.Write("<script language=javascript> alert('"+mensaje[0]+"'); </script>");
        }

        public void limpiar_datos(object sender, EventArgs e) {
            limpiarDatos();
        }

        private void limpiarDatos() {
            txbxCodigoTerminal.Text = "";
            txbxDescripcion.Text = "";
            txbxDirIP.Text = "";
        }
    }
}
