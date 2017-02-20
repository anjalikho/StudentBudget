<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Content/bootstrap.css" />
    <link rel="stylesheet" href="Content/animate.min.css" />
    <link rel="stylesheet" href="Content/vertical-rhythm.min.css" />
    <link rel="stylesheet" href="Content/owl.carousel.css" />
    <link rel="stylesheet" href="Content/rhythm-style.css" />  

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,300,700)" />
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Dosis:300,400,700)" />


    <link href='https://fonts.googleapis.com/css?family=Philosopher:400,700' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Dosis:300,400,700' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="StyleSheet.css" />

    <script src="/Scripts/jquery-1.9.1.js"></script>

    <script src="http://canvasjs.com/assets/script/canvasjs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.1.4/Chart.min.js"></script>        
    <title>Student Budget Calculator</title>
</head>
<body class="bg-image-1">
    <div class="container heading">
        <div class="text-center">
            <h1 class="font-alt">Student Budget Calculator</h1>
            <h3>Enter Income and Expenditure to calculate total cost of your education</h3>        
        </div>
    </div>
        
    <hr class="top"/>
    <form id="form1" runat="server" class="form-horizontal">
        <div class="container content">
            <br />
        </div> 
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="vs" runat="server" CssClass="alert-danger" 
                        HeaderText="Please enter valid currency digits only in the following fields:" 
                        BorderStyle="Solid" BorderWidth="4px" BorderColor="green" />
                    <br />
                </div>
            </div>

            <div class="col-md-3 col-md-offset-1">
                <div class="row">
                    <div class="col-md-12 sub-heading" >
                        <h2>INCOME</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Monthly Fixed</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbParentC" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>

                        <asp:CompareValidator ID="cvParentC" runat="server" 
                            ControlToValidate="tbParentC" Type="Currency"
                            Operator="DataTypeCheck" 
                            Text="* Invalid amount." 
                            ErrorMessage="Monthly Fixed Income" 
                            CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Part-Time Work</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbPartTimeW" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvPartTimeW" runat="server" ControlToValidate="tbPartTimeW" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Part Time Work" CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label"> Scholorships/Grants</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbScholarG" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvScholarG" runat="server" ControlToValidate="tbScholarG" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Scholorships/Grants" CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label"> Income/Other</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbIncomeOthers" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbIncomeOthers" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Other Income" CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 sub-heading uppercase">
                        <h2>Expenditure</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Tution Fees</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbTutionF" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvTutionF" runat="server" ControlToValidate="tbTutionF" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Tution Fees" CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Accomadation</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbAccomadation" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvAccomadation" runat="server" ControlToValidate="tbAccomadation" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Accomadation " CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Food</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbFood" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvFood" runat="server" ControlToValidate="tbFood" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Food" CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Transport</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbTransport" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvTransport" runat="server" ControlToValidate="tbTransport" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Transport " CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Household Bills</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbHouseholdB" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvHouseholdB" runat="server" ControlToValidate="tbHouseholdB" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="HouseholdBills" CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <label class="control-label">Exp/Others</label>
                    </div>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbExpOthers" runat="server" CssClass="form-control txtBox" Width="100px"></asp:TextBox>
                        <asp:CompareValidator ID="cvOthers" runat="server" ControlToValidate="tbExpOthers" Type="Currency"
                            Operator="DataTypeCheck" Text="* Invalid amount." ErrorMessage="Others" CssClass="text-danger sub-heading"></asp:CompareValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 text-center">
                        <asp:Button ID="btnCalculate" Text="Submit" CssClass="btn btn-primary btn-mod btn-medium btn-glass btn-border-w" runat ="server" />
                        <asp:Button ID="btnReset" Text="Reset" CssClass="btn btn-primary btn-mod btn-medium btn-glass btn-border-w" runat ="server" 
                            OnClientClick="return resetForm();" 
                            />
                     </div>
                </div>
            </div>  
            <div class="col-md-7" >
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="hs-line-11">
                            Results
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="lead results">
                                    Total income:
                                    <div class="lead">
                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="lead results">
                                    Total Expenditure
                                    <div class="lead">
                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="lead results">
                                    NET
                                    <div class="lead">
                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- <div id="resultDiv" runat="server"></div> -->
                    </div>
                
                </div>
                <div class="row charts">
                    <div class="col-md-12 text-center">
                        <div class="chartContainer">
                            <canvas id="myChartIncomes" style="border: 1px solid red; background-color:rgba(250, 251, 220, 250);"></canvas>
                        </div>
                        <div class="chartContainer">
                            <canvas id="myChartExpenditure" style="border: 1px solid red;background-color:rgba(250, 251, 220, 250);"></canvas>
                        </div>
                    </div>
                </div>
            </div>                    
        </div>                                
    </form>    
    <hr class="top"/>
    <div class="container">
        <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="col-md-6 text-left">
                <h5>Student Budget Calculator</h5>
            </div>    
            <div class="col-md-6 text-right">
                <h5>Anjali 2017</h5>
            </div>    
        </div>
        </div>
        

    </div>
