using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.XtraPivotGrid.Localization;
using DevExpress.XtraPivotGrid;
using DevExpress.Web.ASPxPivotGrid;

public partial class _Default : System.Web.UI.Page 
{

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void ASPxPivotGrid1_CustomFieldValueCells(object sender, DevExpress.Web.ASPxPivotGrid.PivotCustomFieldValueCellsEventArgs e)
    {
        bool isColumn = true;
        for (int i = e.GetCellCount(isColumn) - 1; i >= 0; i--)
        {
            FieldValueCell cell = e.GetCell(isColumn, i);
            if (cell != null)
                e.Remove(cell);
             
        }
    }
}
