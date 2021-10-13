<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Eagle_Hotel_Web_Master.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="login py-5  text-center">

        <div class="container login-form bg-light d-flex justify-content-center rounded-lg">

            <div class="my-auto">

                <form runat="server">
                    <p class="h5 pb-3">Preencha os Campos</p>
                    <div class="form-group d-flex">

                        <div class="input-group-append ">
                            <span class="input-group-text"><i class="uil uil-user"></i></span>
                        </div>
                        <asp:TextBox ID="tx_user" runat="server" CssClass="form-control" Placeholder="Usuário"></asp:TextBox>

                    </div>
                    <div class="form-group d-flex pb-2">
                        <div class="input-group-append ">
                            <span class="input-group-text"><i class="uil uil-key-skeleton-alt"></i></span>
                        </div>
                        <asp:TextBox ID="tx_pass" runat="server" CssClass="form-control" Placeholder="Senha"></asp:TextBox>
                    </div>

                   
                    <asp:Button ID="bt_login" runat="server" Text="Enviar" CssClass="btn btn-primary rounded-pill px-5 bt-login border-0" Style="background: rgb(253,29,112); background: linear-gradient(90deg, rgba(253,29,112,1) 0%, rgba(252,176,69,1) 100%);" /> <br />

                    <p class=" pt-3"> Cadastre-se clicando <a href="#">aqui</a></p>

                </form>
            </div>
        </div>
    </div>

</asp:Content>
