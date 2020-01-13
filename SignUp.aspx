<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="E_loan.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server" >
    <div style="margin-left:200px;" class="container">
        <h2 >Sign Up</h2> 
<form runat="server" class="form-group" role="form">
        <div class="col-sm-3 text-center">  <asp:Label ID="nam" runat="server" Text="Name"></asp:Label></div><div class="col-sm-3 text-center"><asp:TextBox ID="tbName" class=" form-control"  runat="server"></asp:TextBox></div>
        <div class="col-sm-3 text-center"> <asp:Label ID="em" runat="server" Text="Email"></asp:Label></div> <div class="col-sm-3 text-center"><asp:TextBox ID="tbEmail" class=" form-control" type="email" AutoCompleteType="Email"  runat="server"></asp:TextBox></div>
        <br /><br /><div class="col-sm-3 text-center">  <asp:Label ID="Phone" runat="server" Text="Phone No"></asp:Label></div><div class="col-sm-3 text-center"><asp:TextBox ID="tbPhone" class=" form-control"  runat="server"></asp:TextBox></div>
        <div class="col-sm-3 text-center"> <asp:Label ID="Label2" runat="server" Text="Date of birth"></asp:Label></div> <div class="col-sm-3 text-center"><asp:TextBox ID="tbDOB" class=" form-control" runat="server" TextMode="Date"></asp:TextBox> </div>
    <br /><br /><div class="col-sm-3 text-center">  <asp:Label ID="p1" runat="server" Text="Password"></asp:Label></div><div class="col-sm-3 text-center"><asp:TextBox ID="tbPass1" class=" form-control"  runat="server"></asp:TextBox></div>
        <div class="col-sm-3 text-center"> <asp:Label ID="p2" runat="server" Text="Confirm Password"></asp:Label></div> <div class="col-sm-3 text-center"><asp:TextBox ID="tbPass2" class=" form-control"  runat="server"></asp:TextBox></div>
    <br/>
    <br />
    <div class="col-md-12">
                  <br />
        *By clicking this button you agree to our terms and conditions. For more information please visit <a href="#">this</a> link.
                    <br />
       <i style="color:red"> <asp:RequiredFieldValidator Display="Dynamic" ID="rfv1" runat="server" ControlToValidate="tbName" ErrorMessage="Please enter a name"></asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="tbEmail" ErrorMessage="Please enter an email"></asp:RequiredFieldValidator><br />
        <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="tbPass1" ErrorMessage="Password required"></asp:RequiredFieldValidator><br />
           <asp:RegularExpressionValidator ID="rgxv" runat="server" ControlToValidate="tbPhone" ValidationExpression="03[0-9]{9}" ErrorMessage="Phone number is not valid"></asp:RegularExpressionValidator>
        </i><br />

                    <br />
    </div>
    <hr/>
    <div class="col-sm-5 text-center" style="margin-left:180px"> <asp:Button ID="btnSignIn" runat="server" class="btn btn-primary col-sm-5"  Text="Sign In" /></div><div class="col-sm-5 text-center" style="margin-right:0px;"><asp:Button ID="btnSignUp" runat="server" class="btn btn-success col-sm-5"  Text="Sign Up" OnClick="btnSignUp_Click1" /><br /></div>
 <br />
</form>
        <br /><br />

    </div>

</asp:Content>
