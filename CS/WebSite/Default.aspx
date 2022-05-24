<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v21.2, Version=21.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" 
            DataSourceID="AccessDataSource1" OnCustomFieldValueCells="ASPxPivotGrid1_CustomFieldValueCells" ClientIDMode="AutoID" IsMaterialDesign="False">
            <Fields>
                <dx:PivotGridField ID="fieldCategoryName" Area="RowArea" AreaIndex="0">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="CategoryName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
                <dx:PivotGridField ID="fieldProductName" Area="RowArea" AreaIndex="1">
                    <DataBindingSerializable>
                        <dx:DataSourceColumnBinding ColumnName="ProductName" />
                    </DataBindingSerializable>
                </dx:PivotGridField>
            </Fields>
            <OptionsView ShowColumnHeaders="False" ShowDataHeaders="False" 
                ShowFilterHeaders="False" />
            <OptionsData DataProcessingEngine="Optimized" />
            <Styles>
                <ColumnAreaStyle>
                    <Paddings Padding="0px" />
                </ColumnAreaStyle>
                <CellStyle>
                    <Paddings Padding="0px" />
                </CellStyle>
            </Styles>
        </dx:ASPxPivotGrid>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT * FROM [ProductReports]"></asp:AccessDataSource>
    </div>
    </form>
</body>
</html>
