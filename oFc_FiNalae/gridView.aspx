<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gridView.aspx.cs" Inherits="OfcAssignment.gridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderColor="#6699ff">
            <AlternatingRowStyle BackColor="Wheat" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" ControlStyle-BorderStyle="Groove" ControlStyle-Font-Bold="true"/>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"/>
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="EmailId" HeaderText="EmailId" SortExpression="EmailId" />
                <asp:BoundField DataField="UserNAme" HeaderText="UserNAme" SortExpression="UserNAme" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:OfcAssignmentConnectionString %>" DeleteCommand="DELETE FROM [signups] WHERE [Id] = @original_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND [UserNAme] = @original_UserNAme" InsertCommand="INSERT INTO [signups] ([FirstName], [LastName], [Gender], [EmailId], [UserNAme]) VALUES (@FirstName, @LastName, @Gender, @EmailId, @UserNAme)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Id], [FirstName], [LastName], [Gender], [EmailId], [UserNAme] FROM [signups]" UpdateCommand="UPDATE [signups] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [EmailId] = @EmailId, [UserNAme] = @UserNAme WHERE [Id] = @original_Id AND [FirstName] = @original_FirstName AND [LastName] = @original_LastName AND [Gender] = @original_Gender AND (([EmailId] = @original_EmailId) OR ([EmailId] IS NULL AND @original_EmailId IS NULL)) AND [UserNAme] = @original_UserNAme">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_EmailId" Type="String" />
                <asp:Parameter Name="original_UserNAme" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="UserNAme" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="EmailId" Type="String" />
                <asp:Parameter Name="UserNAme" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_FirstName" Type="String" />
                <asp:Parameter Name="original_LastName" Type="String" />
                <asp:Parameter Name="original_Gender" Type="String" />
                <asp:Parameter Name="original_EmailId" Type="String" />
                <asp:Parameter Name="original_UserNAme" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
