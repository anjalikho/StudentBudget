<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Example.aspx.cs" Inherits="Example" %>
<!DOCTYPE html>

<script runat="server">
    protected void Button1_Click(object sender,System.EventArgs e){
        Label1.Text = "Form Submited and Password match.";
}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <title>CompareValidator example: how to use CompareValidator control in asp.net</title>
    </head>
    
    <body>
        <form id="form1" runat="server">
            <div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br />

                <asp:Label ID="Label2" runat="server" Text="<u>P</u>assword" AccessKey="P" AssociatedControlID="TextBox1"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Text="*"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator" runat="server" ControlToValidate="TextBox1" 
                    ControlToCompare="TextBox2" ErrorMessage="Password does not match!">
                </asp:CompareValidator>
                <br />

                <asp:Label ID="Label3" runat="server" Text="Re-Type Password" AssociatedControlID="TextBox2"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                
                <label class="control-label">Monthly Fixed</label>
                <asp:TextBox ID="tbParentC" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbParentC" 
                    ControlToCompare="TextBox2" ErrorMessage="exter text!">
                </asp:CompareValidator>


                <asp:Button ID="Button1" runat="server" Text="Compare" OnClick="Button1_Click" />
            </div>
        </form>
    </body>
</html>