<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="baiTap2.DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center"> HỒ SƠ ĐĂNG KÝ </h2>
            <div class="row border border border-primary">
                <div class="col-md-8 pt-2 text-center">
                    Thông tin đăng ký
                </div>
                <div class="col-md-4 pt-2 text-center border-left border-primary">
                    Hồ sơ đăng nhập
                </div>

            </div>
            <div class="row border border-primary ">
                <div class="col-md-8 "> 
                    <div class="row mt-2 mb-2">
                        <div class="col-md-3">
                            Tên đăng nhập
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtTenDN" runat="server" MaxLength="16" CssClass="form-control"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="rfvTenDN" 
                                ConTrolToValidate="txtTenDN" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống">
                            </asp:RequiredFieldValidator>
                            <asp:RequiredFieldValidator ID="rvTenDN" 
                                 ConTrolToValidate="txtTenDN" text="(*)" Display="Dynamic"
                                CssClass="text-danger" ValidationExpression="[\d|\w|!|&|_]{8}[\d|\w|!|&|_]+"
                                runat="server" ErrorMessage="Email không hợp lệ" />

                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="rfvMatKhau" 
                                ConTrolToValidate="txtMatKhau" Text="*" ForeColer="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Mật khẩu nhập lại không được bỏ trống">
                            </asp:RequiredFieldValidator>
                      
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Nhập lại Mật khẩu
                        </div>
                      
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMKNL" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox> 
                            <asp:RequiredFieldValidator ID="cvMatKhau"
                                runat="server" Text="(*)" Display="Dynamic" CssClass="text-danger" 
                                 ConTrolToValidate="txtMatKhau"   ErrorMessage="Mật khẩu nhập lại không đúng"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    <div class="row mb-2 bg-nen1">
                        <div class="col-md-12 text-center p-2">
                            Thông tin cá nhân
                        </div>
                    </div>  
                        <div class="row mb-2">
                            <div class="col md-3">
                                Họ tên khách hàng
                            </div>
                            <div class="col md-9 form-inline">
                                <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvHoTen"  ConTrolToValidate="txtHoTen"
                                   text="*" ForeColor="#ff0000" Display="Dynamic"
                                    runat="server" ErrorMessage="Chưa nhập họ tên"/>
                               
                        </div>
                        <div class="row mb-2">
                            <div class="col md-3">
                               Ngày sinh
                            </div>
                            <div class="col md-9 form-inline">
                               <div class="form-inline">
                                   <asp:DropDownList ID="ddlNgay" CssClass="form-control" runat="server"></asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="rfvNgay" ConTrolToValidate="ddlNgay" 
                                     text="*" ForeColor="#ff0000" Display="Dynamic"  
                                       runat="server" ErrorMessage="Chưa chọn ngày"/>
                                   <asp:DropDownList ID="ddlThang" CssClass="form-control" runat="server"></asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="rfvThang" ConTrolToValidate="ddlThang" 
                                     text="*" ForeColor="#ff0000" Display="Dynamic"  
                                       runat="server" ErrorMessage="Chưa chọn Tháng"/>
                                   <asp:DropDownList ID="ddlNam" CssClass="form-control" runat="server"></asp:DropDownList>
                                   <asp:RequiredFieldValidator ID="rfvNam" ConTrolToValidate="ddlNam" 
                                     text="*" ForeColor="#ff0000" Display="Dynamic"  
                                       runat="server" ErrorMessage="Chưa chọn năm"/>
                               </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                            <div class="col md-3">
                                Email
                            </div>
                            <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail" runat="server" Text="(*)" ForeColor="Red"
                                CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ErrorMessage="Email không hợp lệ" Display="Dynamic"></asp:RegularExpressionValidator>
                        </div>
                        </div>
                    <div class="row mb-2">
                <div class="col-md-3">
                    Thu Nhập
                </div>
                <div class="col-md-9 form-inline">
                    <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RangeValidator ID="rfvThuNhap" Text="(*)" Display="Dynamic" CssClass="text-danger"
                        ControlToValidate="txtThuNhap" MinimumValue="1000000" MaximumValue="50000000"
                        runat="server" ErrorMessage="Thu Nhập hợp lệ [1-50] triệu" />
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-3">
                    Giới Tính
                </div>
                <div class="col-md-9">
                    <asp:CheckBox ID="chkPhai" runat="server" Text="Nam" Checked="true" />
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-md-3">
                    Địa Chỉ
                </div>
                <div class="col-md-9">
                    <asp:TextBox ID="txtDiaChi" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-3">
                    Điện Thoại
                </div>
                <div class="col-md-9">
                    <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="row mb-2">
                <div class="col-md-12 text-center">
                    <asp:Button ID="btDangKy" runat="server" Text="Đăng Ký" OnClick="btDangKy_Click" />
                </div>
            </div>
            </div>



        <div class="col-md-4">
            <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
            <asp:ValidationSummary ID="vsTongHopLoi" HeaderText="Danh Sách Lỗi: "
                ShowSumary="true" ShowMessageBox="true"
                CssClass="text-danger" runat="server" />
        </div>
        
    </div>
</div>
    </form>
</body>
</html>
