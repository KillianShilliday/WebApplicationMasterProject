<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PSTest.aspx.cs" Inherits="CIS325_Master_Project.Demos.MATDepartment.PSTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        th,td{
            padding:8px;
        }

    </style>

    <h1>MAT Department Prospective Students Form</h1>

    <asp:Panel ID="PanelForm" runat="server">
    <table style="border: 1px solid black;" width="100%">
        <tr>
            <td width="30%"><strong>Student Name:</strong></td>
            <td witdth="70%"><asp:TextBox runat="server" ID="StudentName"></asp:TextBox><asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your name!" ForeColor="Red" ControlToValidate="StudentName"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td><strong>Gender:</strong></td>
            <td>
                <asp:RadioButtonList runat="server" ID="Gender" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td><strong>Age:</strong></td>
            <td>
                <asp:TextBox runat="server" ID="Age" Width="60px"></asp:TextBox><asp:RangeValidator runat="server" ErrorMessage="Please enter a number between 16-100!" ForeColor="Red" ControlToValidate="Age" Type="Integer" MaximumValue="100" MinimumValue="16"></asp:RangeValidator></td>
        </tr>
        <tr>
            <td><strong>Email:</strong></td>
            <td>
                <asp:TextBox runat="server" ID="Email" AutoCompleteType="HomeState"></asp:TextBox>&nbsp;<asp:RegularExpressionValidator runat="server" ErrorMessage="Please enter a valid email!" ControlToValidate="Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td><strong>Intended Major:</strong></td>
            <td>
                <asp:DropDownList runat="server" ID="IntendedMajor">
                    <asp:ListItem Value="0">---Please Select---</asp:ListItem>
                    <asp:ListItem Value="CIS">Computer Information Systems</asp:ListItem>
                    <asp:ListItem Value="DS">Data Science</asp:ListItem>
                    <asp:ListItem Value="Math">Mathematics</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td><strong>Technical Skills:</strong></td>
            <td>
                <table style="border: 1px dashed black;" width="100%">
                    <tr>
                        <td width="50%"><i>Programming Languges</i></td>
                        <td width="50%"><i>Developer Tools</i></td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top;">
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
                        <td style="vertical-align:top;">
                           <asp:CheckBoxList runat="server" ID="DeveloperTools">
                               <asp:ListItem>Visual Studio</asp:ListItem>
                               <asp:ListItem Value="XCode">XCode</asp:ListItem>
                               <asp:ListItem>PyCharm</asp:ListItem>
                               <asp:ListItem>SQL Management Studio</asp:ListItem>                                
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                </table>
                </td>
        </tr>
        <tr>
            <td><strong>Comments</strong></td>
            <td>
                <asp:TextBox runat="server" Height="100px" Width="800px" ID="Comments" TextMode="MultiLine"></asp:TextBox>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button runat="server" ID="Submit" Text="Submit" OnClick="Submit_Click"></asp:Button></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </asp:Panel>

    <asp:Label ID="ResultMsg" runat="server" Text=""></asp:Label>


</asp:Content>