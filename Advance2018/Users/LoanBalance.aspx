<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="LoanBalance.aspx.cs" Inherits="Users_LoanBalance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/styles.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="master" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="table-wrapper" style="margin-right: 528px">
            <!--Table-->
            <table class="table  bg-success"  style="background-color:lightblue; width: 100%; height: 187px;">
                
                <!--Table body-->
                <tbody>
                    <tr>
                        <th colspan="4" class="auto-style6 "  style="background-color:cyan; text-align:center;"><h4 style="width: 136px">Loan Balances
                            </h4>
                        </th>
                    </tr>
                    <tr>
                        
                        <td class="auto-style15" style="width: 131px">Customer ID</td>
                        <td style="width: 36px">
                            <asp:TextBox ID="CustID" runat="server" Enabled="False" Height="20px"></asp:TextBox>
                        </td>
                        <td style="width: 111px">
                             
                            
                        </td>
                        <td>
                            <div class="auto-style21">
                            <input id="BalanceSearch" type="search" runat="server"  onclick ="Button1_Click" formnovalidate="formnovalidate" class="auto-style16" />
                            <asp:Button ID="Button_SEARCH"  CssClass="btn-danger" runat="server" Text="Search" formnovalidate="formnovalidate"  Height="22px" Width="64px" OnClick="Button_SEARCH_Click"  />
                            </div>
                        </td>
                    </tr>
                   
                    
                    <tr>
                        
                        <td class="auto-style15" style="width: 131px">First Name</td>
                        <td class="auto-style27" style="width: 36px"><input id="First_Name" runat="server" type="text" required="required" validationgroup="ValidateT" class="auto-style18" disabled="disabled"    /></td>
                        <td class="auto-style8" style="width: 111px">
                            <asp:Label ID="Label1" runat="server" Text="Loan"></asp:Label>
                        </td>
                        <td class="auto-style17">
                                <input id="Amount" runat="server"  class="auto-style79" required="required" type="number" step="any"/></td>
                    </tr>
                    
                    <tr>
                        
                        <td class="auto-style15" style="width: 131px">Last Name</td>
                        <td class="auto-style27" style="width: 36px"><input id="Last_Name" runat="server" type="text" validationgroup="ValidateT" required="required" class="auto-style19"/></td>
                        
                        <td class="auto-style8" style="width: 111px">
                                <asp:Label ID="Label14" runat="server" Text="Interest %:" ForeColor="Black"></asp:Label>
                            </td>
                        <td class="auto-style17">
                            
                                <input id="Interest" runat="server" class="auto-style79" required="required" type="number" step="any"  /><asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr>
                        
                        <td class="auto-style15" style="width: 131px">
                                <asp:Label ID="Label15" runat="server" Text="Duration (Months)" ForeColor="Black"></asp:Label>
                            </td>
                        <td class="auto-style27" style="width: 36px">
                                <input id="Duration" runat="server" class="auto-style79" required="required" type="number" step="any"/></td>
                        
                        <td class="auto-style8" style="width: 111px">
                                <asp:Label ID="Label32" runat="server" Text="Total Amount" ForeColor="#003300"></asp:Label>
                            </td>
                        <td class="auto-style17">
                            
                                <input id="T_Amount" runat="server" class="auto-style79"   disabled="disabled"  /></td>
                    </tr>
                    
                    <tr>
                        
                        <td class="auto-style15" colspan="4">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="809px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:BoundField DataField="Months" HeaderText="Months" SortExpression="Months" />
                                    <asp:BoundField DataField="StartBalance" HeaderText="Balance" SortExpression="StartBalance" />
                                    <asp:BoundField DataField="Payment" HeaderText="Payment" SortExpression="Payment" />
                                    <asp:BoundField DataField="Interest" HeaderText="Interest" SortExpression="Interest" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>


                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AdvanceDBConnectionString %>" SelectCommand="SELECT [Months], [StartBalance], [Payment], [Interest] FROM [LoanBalance] "></asp:SqlDataSource>


                        </td>
                    </tr>
                    
                    <tr>
                        
                        <td class="auto-style15" colspan="4">
                            <asp:Label ID="BalResult" runat="server"></asp:Label>


                        </td>
                    </tr>
                </tbody>
                <!--Table body-->
            </table>
            <!--Table-->
             </div>
   

       
</asp:Content>

