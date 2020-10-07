<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="AccountBalance.aspx.cs" Inherits="AccountBalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <link href="../css/styles.css" rel="stylesheet" />
    <asp:UpdatePanel ID="panel1" runat="server"><ContentTemplate>
    <div  class="col-lg-12" >
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="loan_id" DataSourceID="SqlDataSource1" EmptyDataText="No Entries" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1250">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="loan_id" HeaderText="loan ID" InsertVisible="False" ReadOnly="True" SortExpression="loan_id" />
            <asp:BoundField DataField="Cus_Id" HeaderText="Cus ID" SortExpression="Cus_Id" />
            <asp:BoundField DataField="TLoan" HeaderText="Type Loan" SortExpression="TLoan" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Interest" HeaderText="Interest" SortExpression="Interest" />
            <asp:BoundField DataField="LDate" HeaderText="Loan Date" SortExpression="LDate" DataFormatString="{0:d}" />
            <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
            <asp:BoundField DataField="T_Amount" HeaderText="Total Amount" SortExpression="T_Amount" DataFormatString="{0:c}" />
            <asp:BoundField DataField="M_Pay" HeaderText="Monthly Payment" SortExpression="M_Pay" DataFormatString="{0:c}" />
            <asp:BoundField DataField="Reason" HeaderText="Reason" SortExpression="Reason" />
            <asp:BoundField DataField="GFName" HeaderText="Guarantor FName" SortExpression="GFName" />
            <asp:BoundField DataField="GLName" HeaderText="Guaranto LName" SortExpression="GLName" />
            <asp:BoundField DataField="GAddress" HeaderText="Guarantor Address" SortExpression="GAddress" />
            <asp:BoundField DataField="GOccupation" HeaderText="Guaranto Occupation" SortExpression="GOccupation" />
            <asp:BoundField DataField="GTelephone" HeaderText="Guaranto Telephone" SortExpression="GTelephone" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:MajDatabase %>" SelectCommand="SELECT * FROM [Loan]"></asp:SqlDataSource>
  
        </div>
</ContentTemplate> </asp:UpdatePanel>
</asp:Content>

