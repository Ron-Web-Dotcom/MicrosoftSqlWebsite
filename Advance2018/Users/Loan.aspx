<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="Loan.aspx.cs" Inherits="LoanBook" EnableEventValidation="false" ValidateRequest="false" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/styles.css" rel="stylesheet" />
    <script src="../js/jquery.js">
         
     </script>
    <style type="text/css">
        
         
       
        
        
      
       
        .auto-style19 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 1050px;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
              
       
        .auto-style25 {
            width: 1053px;
        }
                      
       
        .auto-style30 {
            height: 54px;
            width: 87px;
        }
          
       
        .auto-style33 {
            width: 157px;
        }
      
       
        .auto-style36 {
            height: 39px;
        }
        .auto-style40 {
            height: 47px;
        }
        .auto-style42 {
            width: 138px;
            height: 47px;
        }
        .auto-style59 {
            width: 62px;
            height: 39px;
        }
        .auto-style60 {
            width: 62px;
            height: 47px;
        }
        .auto-style61 {
            width: 62px;
        }
        .auto-style65 {
            width: 360px;
            height: 39px;
        }
              
       
        .auto-style69 {
        width: 138px;
    }
      
       
        .auto-style70 {
            margin-top: 11;
        }
      
       
        .auto-style76 {
            width: 160px;
        }
      
       
        .auto-style77 {
            width: 360px;
            height: 47px;
        }
        .auto-style79 {
            width: 165px;
        }
      
       
        .auto-style80 {
            width: 165px;
            height: 59px;
        }
        .auto-style81 {
            width: 259px;
            height: 39px;
        }
        .auto-style82 {
            width: 259px;
            height: 47px;
        }
        .auto-style83 {
            width: 259px;
        }
        .auto-style84 {
            width: 360px;
            height: 1.8em;
        }
        .auto-style85 {
            height: 1.8em;
        }
        .auto-style86 {
            width: 259px;
            height: 1.8em;
        }
        .auto-style87 {
            width: 62px;
            height: 1.8em;
        }
        .auto-style89 {
            width: 138px;
            height: 1.8em;
        }
        .auto-style90 {
            width: 169px;
            height: 47px;
        }
        .auto-style91 {
            width: 169px;
            height: 1.8em;
        }
        .auto-style92 {
            width: 169px;
        }
      
       
        .auto-style93 {
            width: 20px;
            height: 54px;
        }
        .auto-style94 {
            width: 139px;
            height: 54px;
        }
        .auto-style95 {
            width: 360px;
            height: 54px;
        }
        .auto-style96 {
            width: 259px;
            height: 54px;
        }
        .auto-style97 {
            height: 54px;
        }
      
       
        .auto-style98 {
            width: 360px
        }
      
       
        .auto-style99 {
        width: 360px;
        height: 2em;
    }
    .auto-style100 {
        height: 2em;
    }
    .auto-style101 {
        width: 259px;
        height: 2em;
    }
    .auto-style102 {
        width: 169px;
        height: 2em;
    }
    .auto-style103 {
        width: 138px;
        height: 2em;
    }
      
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    
        
    <div class="col-lg-12">
        
                        <div class="auto-style19">
                            

        
                         
                    <table class="auto-style25 table"  style="background-color:darkgray; width: 957px;">
                        <tr>
                            <td colspan="8" style="font-weight: bold; vertical-align: middle;
                               color:cornsilk; border-top-style: outset; font-family: 'Times New Roman'; border-right-style: outset;
                               border-left-style: outset; background-color: #22A7F0; text-align: center; border-bottom-style: outset"><h3>Loan Application</h3></td>
                            
                        </tr>
                        <tr>
                            <td style="color: #0000cc;  font-family: 'Times New Roman';
                                " class="auto-style65" >
                                <div class ="wrapper">
                                Loan ID
                                
                                <asp:TextBox ID="loanID" runat="server" MaxLength="50" Width="42px" Enabled="False" ForeColor="#003300"></asp:TextBox>
                                    </div>
                                    </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style36" colspan="2">
                                <div class="wrapper">
                                    

                                    <asp:TextBox ID="CusLoad" runat="server" Height="22px" Width="98px"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" Text="GO" OnClick="Button2_Click1" Width="41px" formnovalidate="formnovalidate"  />
                            </div>
                                </td>
                            <td style="color: #0000cc;font-family: 'Times New Roman';
                                " class="auto-style81" colspan="2">
                                <asp:Button ID="Lsearch" runat="server" Text="Search" Width="90px" formnovalidate="formnovalidate" CssClass="auto-style70" OnClick="Lsearch_Click" />
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style59">
                                <asp:TextBox ID="LSearchID" runat="server" Width="165px"  TextMode="Number" Height="30px"></asp:TextBox>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman' ; text-align:center;" class="auto-style36" colspan="2" >
                                <asp:Label ID="Label30" runat="server" Text="Guarantor"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; " class="auto-style77">
                                <asp:Label ID="Label10" runat="server" Text="Customer ID:" ForeColor="Black"></asp:Label></td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                               " class="auto-style40" colspan="2">
                                
                                

                                <input id="L_BI" runat="server" class="auto-style76" type="text" disabled="disabled"  /></td>
                            <td style="color: #0000cc; padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style82" colspan="2">
                                <asp:Label ID="Label19" runat="server" ForeColor="Black" Text="Date"></asp:Label>
                            </td>
                            <td style="color: #0000cc; padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style60">
                                <asp:TextBox ID="lDat" runat="server" required="required" Height="16px" Width="165px" ></asp:TextBox>
                                

                                <cc1:CalendarExtender ID="lDat_CalendarExtender" runat="server" Enabled="True" TargetControlID="lDat">
                                </cc1:CalendarExtender>
                                

                            </td>
                            
                            <td style="color: #0000cc; padding: 10px; font-family: 'Times New Roman';" class="auto-style90">
                                <asp:Label ID="Label23" runat="server" Text="First Name :"></asp:Label>
                            </td>
                            <td style="color: #0000cc; padding: 10px; font-family: 'Times New Roman';" class="auto-style42">
                                
                                <input id="GFName" runat="server" type="text" class="auto-style33" required="required"/></td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; " class="auto-style84">
                                <asp:Label ID="UserNameLabel" runat="server" ForeColor="Black">First Name:</asp:Label></td>
                            <td style="color: #0000cc; font-family: 'Times New Roman'; " class="auto-style85" colspan="2">
                                
                                <input id="sName" type="text"  runat="server" class="auto-style76" required="required" disabled="disabled"/>

                            </td>
                            <td style="color: #0000cc; padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style86" colspan="2">
                                <asp:Label ID="Label15" runat="server" Text="Duration (Year)" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="color: #0000cc; padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style87">
                                <input id="Duration" runat="server" class="auto-style79" required="required" type="number" step="any"/></td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style91">
                                <asp:Label ID="Label24" runat="server" Text="Last Name :"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style89">
                                
                                <input id="GLName" runat="server" type="text" class="auto-style33" required="required"/></td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; " class="auto-style98">
                                <asp:Label ID="Label4" runat="server" Text="Last Name:" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " colspan="2">
                                <asp:TextBox ID="AN" runat="server" MaxLength="50" Width="160px" Enabled="False"></asp:TextBox>
                            </td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style83" colspan="2">
                                <asp:Label ID="Label32" runat="server" Text="Total Amount" ForeColor="#003300"></asp:Label>
                            </td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style61">
                                <input id="T_Amount" runat="server" class="auto-style79"   disabled="disabled"  /></td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style92">
                                <asp:Label ID="Label25" runat="server" Text="Address :"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style69">
                                
                                <input id="GAddress" runat="server" type="text" class="auto-style33" required="required"/></td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; 
                                " class="auto-style98">
                                <asp:Label ID="Label12" runat="server" Text="Type of Loan:" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style15" colspan="2">
                                <input id="tLoan" runat="server" class="auto-style79" required="required" /></td>
                            <td style="color: #0000cc; padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style83" colspan="2">
                                <asp:Label ID="Label31" runat="server" Text="Mothly Payment" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style61">
                                <input id="M_Pay" class="auto-style79" runat="server"  visible="True" enableviewstate="True" disabled="disabled" /></td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style92">
                                <asp:Label ID="Label26" runat="server" Text="TRN"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style69">
                                
                                <input id="GTrn" runat="server" type="number" min="" max="" class="auto-style33" required="required"/></td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style98">
                                <asp:Label ID="Label13" runat="server" Text="Amount;" ForeColor="Black"></asp:Label></td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';" colspan="2">
                                <input id="Amount" runat="server"  class="auto-style79" required="required" type="number" step="any"/></td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style83" colspan="2">
                                <asp:Label ID="Label20" runat="server" Text="Reason " ForeColor="Black"></asp:Label>
                            </td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style61" rowspan="2">
                                <input id="Reason" runat="server" class="auto-style80" required="required" multiple="multiple" />
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman'" class="auto-style92">
                                <asp:Label ID="Label27" runat="server" Text="Occupation"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman'" class="auto-style69">
                                
                                <input id="GOccupation" runat="server" type="text" class="auto-style33" required="required"/></td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style99">
                                <asp:Label ID="Label14" runat="server" Text="Interest %:" ForeColor="Black"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';" colspan="2" class="auto-style100">
                                <input id="Interest" runat="server" class="auto-style79" required="required" type="number" step="any"  /></td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style101" colspan="2">
                                </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman'" class="auto-style102">
                                <asp:Label ID="Label29" runat="server" Text="Tel :"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman'" class="auto-style103">
                                
                                <input id="GTelephone" runat="server" type="text" class="auto-style33" required="required"/></td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style84">
                                </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';" colspan="2" class="auto-style85">
                                
                                </td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style86" colspan="2" >
                                <asp:Button ID="Calculate" runat="server"  Text="Cal" Width="75px" Height="32px" formnovalidate="formnovalidate"  OnClick="Calculate_Click"/>
                            </td>
                            <td style="color: #0000cc;  padding: 10px; font-family: 'Times New Roman';
                                " class="auto-style87">
                                </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman'" class="auto-style91">
                                </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman'" class="auto-style89">
                                </td>
                        </tr>
                        <tr>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style95">
                                </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style93">
                                <asp:Button ID="LADD" runat="server" OnClick="Button2_Click" Text="ADD" Width="75px" Height="32px" />
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';
                                " class="auto-style94">
                                <asp:Button ID="BDelete" runat="server" Text="Delete" Width="75px" Height="33px" OnClick="BDelete_Click" />
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';" class="auto-style96">
                                <asp:Button ID="BUpdate" runat="server"  Text="Update" Width="75px" Height="32px" OnClick="BUpdate_Click" />
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';" class="auto-style96">
                                <asp:Button ID="BNew" runat="server"  Text="New" Width="75px" Height="32px" OnClick="BNew_Click" formnovalidate="formnovalidate" />
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';" class="auto-style30">
                                <asp:Label ID="res" runat="server"></asp:Label>
                            </td>
                            <td style="color: #0000cc; font-family: 'Times New Roman';" class="auto-style97">

                                

                                
                                <asp:Label ID="Label33" runat="server" Text="Records:"></asp:Label>

                                

                                
                            </td>
                            
                            <td style="color: #0000cc; font-family: 'Times New Roman';" class="auto-style97">

                                

                                
                                <asp:TextBox ID="LoanRecords" runat="server" Enabled="False" Height="16px" Width="87px"></asp:TextBox>

                                

                                
                            </td>
                            
                        </tr>
                    </table>
                                </div>
                            
        
    </div>
    <script src="js/jquery.js" ></script>
      <script src="js/bootstrap.min.js" ></script>
        
</asp:Content>