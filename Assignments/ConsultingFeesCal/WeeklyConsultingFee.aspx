<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WeeklyConsultingFee.aspx.cs" Inherits="WebApplicationMasterProject.Assignments.WeeklyConsultingFee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Panel ID="InputPanel" runat="server">
                    <table class="nav-justified">
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 100px">&nbsp;</td>
                                        <td class="modal-sm" style="font-size: large; width: 100px">Name:</td>
                                        <td class="modal-sm" style="width: 263px">
                                            <asp:TextBox ID="NameTB" runat="server" style="font-size: large" Width="250px"></asp:TextBox>
                                        </td>
                                        <td class="modal-sm" style="width: 190px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTB" ErrorMessage="*Please Enter Your Name" ForeColor="Red" style="font-size: small"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="modal-sm" style="font-size: large; width: 79px">Job Title:</td>
                                        <td class="modal-sm" style="font-size: large; width: 200px">
                                            <asp:DropDownList ID="JobTitleDDL" runat="server" Width="200px">
                                                <asp:ListItem Value="NA">--Please Select Title--</asp:ListItem>
                                                <asp:ListItem Value="Developer">Developer</asp:ListItem>
                                                <asp:ListItem>Analyst</asp:ListItem>
                                                <asp:ListItem Value="Architect">Architect</asp:ListItem>
                                                <asp:ListItem Value="Project Lead">Project Lead</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td class="modal-sm" style="font-size: large; width: 190px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="JobTitleDDL" ErrorMessage="*Select a Valid Job Title" ForeColor="Red" InitialValue="NA" style="font-size: small"></asp:RequiredFieldValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td class="modal-sm" style="width: 100px">&nbsp;</td>
                                        <td class="modal-sm" style="font-size: large; width: 160px">MCSD Certification:</td>
                                        <td style="width: 100px">
                                            <asp:RadioButtonList ID="MCSDRB" runat="server" RepeatDirection="Horizontal">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MCSDRB" ErrorMessage="*Please Choose an Option" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 100px">&nbsp;</td>
                                        <td class="modal-sm" style="font-size: large; width: 160px">Hours Worked:</td>
                                        <td style="width: 98px">
                                            <asp:TextBox ID="HoursWorkedTB" runat="server" Width="82px"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HoursWorkedTB" Display="Dynamic" ErrorMessage="*Please Enter Hours Worked" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="HoursWorkedTB" Display="Dynamic" ErrorMessage="*Please Enter a Number Between 0 and 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td class="modal-sm" style="width: 100px">&nbsp;</td>
                                        <td style="font-size: large">Technical Skills Applied:</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" style="width: 100px">&nbsp;</td>
                                        <td>
                                            <asp:CheckBoxList ID="SkillsUsed" runat="server">
                                                <asp:ListItem Value="ASP">ASP.NET</asp:ListItem>
                                                <asp:ListItem>C#</asp:ListItem>
                                                <asp:ListItem>XML</asp:ListItem>
                                                <asp:ListItem>SQL</asp:ListItem>
                                                <asp:ListItem>Python</asp:ListItem>
                                                <asp:ListItem Value="JS">JavaScript</asp:ListItem>
                                                <asp:ListItem>PHP</asp:ListItem>
                                                <asp:ListItem>MySQL</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                            </asp:CheckBoxList>
                                            </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 100px">&nbsp;</td>
                                        <td class="modal-lg" style="font-size: large; width: 150px">Email Client:</td>
                                        <td>
                                            <asp:RadioButtonList ID="EmailClientRBL" runat="server" AutoPostBack="True" OnSelectedIndexChanged="EmailClientRBL_SelectedIndexChanged" RepeatDirection="Horizontal">
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem Selected="True">No</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Panel ID="EmailClientPanel" runat="server" Visible="False">
                                    <table class="nav-justified">
                                        <tr>
                                            <td style="width: 100px">&nbsp;</td>
                                            <td style="font-size: large; width: 150px">Client Name:</td>
                                            <td class="modal-sm" style="width: 200px">
                                                <asp:TextBox ID="ClientNameTB" runat="server" Width="190px"></asp:TextBox>
                                            </td>
                                            <td class="modal-sm" style="width: 170px">
                                                <asp:RequiredFieldValidator ID="ClientNameValidator" runat="server" ControlToValidate="ClientNameTB" ErrorMessage="*Enter Clients Name" ForeColor="Red" Enabled="False"></asp:RequiredFieldValidator>
                                            </td>
                                            <td style="font-size: large; width: 108px">Client Email:</td>
                                            <td class="modal-sm" style="width: 200px">
                                                <asp:TextBox ID="ClientEmailTB" runat="server" TextMode="Email" Width="190px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="ClientEmailValidator" runat="server" ControlToValidate="ClientEmailTB" Display="Dynamic" Enabled="False" ErrorMessage="*Please Enter a Valid Email" ForeColor="Red"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="ClientEmailTB" Display="Dynamic" ErrorMessage="*Please Enter a Valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <table class="nav-justified">
                                    <tr>
                                        <td style="width: 100px">&nbsp;</td>
                                        <td class="modal-sm" style="width: 160px">
                                            <asp:Button ID="CalculateB" runat="server" Height="30px" OnClick="CalculateB_Click" Text="Calculate" Width="150px" />
                                        </td>
                                        <td style="width: 250px">&nbsp;</td>
                                        <td class="modal-sm" style="width: 160px">
                                            <asp:Button ID="ResetB" runat="server" Text="Reset" Width="150px" OnClick="ResetB_Click" />
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ResultMSG" runat="server"></asp:Label>
                <asp:Label ID="ErrorMSG" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
