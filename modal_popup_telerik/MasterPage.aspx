<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage.aspx.cs" Inherits="modal_popup_telerik.MasterPage" %>
<%@ Register Assembly="Telerik.Web.UI" TagPrefix="Telerik" Namespace="Telerik.Web.UI" %>
<body>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">   </asp:ScriptManager>
      
<telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
       <link href="CSS/styleW3.css" rel="stylesheet" />
    <script type="text/javascript">
        function EditForm(id) {
            var browserWidth = $telerik.$(window).width();
            var browserHeight = $telerik.$(window).height();
            if (browserWidth > 500)    
                window.radopen("Master_PopUp.aspx?UserId=" + id, "RadWindow1", (browserWidth * 2) / 3, (browserHeight) / 2 + 145);
            else
                window.radopen("UserMaintenance_Maintenance_PopUp.aspx?UserId=" + id, "RadWindow1", 340, 450);
            return false;
        }
        function AddForm() {
            var browserWidth = $telerik.$(window).width();
            var browserHeight = $telerik.$(window).height();
            if (browserWidth > 500)
                window.radopen("Master_PopUp.aspx", "RadWindow1", (browserWidth * 2) / 3, (browserHeight) / 2 + 155);
            else
                window.radopen("Master_PopUp.aspx", "RadWindow1", 340, 450);           
            return false;
        }
        function CloseModal_Add(oWnd, args) {
            var arg = args.get_argument();
            if (arg) {
           
            }
          
           
        }
    </script>
</telerik:RadCodeBlock>
<telerik:RadWindowManager ID="RadWindowManager1" runat="server">
    <Windows>
        <telerik:RadWindow ID="RadWindow1" runat="server" Skin="Metro"  text="Sample modal" ShowContentDuringLoad="false" Modal="true" NavigateUrl="Master_PopUp.aspx" Animation="Fade" ReloadOnShow="true" VisibleStatusbar="false" Behaviors="Close" OnClientClose="CloseModal_Add"></telerik:RadWindow>
    </Windows>
</telerik:RadWindowManager>

  <div class="w3-quarter txtAlignRight buttonPadding"><input type="button" value="ADD USER" class="w3-button w3-blue" Onclick="AddForm()" /></div>
      
    </form>
</body>