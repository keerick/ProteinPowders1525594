<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="ProteinPowders_1525594.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table>
         <tr>
            <td rowspan="4">
               <asp:Image ID="imgProduct" runat="server" CssClass="detailsImage" /></td>
            <td><h2>
               <asp:Label ID="lblTitle" runat="server" Text="Label"></asp:Label>
               <hr/>
               </h2></td>

         </tr>
          <tr>
            <td>
                <asp:Label ID="lblDescription"  runat="server" CssClass="detailsDescription"></asp:Label></td>
            <td>
                <asp:Label ID="lblPrice" runat="server" CssClass="detailsPrice"></asp:Label>
                <asp:Button ID="btnAdd" runat="server" CssClass="button" OnClick="btnAdd_Click" Text="Add Product" />
              </td><br/>
                Quantity : 
              <asp:DropDownList ID="ddlAmount" runat="server"></asp:DropDownList><br/>
              <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
         </tr>
          <tr>
            <td>Product Number: <asp:Label ID="lblItemNr" runat="server" Text="Label"></asp:Label></td>
         </tr>
          <tr>
            <td>
            <asp:Label ID="Label1" runat="server" Text="Available" CssClass="productPrice"></asp:Label></td>
         </tr>
     </table>
</asp:Content>
