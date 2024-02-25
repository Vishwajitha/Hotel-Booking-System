<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplicationDBMS.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      
         body { background-color:rosybrown }
        * {
            box-sizing: border-box;
        }

        input[type=text], input[type=email], input[type=number], input[type=select], input[type=date], input[type=select], input[type=password], input[type=tel] {
            width: 45%;
            padding: 12px;
            border: 1px solid rgb(168, 166, 166);
            border-radius: 4px;
            resize: vertical;
        }

        textarea {
            width: 45%;
            padding: 12px;
            border: 1px solid rgb(168, 166, 166);
            border-radius: 4px;
            resize: vertical;
        }

        input[type=radio], input[type=checkbox] {
            width: 1%;
            padding-left: 0%;
            border-radius: 4px;
            resize: vertical;
        }

        h1 {
            font-family: Arial;
            font-size: medium;
            font-style: normal;
            font-weight: bold;
            color: brown;
            text-align: center;
            text-decoration: underline;
        }

        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: left;
        }

            input[type=submit]:hover {
                background-color: #32a336;
            }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .col-10 {
            float: left;
            width: 10%;
            margin-top: 6px;
        }

        .col-90 {
            float: left;
            width: 90%;
            margin-top: 15px;
        }

        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        @media screen and (max-width: 600px) {
            .col-10, .col-90, input[type=submit] {
                width: 100%;
                margin-top: 0;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <h1>Customers Update Form</h1>
        <asp:HiddenField ID="hdn" runat="server" />
    <div class="container">
        <div class="row">
            <div class="col-10">
                <label for="fname">First Name:</label>
            </div>
            <div class="col-90">
                <asp:TextBox ID="txtname" runat="server" placeholder="Enter your first name"></asp:TextBox>

            </div>
        </div>

        <div class="row">
            <div class="col-10">
                <label for="email">Email:</label>
            </div>
            <div class="col-90">
                <asp:TextBox ID="txtemail" runat="server" placeholder="Enter your Email"></asp:TextBox>

            </div>
        </div>
        <div class="row">
            <div class="col-10">
                <label for="mobile">Mobile Number:</label>
            </div>
            <div class="col-90">
                <asp:TextBox ID="txtmobile" runat="server" placeholder="Enter Mobile Number"></asp:TextBox>

            </div>
        </div>
        <div class="row">
            <div class="col-10">
                <label for="mobile">Arrival Date:</label>
            </div>
            <div class="col-90">
                <asp:TextBox ID="txtdoa" runat="server" placeholder="Enter Arrival date" TextMode="Date"></asp:TextBox>

            </div>
        </div>
        <div class="row">
            <div class="col-10">
                <label for="mobile">Departure Date:</label>
            </div>
            <div class="col-90">
                <asp:TextBox ID="txtdod" runat="server" placeholder="Enter Departure date" TextMode="Date"></asp:TextBox>

            </div>
        </div>
        <div class="row">
            <div class="col-10">
                <label for="Rooms" required>Rooms required:</label>
            </div>
            <div class="col-90">
                <asp:DropDownList ID="ddlroom" runat="server">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem Value="One" Text="One"></asp:ListItem>
                    <asp:ListItem Value="Two" Text="Two"></asp:ListItem>
                    <asp:ListItem Value="Three" Text="Three"></asp:ListItem>
                </asp:DropDownList>

            </div>
        </div>
       </div>
         <div class="row">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click"  style="background-color: black; color: #fff; border: 1px solid #007bff;" />
        </div>
    </div>
    </form>
</body>
</html>
