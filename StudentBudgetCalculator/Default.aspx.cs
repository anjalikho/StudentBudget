using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page

{
    double  ParentalContribution;
    double PartTimeWork;
    double Scholorships;
    double TutionFees;
    double Accomadation;
    double Food;
    double Transport;
    double Householdbills;
    double Others;
    double Total;

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    [System.Web.Services.WebMethod(true)]
    public static Object BudgetCalc(
        string tbParentC, string tbPartTimeW, string tbScholarG, string tbIncomeOthers,
        string tbTutionF, string tbAccomadation, string tbFood, string tbTransport, string tbHouseholdB,
        string tbExpOthers)
    {
        double totalIncome = 0;
        double totalExpenditure = 0;

        totalIncome =
            convertDouble(tbParentC) +
            convertDouble(tbPartTimeW) +
            convertDouble(tbScholarG) +
            convertDouble(tbIncomeOthers);

        totalExpenditure =
            convertDouble(tbTutionF) +
            convertDouble(tbAccomadation) +
            convertDouble(tbFood) +
            convertDouble(tbTransport) +
            convertDouble(tbHouseholdB) +
            convertDouble(tbExpOthers);

        return new {
                income = round2DecPlaces(totalIncome),
                expenditure = round2DecPlaces(totalExpenditure),
                net = round2DecPlaces(totalIncome - totalExpenditure)
        };
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        //lblTest.Text = DateTime.Now.ToString("dd MMM yyyy - HH:mm:ss");
        ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);
    }

    private static double round2DecPlaces(double input)
    {
        return Math.Ceiling(100 * input) / 100;
    }
    private static double convertDouble(string inputValue)
    {
        if (inputValue != null && inputValue.Trim().Length > 0)
        {
            return Convert.ToDouble(inputValue);
        }
        return 0;
    }
}