</body>
    <script>
        $('#btnCalculate').on('click', function (event) {
            if (!WebForm_OnSubmit()) {
                return false;
            }

            var urlDefault = '/Default.aspx/BudgetCalc';

            var incomes= {};
            var expenses = {};
            //Income
            incomes.tbParentC = $("#tbParentC").val();
            incomes.tbPartTimeW = $("#tbPartTimeW").val();
            incomes.tbScholarG = $("#tbScholarG").val();
            incomes.tbIncomeOthers = $("#tbIncomeOthers").val();

            //Expenses
            expenses.tbTutionF = $("#tbTutionF").val();
            expenses.tbAccomadation = $("#tbAccomadation").val();
            expenses.tbFood = $("#tbFood").val();
            expenses.tbTransport = $("#tbTransport").val();
            expenses.tbHouseholdB = $("#tbHouseholdB").val();
            expenses.tbExpOthers = $("#tbExpOthers").val();

            $.ajax({
                url: urlDefault,
                type: "POST",
                data: JSON.stringify($.extend({}, incomes, expenses)), //Merge togeather and send to server
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (data) {
                    $('.results').show();

                    $('#Label1').text(data.d.income);
                    $('#Label2').text(data.d.expenditure);
                    $('#Label3').text(data.d.net);

                    incomes.tbParentC = $("#tbParentC").val();
                    incomes.tbPartTimeW = $("#tbPartTimeW").val();
                    incomes.tbScholarG = $("#tbScholarG").val();
                    incomes.tbIncomeOthers = $("#tbIncomeOthers").val();

                    //$($("#tbParentC")[0]).parent().parent().find('label').text()

                    var labels1 = [
                        labelText("#tbParentC"),
                        labelText("#tbPartTimeW"),
                        labelText("#tbScholarG"),
                        labelText("#tbIncomeOthers")];
                    var series1 = [$("#tbParentC").val(), $("#tbPartTimeW").val(), $("#tbScholarG").val(), $("#tbIncomeOthers").val()];

                    plotChartJsChart('myChartIncomes', 'bar', 'Income', labels1, series1);

                    //Expenses
                    var labels2 = [
                        labelText("#tbTutionF"),
                        labelText("#tbAccomadation"),
                        labelText("#tbFood"),
                        labelText("#tbTransport"),
                        labelText("#tbHouseholdB"),
                        labelText("#tbExpOthers")
                    ];
                    var series2 = [
                        $("#tbTutionF").val(),
                        $("#tbAccomadation").val(),
                        $("#tbFood").val(),
                        $("#tbTransport").val(),
                        $("#tbHouseholdB").val(),
                        $("#tbExpOthers").val()
                    ];
                    plotChartJsChart('myChartExpenditure', 'polarArea', 'Expenditure', labels2, series2);
                },
                error: function (xhr, ajaxOptions, thrownError) {
                    alert("ERROR: " + xhr.status + '\n' + thrownError);
                },
            });

            return false;
        });

        var backgroundColors = [
            'rgba(102, 153, 255, 0.6)',
            'rgba(204, 102, 255, 0.6)',
            'rgba(255, 102, 204, 0.6)',
            'rgba(255, 102, 102, 0.6)',
            'rgba(204, 102, 153, 0.6)',
            'rgba(255, 153, 102, 0.6)',
            'rgba(255, 255, 153, 0.6)',
            'rgba(204, 255, 102, 0.6)',
            'rgba(204, 255, 204, 0.6)',
            'rgba(102, 255, 204, 0.6)',
            'rgba(255, 255, 0, 0.6)'];

        function plotChartJsChart(targetDiv, chartType, chartLabel, labels, seriesData) {
            $('#' + targetDiv).show();
            var ctx = document.getElementById(targetDiv).getContext('2d');
            var myChart = new Chart(
                ctx, {
                    type: chartType,
                    data: {
                        labels: labels,
                        datasets: [{
                            label: chartLabel,
                            data: seriesData,
                            backgroundColor: backgroundColors
                        }],
                    },
                    options: {
                        cutoutPercentage: 70,
                        scale: {
                            lineArc: true,
                            reverse: false,
                            ticks: {
                                //backdropColor: 'rgb(255, 255, 255)',
                                beginAtZero: true
                            }
                        },
                        legend: {
                            display: true,
                            position: 'bottom',
                            labels: {
                                fontSize: 16,
                                //fontColor: 'rgb(255, 255, 255)'
                            }
                        }
                    }
                });
        }

        function labelText(item) {
            return $($(item)[0]).parent().parent().find('label').text();
        }

        function resetForm() {
            $('.results').hide();
            $('#myChartExpenditure').hide();
            $('#myChartIncomes').hide();
            $('form')[0].reset();
            return false;
        }
        resetForm();
    </script>
</html>


