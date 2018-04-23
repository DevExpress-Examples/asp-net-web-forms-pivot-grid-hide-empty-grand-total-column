Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.XtraPivotGrid.Localization
Imports DevExpress.XtraPivotGrid
Imports DevExpress.Web.ASPxPivotGrid

Partial Public Class _Default
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
	End Sub

	Protected Sub ASPxPivotGrid1_CustomFieldValueCells(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxPivotGrid.PivotCustomFieldValueCellsEventArgs)
		Dim isColumn As Boolean = True
		For i As Integer = e.GetCellCount(isColumn) - 1 To 0 Step -1
			Dim cell As FieldValueCell = e.GetCell(isColumn, i)
			If cell IsNot Nothing Then
				e.Remove(cell)
			End If

		Next i
	End Sub
End Class
