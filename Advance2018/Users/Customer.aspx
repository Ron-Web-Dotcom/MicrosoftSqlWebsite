<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" EnableEventValidation="false" ValidateRequest="false" %>
<%@ MasterType VirtualPath="~/Users/User.master" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/styles.css" rel="stylesheet" />
     
    
    


    <style type="text/css">
        .auto-style3 {
            height: 0.4em;
        }
        .auto-style4 {
            width: 180px;
        }
        .auto-style6 {
            width: 141px;
           
        }
        .auto-style8 {
            width: 29px;
        }
        .auto-style10 {
            width: 153px;
        }
        .auto-style14 {
            height: 62px;
        width: 167px;
        margin-left: 0;
    }
        .auto-style15 {
            width: 120px;
        }
        .auto-style16 {
            width: 121px;
            height: 21px;
        }
        .auto-style17 {
            width: 212px;
        }
        .auto-style18 {
            height: 21px;
        }
        .auto-style19 {
            height: 20px;
        }
        .auto-style21 {
            width: 191px;
        }
        .auto-style23 {
            width: 67px;
        }
        .auto-style24 {
            width: 72px;
        }
    .auto-style25 {
        position: relative;
        min-height: 1px;
        float: left;
        width: -2147483648%;
        left: 0px;
        top: 0px;
        padding-left: 15px;
        padding-right: 15px;
    }
    .auto-style26 {
        width: 102px;
    }
    .auto-style27 {
        width: 178px;
    }
    .auto-style28 {
        width: 81px;
    }
    </style>
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
  
        

    

          <div class="" >
    <div class="auto-style2">
        <div class="col-md-2">
        
        </div>
        
    <div class="auto-style25">
        <!-- Table with panel -->
