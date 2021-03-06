<%@ Page Language="C#" MasterPageFile ="~/Contenido/MenuUsuario.Master" AutoEventWireup="true" CodeBehind="NuevoEdicionATM.aspx.cs" Inherits="AdministradorTerminal.Contenido.NuevoEdicionATM" %>

<asp:Content ID = "tituloCambio" ContentPlaceHolderID ="tituloPagina" runat = "server" >
        <asp:Panel ID = "panelTitulo" runat = "server" style = "text-align : center">
            <asp:Label ID="Label1" Text = "ADMINISTRACION TERMINAL" runat ="server" Font-Size="X-Large" style = "color: #0033CC"></asp:Label>
        </asp:Panel>
</asp:Content>
<asp:Content ID = "ContenidoPag" ContentPlaceHolderID ="contenidoPagina" runat = "server" >
    <asp:Panel runat = "server" >
        <asp:Table runat = "server" Width= "100%" CellSpacing ="3" CellPadding="3">
        <asp:TableRow runat = "server">
            <asp:TableCell runat = "server" Width = "30%">
                <asp:TextBox  runat = "server" ID = "txbxIngreso" Width = "100%"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell ID="cRadios" runat = "server" HorizontalAlign = "Left" Width = "30%">
                    <asp:RadioButtonList runat = "server" RepeatDirection="Horizontal" ID = "rbGroup">
                    <asp:ListItem Text = "Codigo" Selected = "true" ></asp:ListItem>
                    <asp:ListItem Text = "Ip"></asp:ListItem>
                    </asp:RadioButtonList>
            </asp:TableCell>
            <asp:TableCell ID = "cBtnBusqueda" Width = "20%">
            <asp:Button Text = "Buscar" runat = "server" OnClick = "btn_buscarATM" Width= "80%"/>
            </asp:TableCell>
         
            <asp:TableCell ID = "TableCell1" Width="20%">
            <asp:Button ID="Button1" Text = "Nuevo" runat = "server" OnClick = "btn_NuevoATM" Width="80%"/>
            </asp:TableCell>  
        </asp:TableRow>
        </asp:Table>
        
        <table id = "tb_data" runat = "server" style = "z-index: 1" border = "2" width = "100%">
        </table>
    </asp:Panel>
</asp:Content>
