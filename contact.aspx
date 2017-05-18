<%@ Page Title="Contact Page" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="ProteinPowders_1525594.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <h1>Contact Us</h1>
    Name<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredNameValidator" runat="server" ControlToValidate="txtName" ErrorMessage="*Name is required"></asp:RequiredFieldValidator>
    <br />
    Email<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredEmailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Email is required"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionEmailValidator" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    Subject<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredSubjectValidator" runat="server" ControlToValidate="txtSubject" ErrorMessage="*Subject is required"></asp:RequiredFieldValidator>
    <br />
    Message<asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredMessageValidator" runat="server" ControlToValidate="txtMessage" ErrorMessage="*Message is required"></asp:RequiredFieldValidator>
    <br />
    <asp:Button ID="btnSendEmail" runat="server" OnClick="btnSendEmail_Click" Text="Send" />
    <br />
    <asp:Literal ID="litResult" runat="server"></asp:Literal>
    <br />

    <div id="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3975.1137741479065!2d114.91403231418045!3d4.920625996427467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3222f56f7f845f95%3A0x611cde33328787da!2sBeastMode+Nutrition+Brunei!5e0!3m2!1sen!2sbn!4v1493201692035"></iframe>
    </div>

</asp:Content>
