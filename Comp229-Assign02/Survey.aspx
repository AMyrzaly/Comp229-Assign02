<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="Comp229_Assign02.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Survey page.</h3>

        <table class="nav-justified">
            <tr>
                <td>

        <asp:Label runat="server" Text="Username:" />
                </td>
                <td style="text-align: justify">
    <asp:TextBox ID="UsernameTextBox" runat="server" TextMode="SingleLine" />
                </td>
                <td>
    <asp:RequiredFieldValidator ID="UsernameTextBox_RequiredFieldValidator" runat="server"
        ControlToValidate="UsernameTextBox"
        ErrorMessage="Username is required."
        SetFocusOnError="True" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>

    <asp:Label runat="server" Text="Password:" />
                </td>
                <td style="text-align: justify">
    <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password" />
                </td>
                <td>
    <asp:RequiredFieldValidator ID="PasswordTextBox_RequiredFieldValidator" runat="server"
        ControlToValidate="PasswordTextBox"
        ErrorMessage="Password is required."
        SetFocusOnError="True" Display="Dynamic" />


    <asp:CompareValidator ID="ComparePasswords" runat="server"
        ControlToCompare="PasswordTextBox"
        ControlToValidate="ConfirmPasswordTextBox"
        ErrorMessage="Your passwords do not match up!"
        Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>

    <asp:Label runat="server" Text="Confirm Password:" />
                </td>
                <td style="text-align: justify">
    <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password" />
                </td>
                <td>
    <asp:RequiredFieldValidator ID="ConfirmPasswordTextBox_RequiredFieldValidator" runat="server"
        ControlToValidate="ConfirmPasswordTextBox"
        ErrorMessage="Please confirm password."
        SetFocusOnError="True" Display="Dynamic" />
                </td>
            </tr>
            <tr>
                <td>

    <asp:Label runat="server" Text="Email:" />
                </td>
                <td style="text-align: justify">
    <asp:TextBox ID="EmailTextBox" runat="server" TextMode="SingleLine" />
                </td>
                <td>
    <asp:RequiredFieldValidator ID="EmailTextBox_RequiredFieldValidator" runat="server"
        ControlToValidate="EmailTextBox"
        ErrorMessage="Please enter an email."
        SetFocusOnError="True" Display="Dynamic" />
    <asp:RegularExpressionValidator ID="emailValidator"
        runat="server" ControlToValidate="EmailTextBox"
        ValidationExpression="^\S+@\S+\.\S+$"
        ErrorMessage="Please enter a valid email address." />

                </td>
            </tr>
            <tr>
                <td>
    
    <asp:Label runat="server" Text="Birthday:" />
                </td>
                <td style="text-align: justify">
    <asp:TextBox ID="BirthdayTextBox" runat="server" TextMode="Date" Placeholder="Year/Month (as numbers)/Day" />
                </td>
                <td>
    <asp:RequiredFieldValidator ID="BirthdayTextBox_RequiredFieldValidator" 
                                runat="server" ControlToValidate="BirthdayTextBox" 
                                ErrorMessage="Birthday is required."
                                SetFocusOnError="True" Display="Dynamic" />
    <asp:RangeValidator ID="BirthdayTextBox_RangeValidator" runat="server"
        Type="Date" ControlToValidate="BirthdayTextBox"
        MinimumValue="1998/10/03" MaximumValue="2017/04/03"
        ErrorMessage="You must be over 19 to use this website." />
                </td>
            <tr>
				<td>&nbsp;Describe your journey::
				</td>
				<td>
					<textarea cols="50" name="txtSpecialReq" rows="7" tabindex="37" placeholder="Please leave your details of your experience in our website..."></textarea>
				</td>
			</tr>
                <td>
    <asp:ValidationSummary ID="vSummary" runat="server" />

                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
    <asp:Button runat="server" Text="Submit" onclientclick='redirect()' Width="198px" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
    </table>
    <br />
    
    <%-- Comment out this validator and uncomment the other; check the code-behind to see how the minimum value is set --%>
    <%--<asp:RangeValidator ID="birthDateRangeTest" runat="server"
        Type="Date" ControlToValidate="BirthdayTextBox"
        ErrorMessage="You must be over 19 to use this website." />--%>
    <br />
</asp:Content>
