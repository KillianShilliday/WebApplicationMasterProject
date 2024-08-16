<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SoftwareRequest.aspx.cs" Inherits="WebApplicationMasterProject.Assignments.SoftwareRequest.SoftwareRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="FormPanel" runat="server">
        <table class="nav-justified">
            <tr>
                <td>
                    <table class="nav-justified" style="height: 100px">
                        <tr>
                            <td style="width: 150px; height: 30px"></td>
                            <td style="width: 60px; height: 30px"></td>
                            <td style="width: 250px; height: 30px"></td>
                            <td style="width: 60px; height: 30px"></td>
                            <td style="width: 250px; height: 30px"></td>
                            <td style="width: 60px; height: 30px"></td>
                            <td style="width: 250px; height: 30px"></td>
                            <td style="height: 30px"></td>
                        </tr>
                        <tr>
                            <td style="width: 150px; height: 50px"></td>
                            <td style="width: 60px; height: 50px">Name:</td>
                            <td class="modal-sm" style="width: 250px; height: 50px">
                                <asp:TextBox ID="FacultyName" runat="server" Width="238px" Height="40px"></asp:TextBox>
                            </td>
                            <td style="width: 60px; height: 50px">Dept</td>
                            <td class="modal-sm" style="width: 250px; height: 50px">
                                <asp:TextBox ID="Department" runat="server" Width="236px" Height="40px"></asp:TextBox>
                            </td>
                            <td style="width: 60px; height: 50px"></td>
                            <td style="width: 250px; height: 50px"></td>
                            <td style="height: 50px"></td>
                        </tr>
                        <tr>
                            <td style="width: 150px; "></td>
                            <td style="width: 60px; "></td>
                            <td class="modal-sm" style="width: 250px; ">
                                <table class="nav-justified" style="height: 40px">
                                    <tr>
                                        <td style="height: 17px">
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="FacultyName" ErrorMessage="Please Enter Your Name!" ForeColor="#CC0005"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 60px; "></td>
                            <td class="modal-sm" style="width: 250px; "></td>
                            <td style="width: 60px; "></td>
                            <td style="width: 250px; ">
                                </td>
                            <td></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified" border="0">
                        <tr>
                            <td style="width: 150px; height: 40px;"></td>
                            <td style="width: 306px; height: 40px; font-size: x-large;"><strong>Approval Process</strong></td>
                            <td style="width: 624px; height: 40px;"></td>
                            <td style="height: 40px"></td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td style="width: 306px">All software requests must be approved by the Department Chair prior to submission. CC your Deparment Chair when submitting your email request</td>
                            <td style="width: 624px">1.) Complete this form.<br /> 2.) The Computer and Technology Committee will review your request and forward it to IT.<br /> 3.)You Will be notified by IT if your request is approved</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td class="modal-sm" style="width: 150px; height: 40px"></td>
                            <td style="height: 40px; font-size: x-large; width: 150px"><strong>Faculty</strong></td>
                            <td style="height: 40px; width: 250px"></td>
                            <td style="height: 40px; width: 50px">&nbsp;</td>
                            <td style="height: 40px; width: 512px"></td>
                            <td style="height: 40px"></td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 150px; height: 50px"></td>
                            <td style="height: 50px; width: 150px">Faculty Email:</td>
                            <td style="height: 50px; width: 250px">
                                <asp:TextBox ID="FacEmail" runat="server" Width="238px" AutoCompleteType="Email" Height="40px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FacEmail" ErrorMessage="Please Enter A Valid Email" ForeColor="#CC0005" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                            <td style="height: 50px; width: 50px">&nbsp;</td>
                            <td style="height: 50px; font-size: large; width: 512px"><strong>Faculty Information</strong><br />
                                <asp:RadioButton ID="RadioButton1" runat="server" style="font-size: medium" Text="Approved by Department Chair" />
                            </td>
                            <td style="height: 50px"></td>
                        </tr>
                        <tr>
                            <td class="modal-sm" style="width: 150px; height: 50px"></td>
                            <td style="height: 50px; width: 150px">Dept. Chair Email:</td>
                            <td style="height: 50px; width: 250px">
                                <asp:TextBox ID="DCEmail" runat="server" Width="238px" AutoCompleteType="Email" Height="40px"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="DCEmail" ErrorMessage="Please Enter A Valid Email" ForeColor="#CC0005" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                            <td style="height: 50px; width: 50px">&nbsp;</td>
                            <td style="height: 50px; width: 512px">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" style="font-size: medium">
                                    <asp:ListItem Value="FullTime">Full-Time</asp:ListItem>
                                    <asp:ListItem>Adjunct</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td style="height: 50px"></td>
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
                            <td style="width: 148px; height: 40px"></td>
                            <td style="height: 40px; font-size: x-large; width: 150px"><strong>Course</strong></td>
                            <td style="height: 40px; width: 250px"></td>
                            <td style="height: 40px; width: 50px"></td>
                            <td style="height: 40px; width: 518px"></td>
                            <td style="height: 40px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 148px; height: 50px"></td>
                            <td style="height: 50px; width: 150px">Course Number:</td>
                            <td style="height: 50px; width: 250px">
                                <asp:TextBox ID="CRN" runat="server" Width="238px" Height="40px"></asp:TextBox>
                            </td>
                            <td style="height: 50px; width: 50px"></td>
                            <td style="height: 50px; width: 518px; font-size: large"><strong>Course Requirements</strong></td>
                            <td style="height: 50px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 148px; height: 49px"></td>
                            <td style="width: 150px; height: 49px">Course Name:</td>
                            <td style="width: 250px; height: 49px">
                                <asp:TextBox ID="CourseName" runat="server" Width="238px" Height="40px"></asp:TextBox>
                            </td>
                            <td style="width: 50px; height: 49px"></td>
                            <td style="width: 518px; height: 49px">
                                <asp:CheckBox ID="OutsideClasCB" runat="server" Text="Students will need access to the software outside of class." />
                                <br />
                                <asp:CheckBox ID="MultipleCourses" runat="server" OnCheckedChanged="MultipleCourses_CheckedChanged" Text="The Software is requred for multiple courses." />
                            </td>
                            <td style="height: 49px"></td>
                        </tr>
                        <tr>
                            <td style="width: 148px; height: 50px"></td>
                            <td style="width: 150px; height: 50px">Semester Enrollment:</td>
                            <td style="width: 250px; height: 50px">
                                <asp:TextBox ID="SemesterEnrolment" runat="server" Width="238px" Height="40px"></asp:TextBox>
                            </td>
                            <td style="width: 50px; height: 50px"></td>
                            <td style="width: 518px; height: 50px">
                                <asp:Panel ID="AdditionalCoursesPanel" runat="server" Wrap="False">
                                    <table class="nav-justified">
                                        <tr>
                                            <td>Please List any additional courses that will use this software</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="OtherCourses" runat="server" Height="30px" Width="493px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                            <td style="height: 50px"></td>
                        </tr>
                        <tr>
                            <td style="width: 148px; height: 50px"></td>
                            <td style="height: 50px; width: 150px">Yearly Enrollment:</td>
                            <td style="height: 50px; width: 250px">
                                <asp:TextBox ID="YearlyEnrolment" runat="server" Width="238px" Height="40px"></asp:TextBox>
                            </td>
                            <td style="height: 50px; width: 50px"></td>
                            <td style="height: 50px; width: 518px"></td>
                            <td style="height: 50px">&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 148px">&nbsp;</td>
                            <td style="width: 150px">&nbsp;</td>
                            <td style="width: 250px">&nbsp;</td>
                            <td class="modal-sm" style="width: 50px">&nbsp;</td>
                            <td style="width: 518px">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="nav-justified">
                        <tr>
                            <td style="height: 40px; width: 150px"></td>
                            <td style="height: 40px; width: 400px; font-size: x-large;">Software</td>
                            <td style="height: 40px; width: 50px"></td>
                            <td style="height: 40px; width: 517px"></td>
                            <td style="height: 40px"></td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td class="modal-lg" style="width: 400px">
                                <table class="nav-justified">
                                    <tr>
                                        <td style="height: 50px; width: 170px">Software Name:</td>
                                        <td style="height: 50px; width: 250px">
                                            <asp:TextBox ID="SoftwareName" runat="server" Width="238px" Height="40px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="SoftwareName" ErrorMessage="Please Enter The Software Name!" ForeColor="#CC0005"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px; width: 170px">Version:</td>
                                        <td style="height: 50px; width: 250px">
                                            <asp:TextBox ID="Version" runat="server" Width="238px" Height="40px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px; width: 170px">Company:</td>
                                        <td style="height: 50px; width: 250px">
                                            <asp:TextBox ID="Company" runat="server" Width="238px" Height="40px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 50px; width: 170px">Contact Information:</td>
                                        <td style="height: 50px; width: 250px">
                                            <asp:TextBox ID="ContactInfo" runat="server" Width="238px" Height="40px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" style="height: 50px; width: 170px">Date/Semester Needed</td>
                                        <td style="height: 50px; width: 250px">
                                            <asp:TextBox ID="DateNeeded" runat="server" Width="238px" Height="40px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" style="height: 50px; width: 170px">Estimated Yearly Cost:$</td>
                                        <td style="height: 50px; width: 250px">
                                            <asp:TextBox ID="YearlyCost" runat="server" Width="238px" Height="40px" style="margin-left: 0"></asp:TextBox>
                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="YearlyCost" ErrorMessage="Enter a dollar amount less than $1000" ForeColor="#CC0005" MaximumValue="1000" Type="Double"></asp:RangeValidator>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50px">&nbsp;</td>
                            <td style="width: 517px">
                                <table class="nav-justified">
                                    <tr>
                                        <td style="height: 50px"><span style="font-size: large">Rationale for software request</span></td>
                                    </tr>
                                    <tr>
                                        <td style="height: 200px">
                                            <table class="nav-justified">
                                                <tr>
                                                    <td style="height: 198px; width: 325px">
                                                        <table class="nav-justified">
                                                            <tr>
                                                                <td style="width: 310px">
                                                                    <asp:RadioButtonList ID="RationaleRBL" runat="server" OnSelectedIndexChanged="RationaleRBL_SelectedIndexChanged" Width="336px">
                                                                        <asp:ListItem Value="Standard">Current Standard in Industry</asp:ListItem>
                                                                        <asp:ListItem Value="NewSoftware">Do Not Currently Have Anything In Place</asp:ListItem>
                                                                        <asp:ListItem Value="Unsuported">Replaces Unsupported/out of date Software:</asp:ListItem>
                                                                        <asp:ListItem Value="Other">Other - please describe below:</asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="height: 114px; width: 310px">
                                                                    <asp:Panel ID="SoftwareOtherP" runat="server" Height="109px" Width="332px">
                                                                        <textarea id="TextArea1" cols="20" name="S1" style="width: 327px; height: 100px; margin-top: 0px"></textarea></asp:Panel>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="height: 198px">
                                                        <table class="nav-justified" style="margin-bottom: 0px">
                                                            <tr>
                                                                <td style="height: 17px; width: 172px"></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="height: 42px; width: 172px">
                                                                    <asp:TextBox ID="UnsupportedTB" runat="server"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="height: 110px; width: 172px"></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 54px"></td>
                                    </tr>
                                </table>
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
                            <td style="width: 150px; height: 40px"></td>
                            <td class="modal-sm" style="width: 400px; font-size: x-large; height: 40px">Funding</td>
                            <td style="width: 50px; height: 40px"></td>
                            <td style="height: 40px; width: 520px"></td>
                            <td style="height: 40px"></td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td class="modal-sm" style="width: 400px">
                                <table class="nav-justified">
                                    <tr>
                                        <td>
                                            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                                <asp:ListItem Value="DeptBudget">Departmental Budget</asp:ListItem>
                                                <asp:ListItem>Other</asp:ListItem>
                                            </asp:RadioButtonList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="FundingOtherP" runat="server" Height="100px">
                                                <textarea id="TextArea2" name="S2" rows="1" style="width: 392px; height: 100px; margin-top: 0px"></textarea></asp:Panel>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td style="width: 50px">&nbsp;</td>
                            <td style="width: 520px">
                                <table class="nav-justified" style="height: 100px">
                                    <tr>
                                        <td><span style="font-size: medium">Describe How the software will be utilized in the course:</span></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Panel ID="UtilizationP" runat="server" Height="100px">
                                                <textarea id="TextArea3" name="S3" rows="1" style="width: 512px; height: 100px; margin-top: 0px"></textarea></asp:Panel>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 29px">
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 152px; height: 40px"></td>
                            <td style="height: 40px"></td>
                            <td style="height: 40px"></td>
                            <td style="height: 40px"></td>
                            <td style="height: 40px"></td>
                        </tr>
                        <tr>
                            <td style="width: 152px; height: 40px"></td>
                            <td style="height: 40px">
                                <asp:Button ID="SubmitButton" runat="server" Height="35px" style="margin-top: 0; margin-bottom: 3" Text="Submit Form" Width="124px" OnClick="SubmitButton_Click" />
                            </td>
                            <td style="height: 40px"></td>
                            <td style="height: 40px"></td>
                            <td style="height: 40px"></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 20px"></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Label ID="ResultMessage" runat="server"></asp:Label> <br /> 
    <a href="SoftwareRequestMain?">Existing Requests</a>
    <asp:Label ID="ErrorMsg" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>
