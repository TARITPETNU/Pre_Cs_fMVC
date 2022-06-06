<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CS_1MVC.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <table class="table">
  <thead>
      <br><br>
    <tr>
      <th scope="col">No.</th>
      <th scope="col">Img</th>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      
      <td>
          <asp:Image ID="Image1" runat="server" Height="292px" ImageAlign="Middle" ImageUrl="~/Picture/1.jpg" Width="292px" />
      </td>
      <td>KINO I</td>
      <td>249</td>
      <td>100</td>
    </tr>
    <tr>
      <th scope="row">2</th>
         <td>
          <asp:Image ID="Image2" runat="server" Height="400px" ImageUrl="~/Picture/2.jpg" Width="307px" />
      </td>
      <td>KINO II</td>
      <td>250</td>
      <td>200</td>
    </tr>
    <tr>
      <th scope="row">3</th>
         <td>
          <asp:Image ID="Image3" runat="server" Height="347px" ImageUrl="~/Picture/3.jpg" Width="287px" />
      </td>
      <td>KINO III</td>
      <td>279</td>
      <td>300</td>
    </tr>
  </tbody>
</table>
    <asp:GridView ID="GDProductList" runat="server" AutoGenerateColumns="False" style="margin-top: 0px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ไอดี" />
            <asp:TemplateField HeaderText="รูปสินค้า">
                <ItemTemplate>
                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("productImg") %>' Height="100" Width="100" />

                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="productName" HeaderText="ชื่อ" />
            <asp:BoundField DataField="peoductDescription" HeaderText="คำอธิบาย" />
            <asp:BoundField DataField="price" HeaderText="ราคา" />
        </Columns>
    </asp:GridView>
</asp:Content>

