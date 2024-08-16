<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SoftwareRequestMain.aspx.cs" Inherits="WebApplicationMasterProject.Assignments.SoftwareRequestDB.GridView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">

&nbsp;
    <br />
    <table class="nav-justified">
        <tr>
            <td style="width: 98px">
                &nbsp;</td>
            <td>
                <asp:Label ID="DeleteMsg" runat="server" ForeColor="Red" style="font-size: medium" Text="*Selected Request was Deleted" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 98px">
    <asp:Label ID="Label1" runat="server" Text="Search Type:"></asp:Label> </td>
            <td>
                <asp:DropDownList ID="SearchType" runat="server">
                    <asp:ListItem Value="N/A">--Please Select--</asp:ListItem>
                    <asp:ListItem>Name</asp:ListItem>
                    <asp:ListItem>Software</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SearchType" ErrorMessage="Please Select a Valid Search Type" ForeColor="Red" InitialValue="N/A"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <asp:TextBox ID="SearchBox" runat="server" ToolTip="Enter customer name" Width="441px"></asp:TextBox>
    
    <asp:Button ID="Search" runat="server" OnClick="Search_Click" Text="Search" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"  EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1247px" OnPageIndexChanging="GridView1_PageIndexChanging">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="SoftwareRequest?Action=View&amp;ID={0}" DataTextField="ID" DataTextFormatString="View App" HeaderText="View" />
        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="SoftwareRequest?Action=Edit&amp;ID={0}" DataTextField="ID" DataTextFormatString="Edit App" HeaderText="Edit" />
        <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="SoftwareRequestMain?Action=Delete&amp;ID={0}" DataTextField="ID" DataTextFormatString="Delete App" HeaderText="Delete" />
        <asp:BoundField DataField="FacultyName" HeaderText="FacultyName" SortExpression="FacultyName"  />
        <asp:BoundField DataField="FacultyEmail" HeaderText="FacultyEmail" SortExpression="FacultyEmail"  />
        <asp:BoundField DataField="DateSubmitted" HeaderText="DateSubmitted" SortExpression="DateSubmitted" />
        <asp:BoundField DataField="SoftwareName" HeaderText="SoftwareName" SortExpression="SoftwareName" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="20px" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="20" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>

</asp:Content>
