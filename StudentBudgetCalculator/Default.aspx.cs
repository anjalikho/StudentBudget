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
                income = totalIncome,
                expenditure = totalExpenditure,
                net = (totalIncome - totalExpenditure)
        };
    }

    private static double convertDouble(string inputValue)
    {
        return Convert.ToDouble(inputValue);
    }
}