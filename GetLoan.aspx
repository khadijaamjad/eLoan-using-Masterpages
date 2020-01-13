<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GetLoan.aspx.cs" Inherits="E_loan.GetLoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div style="margin-left:200px;" class="container">
        <h2 >Get Loan</h2> 
<form runat="server" class="form-group" role="form">
        <div class="col-sm-3 text-center">  <asp:Label ID="nam" runat="server" Text="Name"></asp:Label></div><div class="col-sm-3 text-center"><asp:Label ID="lblName" runat="server" Text=""></asp:Label></div>
        <div class="col-sm-3 text-center"> <asp:Label ID="em" runat="server" Text="Email"></asp:Label></div> <div class="col-sm-3 text-center"><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label></div>
        <br /><br /><div class="col-sm-3 text-center">  <asp:Label ID="Phone" runat="server" Text="Phone No"></asp:Label></div><div class="col-sm-3 text-center"><asp:Label ID="lblPhone" runat="server" Text=""></asp:Label></div>
        <div class="col-sm-3 text-center"> <asp:Label ID="dob" runat="server" Text="Date of birth"></asp:Label></div> <div class="col-sm-3 text-center"><asp:Label ID="lblDOB" runat="server" Text=""></asp:Label></div>
    <br /><br /><div class="col-sm-3 text-center">  <asp:Label ID="age" runat="server" Text="Age"></asp:Label></div><div class="col-sm-3 text-center"><asp:Label ID="lblAge" runat="server" Text=""></asp:Label></div>
    <br/>
    <br/>
    <div class="col-sm-3 text-center"><asp:Label ID="lblProfession" runat="server" Text="Profession"></asp:Label></div><div class="col-sm-3 text-center"> 
        <asp:DropDownList ID="ddProfession" CssClass="form-control" runat="server">
            <asp:ListItem Value=" "> Select profession </asp:ListItem>
            <asp:ListItem Value="Student"> Student </asp:ListItem>
            <asp:ListItem Value="Doctor"> Doctor </asp:ListItem>
            <asp:ListItem Value="Engineer"> Engineer </asp:ListItem>
            <asp:ListItem Value="Teacher"> Teacher </asp:ListItem>
            <asp:ListItem Value="Businessman"> Businessman </asp:ListItem>
            <asp:ListItem Value="Other"> Other</asp:ListItem>
        </asp:DropDownList>    </div>
        <div class="col-sm-3 text-center"> <asp:Label ID="lblSalary" runat="server" Text="Salary"></asp:Label></div> <div class="col-sm-3 text-center"><asp:TextBox ID="tbSalary" class=" form-control" type="number" runat="server"></asp:TextBox></div>
        <br /><br /><div class="col-sm-3 text-center"><asp:Label ID="p2" runat="server" Text="Dependencies"></asp:Label></div><div class="col-sm-3 text-center"><asp:TextBox ID="tbDependencies" type="number" class=" form-control"  runat="server"></asp:TextBox></div>
        <div class="col-sm-3 text-center"><asp:Label ID="lblAmount" runat="server" Text="Amount"></asp:Label></div> <div class="col-sm-3 text-center"><asp:TextBox ID="tbAmount" class=" form-control" type="number" runat="server"></asp:TextBox></div>
    <br /><br /><div class="col-sm-3 text-center"><asp:Label ID="lblReason" runat="server" Text="Reason"></asp:Label></div><div class="col-sm-3 text-center"> 
        <asp:DropDownList ID="ddReason" CssClass="form-control" runat="server">
            <asp:ListItem Value=" "> Select reason </asp:ListItem>
            <asp:ListItem Value="Studies"> Studies </asp:ListItem>
            <asp:ListItem Value="Buy Car"> To buy Car </asp:ListItem>
            <asp:ListItem Value="Pay fee"> To pay fee</asp:ListItem>
            <asp:ListItem Value="Buy Home"> To buy home </asp:ListItem>
            <asp:ListItem Value="Pay med Bill"> To pay medical bills </asp:ListItem>
            <asp:ListItem Value="Others"> Others </asp:ListItem>
        </asp:DropDownList></div>
        <div class="col-sm-3 text-center"><asp:Label ID="lblTime" runat="server" Text="Time span"></asp:Label> </div> <div class="col-sm-3 text-center"><asp:TextBox ID="tbTimeSpan" class=" form-control" type="number"  runat="server"></asp:TextBox></div>
    <br /><br /><div class="col-sm-3 text-center"><asp:Label ID="lblInterest" runat="server" Text="Interest"></asp:Label> </div><div class="col-sm-3 text-center"><asp:Label ID="lblInter" runat="server" Text=""></asp:Label></div>
        <div class="col-sm-3 text-center"> <asp:Label ID="lblInstall" runat="server" Text="Installment per month"></asp:Label></div> <div class="col-sm-3 text-center"><asp:Label ID="lblInstallments" runat="server" Text=""></asp:Label></div>
    <br/>
        
    <br />
    <div class="col-md-12">
                  <br />
        *By clicking the confirm button, you agree to our terms and conditions for loan. For more information about our loaning policies, we recommend you visit <a href="#">this</a> link.
                    <br />
        <asp:Label ID="lblRes" runat="server" Text=""></asp:Label>
                    <br /></div>
    <hr/>
    <div class="col-sm-5 text-center" style="margin-left:180px"> <asp:Button ID="btnCalculate" runat="server" class="btn btn-warning col-sm-5"  Text="Calculate" OnClick="btnCalculate_Click" /></div><div class="col-sm-5 text-center" style="margin-right:0px;"><asp:Button ID="btnConfirm" runat="server" class="btn btn-info col-sm-5"  Text="Confirm Loan" OnClick="btnConfirm_Click" /><br /></div>
 <br />

</form>
        <br /><br />

    </div>

</asp:Content>
