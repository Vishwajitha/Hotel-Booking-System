<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayBookings.aspx.cs" Inherits="WebApplicationDBMS.DisplayBookings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
            body {  background-color:rosybrown }
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #customers tr:hover {
                background-color: #ddd;
            }

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: black;
                color: white;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="rep" runat="server">
        <HeaderTemplate>
            <table id="customers">
                <tr>
                    <th>Name
                    </th>
                    <th>EmailID
                    </th>
                    <th>Mobile
                    </th>
                    <th>Doa
                    </th>
                    <th>Dod
                    </th>
                    <th>RoomsRequired
                    </th>
                    <th>Action
                    </th>
                </tr>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <%#Eval("Name") %>
                </td>
                <td>
                    <%#Eval("EmailID") %>
                </td>
                <td>
                    <%#Eval("Mobile") %>
                </td>
                <td>
                    <%#Eval("Doa") %>
                </td>
                <td>
                    <%#Eval("Dod") %>
                </td>
                <td>
                    <%#Eval("RoomsRequired") %>
                </td>
                <td>
                    <asp:Button ID="btnedit" runat="server" Text="Update" OnClick="btnedit_Click" CommandArgument='<%#Eval("id") %>' />
                     <asp:Button ID="btndel" runat="server" Text="Delete" OnClick="btndel_Click" CommandArgument='<%#Eval("id") %>'/>
                </td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
        </div>
    </form>
</body>
</html>
