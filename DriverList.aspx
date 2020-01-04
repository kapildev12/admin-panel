<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DriverList.aspx.cs" Inherits="AmbulanceSurveillance.DriverList1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="DriverRepeater" runat="server">
                <HeaderTemplate>
                    <table class="tblcolor">
                        <tr>
                            <b>
                                <td>Name</td>
                                <td>Number</td>
                                <td>Email</td>
                            </b>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr class="tblrowcolor">
                        <td>
                            <%#DataBinder.Eval(Container,"name")%>
                        </td>
                        <td>
                            <%#DataBinder.Eval(Container,"phone")%>
                        </td>
                        <td>
                            <%#DataBinder.Eval(Container,"email")%>
                        </td>
                    </tr>
                </ItemTemplate>
               
                <FooterTemplate>
                    <tr>
                        <td>Above list contains all drivers in the system
                        </td>
                    </tr>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
