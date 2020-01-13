<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="E_loan.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div style="margin-left:200px;" class="container">
        <h2 >Sign In</h2> 
<form runat="server" class="form-group" role="form">
        
        <div class="col-sm-3 text-center"> <asp:Label ID="em" runat="server" Text="Email"></asp:Label></div> <div class="col-sm-3 text-center"><asp:TextBox ID="tbEmail" class=" form-control" type="email" AutoCompleteType="Email"  runat="server"></asp:TextBox></div>
    <br /><br /><div class="col-sm-3 text-center">  <asp:Label ID="p1" runat="server" Text="Password"></asp:Label></div><div class="col-sm-3 text-center"><asp:TextBox ID="tbPass1" class=" form-control"  runat="server"></asp:TextBox></div>
        
    <br />
    <div class="col-md-12">
                  <br />
         <br />
        *Don't have an account? Click <a href="SignUp.aspx">here</a> to sign up.
                   
                    <br /></div>
    <hr/>
    <div class="col-sm-5 text-center" style="margin-left:2%"></div><div class="col-sm-5 text-center" style="margin-right:0px;"><asp:Button ID="btnSignIn" runat="server" class="btn btn-success col-sm-5"  Text="Sign in" OnClick="btnSignIn_Click" /><br /></div>
 <br />

</form>
        <br /><br />

    </div>

</asp:Content>
