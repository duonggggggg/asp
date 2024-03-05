using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BaiTap2
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Khởi tạo  cho ddlLoaiBanh
                ddlLoaiBanh.Items.Add(new ListItem("Bánh Cam", "01"));
                ddlLoaiBanh.Items.Add(new ListItem("Bánh Tiêu", "02"));
                ddlLoaiBanh.Items.Add(new ListItem("Bánh Bò", "03"));
            }
        }

        protected void btLuu_Click(object sender, EventArgs e)
        { 
            bool checkExist = false;
        char[] delim = { '(', ')' };
       int soLuong;
        //b1. kiem tra ton tai
       for (int i =0; i < lstBanh.Items.Count; i++)
           {
                string itemText = lstBanh.Items[i].Text;
                if (itemText.Contains(ddlLoaiBanh.SelectedItem.Text)) 
                {
                    //su ly cong don so luong
                    string[] arr = itemText.Split(delim);
                    soLuong = int.Parse(txtSoLuong.Text) + int.Parse(arr[1]);
                    lstBanh.Items[1].Text = $"{ddlLoaiBanh.SelectedItem.Text} ({soLuong})";
                    checkExist = true;
                    break;
                }
            }
            //b2
            if(!checkExist)
        {
            string data = $"{ddlLoaiBanh.SelectedItem.Text}({txtSoLuong.Text})";
            lstBanh.Items.Add(data);
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            /*int index = lbBanh.SelectedIndex;
            lbBanh.Items.RemoveAt(index);*/
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
        }

        protected void btnInDon_Click(object sender, EventArgs e)
        {

            string kq = "";
            //B1.thu thập thông tin

            kq += "<h2>Hóa đơn của bạn</h2>";

            kq += "<div class='border border-primary'>";
            kq += "<div class='text-danger'>";
            kq += $"Khách hàng:<i> {txtKhachHang.Text}</i> <br>";
            kq += $"Địa Chỉ:<i>" + txtDiaChi.Text + "</i> <br>";
            kq += $"Mã Số Thuế:<i> {txtMaSoThue.Text}</i> <br>";
            kq += "</div>";
            kq += "<b>Đặt các loại bánh sau</b>";
            kq += "<table class='table table-bordered'>";
            char[] delim = { '(', ')' };
            foreach (ListItem item in lstBanh.Items)
            {
                string[] arr = item.Text.Split(delim);
                kq += "<tr>";
                kq += $"<td>{arr[0]}</td><td>{ arr[1]}</td>";
                kq += "</tr>";
            }
            kq += "</table>";
            kq += "</div>";

            kq += "<ul>";
            //B2.Trả Kết quả về client
            lbKetQua.Text = kq;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            /*int index = lbBanh.SelectedIndex;
           lbBanh.Items.RemoveAt(index);*/
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                {
                    lstBanh.Items.RemoveAt(i);
                }
            }
        }
    }
}