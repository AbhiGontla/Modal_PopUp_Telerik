<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Master_PopUp.aspx.cs" Inherits="modal_popup_telerik.Master_PopUp" %>
<%@ Register Assembly="Telerik.Web.UI" TagPrefix="Telerik" Namespace="Telerik.Web.UI" %>
    <form id="form1" runat="server">
<Telerik:RadCodeBlock ID="RadCodeBlock1" runat="server">
    <link href="CSS/styleW3.css" rel="stylesheet" />
    <script type="text/javascript">
        function closeWin(value) {
            var oArg = new Object();
            oArg.value = value;
            GetRadWindow().close(oArg); 
        }
        function GetRadWindow() {
            var oWindow = null; if (window.radWindow)
                oWindow = window.radWindow; else if (window.frameElement.radWindow)
                    oWindow = window.frameElement.radWindow; return oWindow;
        }
    </script>
</Telerik:RadCodeBlock>
<Telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Skin="Outlook"></Telerik:RadAjaxLoadingPanel>
<Telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" LoadingPanelID="RadAjaxLoadingPanel1">
    
    <div class="modal-content" id="UserPOPUP">

        <div class="w3-row-padding">
	        <div class="pageHeading w3-threequarter"><asp:label id="lblHeader" text="Sample Modal Popup" runat="server"></asp:label></div>
        </div> 
        <div class="w3-row-padding">
            <div class="w3-threequarter">
                <div class="errorDivForms" id="tr_ErrorRow" runat="server">
                    <asp:label CssClass="errorMessageForms" id="lblError" runat="server" Visible="False"></asp:label>
                    <asp:label CssClass="infoMessageForms" id="lblInfo" runat="server" Visible="False"></asp:label>
                </div>
            </div>
        </div>
        <div class="w3-row-padding">
            <div class="w3-third" id="SelectUser" runat="server">
                <label>Select User &nbsp;</label>
                  <asp:TextBox ID="TextBox1" runat="server" CssClass="w3-input w3-border" ReadOnly="false"></asp:TextBox>
            </div>
        </div>
        <div id="V_User" runat="server">
            <div class="w3-row-padding">
  		        <div class="w3-third">
    	            <label>User Id &nbsp;</label>
                    <asp:TextBox ID="txtUserID" runat="server" CssClass="w3-input w3-border" ReadOnly="false"></asp:TextBox>
                </div>
                <div class="w3-third">
                    <label>User Name &nbsp;</label>
                    <asp:TextBox ID="txtUserName" runat="server" CssClass="w3-input w3-border" ReadOnly="false"></asp:TextBox>
                </div>
                <div class="w3-third">
    	            <label>Role &nbsp; 
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="w3-input w3-border" ReadOnly="false"></asp:TextBox>
    	           
                        </label>
                </div>
            </div>
            <div class="w3-row-padding">
  		        <div class="w3-third">
    	            <label>Department  &nbsp; </label>
                    <asp:TextBox ID="txtDepartment" runat="server" CssClass="w3-input w3-border" ReadOnly="false"></asp:TextBox>
                </div>
  		        <div class="w3-third">
    	            <label>Classification &nbsp; </label>
                    <asp:TextBox ID="txtJobCode" runat="server" CssClass="w3-input w3-border" ReadOnly="false"></asp:TextBox>
                </div>
                <div class="w3-third">
                    <label>Classification Description  &nbsp; </label>
                    <asp:TextBox ID="txtJobCodeDescription" runat="server" CssClass="w3-input w3-border"  ReadOnly="false"></asp:TextBox>
                </div>
	        </div>
	        <div class="w3-row-padding">
  		        <div class="w3-third">
    	            <label>Phone Number  &nbsp;
                    </label>
                    <Telerik:RadMaskedTextBox Mask="###-###-####" PromptChar=" " ID="txtPhoneNumber" runat="server" Width="100%" Height="34px" CssClass="w3-input w3-border" EnableEmbeddedSkins="false" onkeydown="javascript:backspacerDOWN(this,event);" onkeyup="javascript:backspacerUP(this,event);"></Telerik:RadMaskedTextBox>
                </div>
  		        <div class="w3-third">
    	            <label>Email Id &nbsp; 
                                     </label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="w3-input w3-border"></asp:TextBox>
                </div>
	        </div>
            <div class="w3-row-padding">
  		        <div class="w3-third">
    	            <label>Notes</label><br />
                    <asp:TextBox ID="txtUserNotes" Skin="MetroTouch" Width="100%" runat="server" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </div>
	        </div>
            <div class="w3-row-padding">
		        <div class="buttonPaddingPopup">
              <asp:Button ID="btnReset" runat="server" CssClass="w3-button w3-white w3-border" Text="CANCEL" CausesValidation="false" />&nbsp;
                    <asp:Button ID="btnSubmit" runat="server" CssClass="w3-button w3-blue" Text="ADD USER"  />
                </div>
	        </div>
        </div>
    </div>
    <asp:ValidationSummary ShowMessageBox="true" ShowSummary="false" ID="ValidationSummary1" HeaderText="You must enter a value in the following fields:" DisplayMode="BulletList" EnableClientScript="true" runat="server" />


</telerik:RadAjaxPanel>

 <telerik:RadScriptManager runat="server" ID="RadScriptManager2" />
    <telerik:RadSkinManager ID="RadSkinManager2" runat="server" ShowChooser="false" />
        </form>
