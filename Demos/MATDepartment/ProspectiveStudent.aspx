<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProspectiveStudent.aspx.cs" Inherits="CIS325_Master_Project.Demos.MATDepartment.ProspectiveStudent1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        th, td {
            padding:8px;
            vertical-align:top;
        }
    </style>


    <h1>MAT Department Prospective Students Form 2023</h1>

    <asp:Panel ID="PanelForm" runat="server">
        <table style="border: 1px solid black" width="100%">
    <tr>
        <td width="30%"><strong>Student Name*:</strong></td>
        <td width="70%">
            <asp:TextBox runat="server" ID="StudentName"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your name!" ControlToValidate="StudentName" ForeColor="Red" ID="VStudentName"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td><strong>Gender:</strong></td>
        <td>
            <asp:RadioButtonList runat="server" ID="Gender" RepeatDirection="Horizontal">
                <asp:ListItem Value="M">Male</asp:ListItem>
                <asp:ListItem Value="F">Female</asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td><strong>Age:</strong></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="Age" Width="50px"></asp:TextBox><asp:RangeValidator runat="server" ErrorMessage="Please enter a valid age between 16-100!" ID="VAge" ForeColor="Red" ControlToValidate="Age" Type="Integer" MinimumValue="16" MaximumValue="100"></asp:RangeValidator></td>
    </tr>
    <tr>
        <td><strong>Email*:</strong></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="Email"></asp:TextBox><asp:RegularExpressionValidator runat="server" ErrorMessage="Please enter a valid email!" ID="VEmail" ForeColor="Red" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td><strong>Intended Major:</strong></td>
        <td>&nbsp;<asp:DropDownList runat="server" ID="IntendedMajor">
            <asp:ListItem Value="0">---Please Select---</asp:ListItem>
            <asp:ListItem Value="CIS">Computer Information Systems</asp:ListItem>
            <asp:ListItem Value="DS">Data Science</asp:ListItem>
            <asp:ListItem Value="MATH">Mathematics</asp:ListItem>
        </asp:DropDownList></td>
    </tr>
    <tr>
        <td><strong>Technical Skills:</strong></td>
        <td>
            <table style="border: 1px dashed black" width="100%">
                <tr>
                    <td><i>Programming Skills</i></td>
                    <td><i>Developer Tools</i></td>
                </tr>
                <tr>
                    <td>
                        <asp:CheckBoxList runat="server" ID="Programming">
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Python</asp:ListItem>
                            <asp:ListItem>Java</asp:ListItem>
                            <asp:ListItem>Swift</asp:ListItem>
                            <asp:ListItem>HTML</asp:ListItem>
                            <asp:ListItem>CSS</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:CheckBoxList>

                    </td>
                    <td>
                        <asp:CheckBoxList runat="server" ID="DeveloperTools">
                            <asp:ListItem Value="VS">Visual Studio</asp:ListItem>
                            <asp:ListItem Value="XC">XCode</asp:ListItem>
                            <asp:ListItem Value="PC">PyCharm</asp:ListItem>
                            <asp:ListItem Value="SMS">SQL Management Studio</asp:ListItem>
                        </asp:CheckBoxList></td>
                </tr>
            </table>

        </td>
    </tr>
    <tr>
        <td><strong>Comments:</strong></td>
        <td>&nbsp;<asp:TextBox runat="server" ID="Comments" TextMode="MultiLine" Height="100px" Width="800px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>&nbsp;<asp:Button runat="server" Text="Submit" ID="Submit" OnClick="Submit_Click"></asp:Button></td>
        <td>&nbsp;</td>
    </tr>
</table>

    </asp:Panel>

    <asp:Label ID="ResultMsg" runat="server" Text=""></asp:Label>
            



</asp:Content>
