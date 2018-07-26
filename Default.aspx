<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <br />
        <asp:Label ID="Label1" runat="server" BackColor="Teal" Font-Size="XX-Large" ForeColor="White"
            Text="Label"></asp:Label><br />
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /><br />
            <br />
            <cc1:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" TargetControlID="Button1" ConfirmText="Desea Trabajar para X-treme">
            </cc1:ConfirmButtonExtender>
            &nbsp;&nbsp;&nbsp;<br />
            <cc1:Accordion ID="Accordion1" runat="server" HeaderCssClass="AcordionHeader" HeaderSelectedCssClass="AcordionHeaderSelected" ContentCssClass="AccordionContent" Width="150">
            </cc1:Accordion>
            <br />
            <br />
            <input type="button" ID="Button2" runat="server" Value="Launch Animation" />

            <cc1:AnimationExtender ID="AnimationExtender2" runat="server" TargetControlID="Button2">
                <Animations>
                    <OnClick>
                        <Sequence>
                           <Parallel>
                                <EnableAction Enabled="false" />
                                <FadeOut Duration="1.5" Fps="24" />
                                <Resize Width="1000" Height="150" Unit="px" />
                           </Parallel>

                          <HideAction />
                          <ScriptAction Script="alert('Goodbye!');" />
                        </Sequence>
                     </OnClick>
                </Animations>
            </cc1:AnimationExtender>
            <br />
            <br />
            <asp:Panel ID="PanelShadow" runat="server" CssClass="PanelShadow" Width="712px">
                Hola como estan espero que muy bien Armando aun no ha llegado xD.<br />
                Hola como estan espero que muy bien Armando aun no ha llegado xD.<br />
                Hola como estan espero que muy bien Armando aun no ha llegado xD</asp:Panel>
            <br />
            <cc1:AnimationExtender ID="AnimationExtender1" runat="server" TargetControlID="PanelShadow">
                <Animations>
                  <OnLoad>
                       <Sequence>
                            <Resize Width="1000" Unit="px" />
                            <Resize Height="150" Unit="px" />
                            <Parallel>
                                <FadeOut Duration="1.5" Fps="24" />
                            </Parallel>
                       </Sequence>
                  </OnLoad>
                </Animations>

            </cc1:AnimationExtender>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" CssClass="Panel" Width="872px">
                Hola como estan espero que muy bien Armando aun no ha llegado xD.<br />
                Hola como estan espero que muy bien Armando aun no ha llegado xD.<br />
                Hola como estan espero que muy bien Armando aun no ha llegado xD</asp:Panel>
            <br />
            <br />
            <cc1:AnimationExtender ID="AnimationExtender3" runat="server" TargetControlID="Panel1">
                <Animations>
                    <OnHoverOver>
                        <Sequence>
                            
                            <FadeIn Duration="3.5" Fps="24" MinimumOpacity=".8" MaximumOpacity=".9" ></FadeIn>
                            <Parallel Duration=".5" Fps="30">
                                 <Color Duration="5"
                                    StartValue="#FF0000"
                                    EndValue="#666666"
                                    Property="style"
                                    PropertyKey="backgroundColor" />
                                    
                                    <Color Duration="4"
                                    StartValue="#4682b4"
                                    EndValue="#FFFFFF"
                                    Property="style"
                                    PropertyKey="backgroundColor" />
                            
                            </Parallel>
                            <FadeOut Duration="3.5" Fps="24" MinimumOpacity=".8" MaximumOpacity=".9" ></FadeOut>
                        </Sequence>                       
                    </OnHoverOver>
                </Animations>
            
            </cc1:AnimationExtender>
            &nbsp;<br />
        </div>
    </form>
</body>
</html>
