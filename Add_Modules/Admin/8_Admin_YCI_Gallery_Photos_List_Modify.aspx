<%@ Page Language="C#" MasterPageFile="~/Add_Modules/Admin/AdminMaster.master" AutoEventWireup="true"
    CodeFile="8_Admin_YCI_Gallery_Photos_List_Modify.aspx.cs" Inherits="Add_Modules_Admin_Default2"
    Title="YCI Gallary List Modify Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="convenient">
        <div class="daily_services_updown_space">
        </div>
        <b style="color: #DE0B1C">Y</b>CI - <b style="color: #DE0B1C">M</b>aking <b style="color: #DE0B1C">
            L</b>ogistics <b style="color: #DE0B1C">C</b>onvenient
        <div class="daily_services_updown_space">
        </div>
    </div>
    <div>
        <br />
        <div align="center">
            <h2 style="font-family: Arial Black; font-size: 14px;">
                <u><b style="color: #DE0B1C;">L</b><b style="color: #000000;">ist </b><b style="color: #DE0B1C;">
                    O</b><b style="color: #000000;">f </b><b style="color: #DE0B1C;">U</b><b style="color: #000000;">ploaded
                    </b><b style="color: #DE0B1C;">P</b><b style="color: #000000;">hoto</b></u></h2>
        </div>
        <br />
        <div align="center" style="width: 100%; font-family: Arial; font-size: 12px;">
            <asp:GridView ID="grd_Product_Display" runat="server" AutoGenerateColumns="false"
                DataKeyNames="YCI_GALLERY_ID" Width="30%" AllowPaging="true" PageIndex="0" BorderColor="#DE0B1C"
                BorderWidth="0px" PageSize="4" OnPageIndexChanging="grd_Product_Display_PageIndexChanging"
                OnRowDeleting="grd_Product_Display_RowDeleting">
                <Columns>
                    <asp:TemplateField HeaderText="Product">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#"~/uploaded_data/"+Eval("YCI_GALLERY_UPLOAD")%>'
                                Target="_blank">
                                <asp:Image ID="img_book" runat="server" ImageUrl='<%#"~/uploaded_data/"+Eval("YCI_GALLERY_UPLOAD")%>'
                                    Width="96" Height="40" />
                            </asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:BoundField HeaderText="Details" DataField="YCI_GALLERY_DETAILS" />--%>
                    <asp:TemplateField HeaderText="Download">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkDownload" Text="Download" CommandArgument='<%#"~/uploaded_data/"+Eval("YCI_GALLERY_UPLOAD")%>'
                                runat="server" OnClick="DownloadFile" Style="color: #000000; font-family: Arial Black;"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:ImageButton ID="btn_delete" runat="server" CommandName="DELETE" ImageUrl="~/App_Themes/Image/Delete.png"
                                Height="20px" OnClientClick="javascript:return confirm('Are You Sure to Delete This Record?')" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#101010" Font-Size="12pt" Height="25px" HorizontalAlign="Center"
                    VerticalAlign="Middle" ForeColor="#1F232F" />
                <PagerStyle Font-Size="12pt" ForeColor="#1F232F" HorizontalAlign="Center" VerticalAlign="Middle"
                    Height="50px" />
                <HeaderStyle BackColor="  #DE0B1C" ForeColor="white" Font-Size="12pt" Height="45px" />
                <RowStyle ForeColor="#1F232F" HorizontalAlign="Center" />
                <AlternatingRowStyle BackColor="  #DE0B1C" ForeColor="white" />
            </asp:GridView>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Add_Modules/Admin/7_Admin_YCI_Upload_Gallery_Photos.aspx"
                Style="font-family: Arial Black; color: Black; font-size: 14px;">Back To Upload Photo</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Add_Modules/Admin/9_Admin_YCI_Gallery_Photos_Visiter_View.aspx"
                Style="font-family: Arial Black; color: Black; font-size: 14px;">Forward To Cataloag View</asp:HyperLink>
        </div>
        <br />
    </div>
    <div style="height: 180px;">
    </div>
</asp:Content>
