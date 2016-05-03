﻿<%@ Page Title="Audit" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="false"  CodeBehind="Audit.aspx.cs" Inherits="ProbatiuneApp.Audit" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper"  >
            <asp:TextBox ID="SearchTextBox" runat="server" placeholder="Cautare UserName" Height="23px" Width="272px" BorderColor="#264d73" style="margin:10px 15px 15px 15px;position:static;" BackColor="#D8D8D8 " ></asp:TextBox>
            <asp:ImageButton ID="SearchButton" runat="server" Height="30px" ImageUrl="~/Images/search.png" OnClick="SearchButton_Click" Width="30px" style="margin:10px 15px -10px 0px;position:static;" />
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent1" ContentPlaceHolderID="MainContent">
    <div class="searchDiv">
    </div>
        <asp:GridView runat="server" ID="GridView1" ContentPlaceHolderID="Grid_Angajati" CellPadding="4" AutoGenerateColumns="False" AllowPaging="True"
             PageSize="15" OnPageIndexChanging="OnPageIndexChanging" ForeColor="#333333" GridLines="None" style="margin:0 auto" >
      
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns> 
                <asp:TemplateField HeaderText="Tip Op. ">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_type" runat="server" Text='<%#Eval("TYPE") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText=" Nume Tabel">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_tableName" runat="server" Text='<%#Eval("TableName") %>'></asp:Label>  
                    </ItemTemplate>   
                </asp:TemplateField>  
                 
                   <asp:TemplateField HeaderText=" Campul Modif.">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("FieldName") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText=" Val. veche ">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_old" runat="server" Text='<%#Eval("OldValue") %>'></asp:Label>  
                    </ItemTemplate>   
                </asp:TemplateField>  
                 <asp:TemplateField HeaderText=" Val. noua">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_new" runat="server" Text='<%#Eval("NewValue") %>'></asp:Label>  
                    </ItemTemplate>   
                </asp:TemplateField> 
                  <asp:TemplateField HeaderText=" Data">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_date" runat="server" Text='<%#Eval("UpdateDate") %>'></asp:Label>  
                    </ItemTemplate>   
                </asp:TemplateField>  
                 <asp:TemplateField HeaderText=" UserName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_username" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>  
                    </ItemTemplate>   
                </asp:TemplateField> 
               
            </Columns>
        </asp:GridView>
</asp:Content>