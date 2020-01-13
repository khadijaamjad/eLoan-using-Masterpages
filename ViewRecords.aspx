<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewRecords.aspx.cs" Inherits="E_loan.ViewRecords" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left:200px;" class="container">
        <h2 >View Records</h2> 
        <form runat="server">
<div class="col-sm-3 text-center">  <asp:Label ID="Info" runat="server" Text="Which records do you want to view?"></asp:Label></div>
        <div class="col-sm-3 text-center"><asp:DropDownList ID="ddOptions" CssClass="dropdown form-control" runat="server">
           <asp:ListItem Value=" "> Select option </asp:ListItem>
            <asp:ListItem Value="UserAccounts"> User Accounts </asp:ListItem>
            <asp:ListItem Value="Loans"> Loan Requests </asp:ListItem>
                                          </asp:DropDownList></div>
      
    <div class="col-sm-5 text-center" style="margin-left:2%"></div><div class="col-sm-5 text-center" style="margin-right:0px;"><asp:Button ID="btnShow" runat="server" class="btn btn-info col-sm-5"  Text="Show" OnClick="btnShow_Click" /><br /></div>
 <br />
             <hr/>
    <div style="margin-left:150px">
        <asp:GridView ID="dgvRecords" CssClass="text-center table" runat="server" Width="800px"></asp:GridView>
    </div>
            <br />
            <br />
        </form>
           </div>

</asp:Content>
