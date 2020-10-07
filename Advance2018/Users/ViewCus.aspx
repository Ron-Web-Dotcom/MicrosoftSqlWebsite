<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="ViewCus.aspx.cs" Inherits="ViewCus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
    <link href="../css/styles.css" rel="stylesheet" />
    <link href="../css/MainStyle.css" rel="stylesheet" />
    

    <table>
        <tr>
            <td>
    <div class=" col-lg-12" style="align-content:inherit;">

        <div class="wrapper" >
                                    <asp:TextBox ID="TbxSearch" runat="server" Height="20px" OnTextChanged="TbxSearch_TextChanged"  BackColor="LimeGreen" Font-Bold="True" ForeColor="Black" AutoPostBack="True"></asp:TextBox>
                                    <asp:Button ID="BtnSearch" runat="server" Text="Search"  OnClick="BtnSearch_Click" />
                                </div>
                                                            
                        
                                     
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Cus_Id" CellPadding="4" ForeColor="#333333"  GridLines="Both" OnPageIndexChanging="GridView1_PageIndexChanging" AllowSorting="True" EmptyDataText="No Records" OnSorting="GridView1_Sorting" Width="1250px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Cus_Id" HeaderText="Cus_Id" InsertVisible="False" ReadOnly="True" SortExpression="Cus_Id" />
            <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
            <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
            <asp:BoundField DataField="Trn" HeaderText="Trn" SortExpression="Trn" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Dob" HeaderText="Dob" SortExpression="Dob" DataFormatString="{0:d}"  />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" DataFormatString="{0:c}"/>
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />

    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MajDatabase %>" SelectCommand="SELECT * FROM [Applicants]"></asp:SqlDataSource>
    
  </div>
                </td>
            </tr>
        <tr>
            
            <td>      <asp:Label ID="Gresult" runat="server" ></asp:Label>          </td>
            </tr>
        </table>

 
    
</asp:Content>