<div class="card card-cascade narrower">

    
    <div class="px-4">

        <div class="table-wrapper">
            <!--Table-->
            <table class="table  bg-success"  style="background-color:lightblue; width: 100%; height: 505px;">
                
                <!--Table body-->
                <tbody>
                    <tr>
                        <th colspan="8" class="auto-style6 "  style="background-color:hotpink;"><h4>Applicant
                            </h4>
                        </th>
                    </tr>
                    <tr>
                        
                        <td class="auto-style15">Customer ID</td>
                        <td class="auto-style27" colspan="2">
                            <asp:TextBox ID="CustID" runat="server" Enabled="False" Height="20px"></asp:TextBox>
                        </td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style8">
                             
                            
                        </td>
                        <td class="auto-style17" colspan="2">
                            <div class="auto-style21">
                            <input id="appSearch" type="search" runat="server"  onclick ="Button1_Click" formnovalidate="formnovalidate" class="auto-style16" />
                            <asp:Button ID="Btn_SEARCH"  CssClass="btn-danger" runat="server" Text="Search" formnovalidate="formnovalidate" OnClick="Button1_Click" Height="22px" Width="64px"  />
                            </div>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                   
                    
                    <tr>
                        
                        <td class="auto-style15">First Name</td>
                        <td class="auto-style27" colspan="2"><input id="First_Name" runat="server" type="text" required="required" validationgroup="ValidateT" class="auto-style18"    /></td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style8">Gender</td>
                        <td class="auto-style17" colspan="2">
                            &nbsp;<asp:DropDownList ID="Gender1" runat="server" AutoPostBack="True" Width="86px" Height="18px">
                                <asp:ListItem>-------------</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                            </asp:DropDownList>
                                </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    
                    <tr>
                        
                        <td class="auto-style15">Last Name</td>
                        <td class="auto-style27" colspan="2"><input id="Last_Name" runat="server" type="text" validationgroup="ValidateT" required="required" class="auto-style19"/></td>
                        <td class="auto-style26">&nbsp;</td>
                        
                        <td class="auto-style8">Email</td>
                        <td class="auto-style17" colspan="2">
                            
                            <input id="Email" runat="server"  type="email" autocomplete="off" class="auto-style19" /></td>
                        <td></td>
                    </tr>
                    <tr>
                       
                        <td class="auto-style15">Address</td>
                        <td class="auto-style27" colspan="2" rowspan="2">
                            &nbsp;<textarea id="Address"  class="auto-style14" runat="server" name="S1" required="required"></textarea></td>
                        <td class="auto-style26">&nbsp;</td>
                        
                        <td class="auto-style8">D.O.B</td>
                        
                        <td class="auto-style17" colspan="2">
                            <asp:TextBox ID="txDOB" runat="server"  required="required" Height="20px"  ></asp:TextBox>
                            <cc1:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txDOB"></cc1:CalendarExtender>
                            

                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        
                        <td class="auto-style15">&nbsp;</td>
                        <td class="auto-style26">
                            &nbsp;</td>
                        <td class="auto-style8">Salary</td>
                        <td class="auto-style17" colspan="2">
                            <input id="Salary" runat="server"  type="number" required="required" validationgroup="ValidateT" class="auto-style19"/>
                        </td>
                        <td class="auto-style4">&nbsp;</td>
                        
                    </tr>
                    <tr>
                        
                        <td class="auto-style15">Age</td>
                        <td class="auto-style27" colspan="2">
                            
                            <input id="Age" runat="server"   type="number" class="auto-style19" /></td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style8">
                            &nbsp;Tel :</td>
                        <td class="auto-style17" colspan="2">
                            <input id="Telephone" runat="server" type="number"  required="required" class="auto-style19" /></td>
                    </tr>
                    <tr>
                        
                        <td class="auto-style15">Occupation</td>
                        <td class="auto-style27" colspan="2">
                            
                            <input id="Occupation" runat="server" type="text" required="required" class="auto-style19"/></td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td class="auto-style17" colspan="2">
                            &nbsp;</td>
                        <td class="auto-style10">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        
                        <td class="auto-style15">TRN</td>
                        <td class="auto-style27" colspan="2">
                            <input id="Trn" runat="server" type="number" required="required" class="auto-style19"/>
                        </td>
                        <td class="auto-style26">&nbsp;</td>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td class="auto-style17" colspan="2">
                            <asp:Label ID="Result" runat="server"></asp:Label>
                        </td>
                        <td><asp:Button  ID="VW" role="button"   PostBackUrl="~/Users/ViewCus.aspx" runat="server"  Text="View Customers" formnovalidate="formnovalidate" /></td>
                         
                    </tr>
                    <tr>
                        
                        <td class="auto-style15">
                            <asp:ImageButton ID="ImageButton4" runat="server" CssClass="btn-primary" Height="40px" ImageUrl="~/Images/new.png" OnClick="ImageButton4_Click" Width="57px" formnovalidate="formnovalidate" />
                        </td>
                        <td class="auto-style23">
                            <asp:ImageButton ID="btnAdd" runat="server" Height="44px" ImageUrl="~/Images/ad.png" OnClick="ImageButton5_Click" Width="81px" />
                        </td>
                        <td class="auto-style28">
                            <asp:ImageButton ID="btnDelete" runat="server" Height="44px" ImageUrl="~/Images/del.png" OnClick="ImageButton2_Click" Width="81px" />
                        </td>
                        <td class="auto-style26">
                            <asp:ImageButton ID="btnUpdate" runat="server" Height="44px" ImageUrl="~/Images/up.png" Width="81px" OnClick="ImageButton3_Click" />
                        </td>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td class="auto-style24">
                            <asp:Label ID="Label1" runat="server" Text="Records:"></asp:Label>
                        </td>
                        <td class="auto-style17">
                            <asp:TextBox ID="NumRecords" runat="server" Enabled="False" Height="16px" Width="66px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
                <!--Table body-->
            </table>
            <!--Table-->
             </div>
   

        </div>                      
        </div>

    </div>

</div>
<!-- Table with panel -->
   
   

       
       
</div>
    

        
</asp:Content>




