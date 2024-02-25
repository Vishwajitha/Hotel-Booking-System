<%@ Page Title="" Language="C#" MasterPageFile="~/UserLayout.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="WebApplicationDBMS.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dropdown {
            height: 40px;
            width: 100%;
        }
        .label{
            font-size:20px;
        }
        .row{
            color:cadetblue;
        }
        .custom-button {
         background-color: black; 
         color: white; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:ScriptManager ID="scr" runat="server">

     </asp:ScriptManager>


    <asp:UpdatePanel ID="up1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblPlaces" runat="server" Text="Places: " CssClass="label"></asp:Label>
            <asp:DropDownList ID="ddlplaces" runat="server" CssClass="dropdown" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlplaces_SelectedIndexChanged">
            </asp:DropDownList>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlplaces" />
        </Triggers>
    </asp:UpdatePanel>



    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="lblhotel" runat="server" Text="Hotels: " CssClass="label"></asp:Label>
            <asp:DropDownList ID="ddlhotel" runat="server" CssClass="dropdown" AutoPostBack="true" AppendDataBoundItems="true">
            </asp:DropDownList>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlhotel" />
        </Triggers>
    </asp:UpdatePanel>
     <div>
         <div class="row">
            <asp:Button ID="btnbook" runat="server"  CssClass="custom-button" Text="Book" OnClick="btnbook_Click"   />
        </div>
    </div>

</asp:Content>
