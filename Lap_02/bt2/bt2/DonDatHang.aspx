<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="BaiTap2.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="w-50 m-auto border border-success">
            <div class="col-md-12 text-center bg-success-subtle"> <h2>ĐƠN ĐẶT HÀNG</h2></div>
            
            <div class="border-success border-top border-bottom">
            <div class="row ">
                <div class="col-2">
                    Khách hàng
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtKhachHang" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtKhachHang" ErrorMessage="Khách Hàng Không Được Rỗng " ForeColor="#CC00CC">{*}</asp:RequiredFieldValidator>
                </div>
             </div>
             <div class="row">
                <div class="col-2">
                    Địa Chỉ
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Địa Chỉ Không Được Rỗng " ForeColor="#CC00CC">{*}</asp:RequiredFieldValidator>
                </div>
                 <div class="row">
                <div class="col-2">
                    Mã Số Thuế
                </div>
                <div class="col-10">
                    <asp:TextBox ID="txtMaSoThue" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtMaSoThue" ErrorMessage="Mã Số Thuế Không Được Rỗng " ForeColor="#CC00CC">{*}</asp:RequiredFieldValidator>
                </div>
                </div> 
            </div> 
            </div>
            <div class="row border-bottom border-success">
                <div class="col-6 ">
                    <h4>Chọn các loại bánh sau</h4>
                    <asp:DropDownList ID="ddlLoaiBanh" runat="server" CssClass="form-control" ></asp:DropDownList>
                    <div class="text-center mt-2 ">
                        Số Lượng: 
                       <asp:TextBox ID="txtSoLuong"  runat="server" CssClass="form-sm"></asp:TextBox> Cái
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtSoLuong" ErrorMessage="Nhập Sai số lượng" ForeColor="Red" Operator="DataTypeCheck" Type="Double">{*}</asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSoLuong" ErrorMessage="Số Lượng Không Được Rỗng " ForeColor="#CC00CC">{*}</asp:RequiredFieldValidator>
                    </div>
                    <div class="text-center mt-2"><asp:Button ID="btnLuu" runat="server" CssClass="btn btn-outline-primary" Text=">" OnClick="btLuu_Click"/></div>
                    
                </div>
                <div class="col-6 ">
                    <h4>Chọn các loại bánh sau</h4>
                    <asp:ListBox ID="lstBanh" SelectionMode="Multiple" runat="server" CssClass="form-control"></asp:ListBox>
                    <div class="text-center ">
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="27px" ImageUrl="~/pmg/icons8-delete-100.png" OnClick="ImageButton1_Click" Width="32px" />
                </div>
                </div>
                <div class="text-center ">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    <asp:Button ID="btnInDon" runat="server" Text="In Đơn Đặt Hàng" class="text-bg-success btn btn-outline-success " OnClick="btnInDon_Click"/>
                    <br />
                </div>
            </div>
        </div>
        <div class="text-center ">
                    <asp:Literal ID="lbKetQua" runat="server"></asp:Literal>
                    <br />
                </div>
        
    </form>
</body>
</html>
