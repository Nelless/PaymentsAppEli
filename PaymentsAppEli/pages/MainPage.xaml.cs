using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Excel = Microsoft.Office.Interop.Excel;
using PaymentsAppEli.Model;

namespace PaymentsAppEli.pages
{
    /// <summary>
    /// Логика взаимодействия для MainPage.xaml
    /// </summary>
    public partial class MainPage : Page
    {
        Core db = new Core();
        public MainPage()
        {
            InitializeComponent();
        }
        private void BtnExportToExel_Click(object sender, RoutedEventArgs e)
        {


            var allUsers = db.context.Users.ToList().OrderBy(p => p.last_name).ToList();

            var application = new Excel.Application();
            application.SheetsInNewWorkbook = allUsers.Count();

            Excel.Workbook workbook = application.Workbooks.Add(Type.Missing);

            for (int i = 0; i < allUsers.Count(); i++)
            {
                int startRowIndex = 1;

                Excel.Worksheet worksheet = application.Worksheets.Item[i + 1];
                worksheet.Name = allUsers[i].last_name;

                worksheet.Cells[1][startRowIndex] = "дата назначения";
                worksheet.Cells[2][startRowIndex] = "называние";
                worksheet.Cells[3][startRowIndex] = "стоимость";
                worksheet.Cells[4][startRowIndex] = "количество";
                worksheet.Cells[5][startRowIndex] = "сумма";

                startRowIndex++;

                var UserCategories = allUsers[i].Payment.OrderBy(p => p.date_payment).GroupBy(p => p.Category).OrderBy(p => p.Key.name_category);

                foreach (var groupCategory in UserCategories)
                {
                    Excel.Range headerRange = worksheet.Range[worksheet.Cells[1][startRowIndex], worksheet.Cells[5][startRowIndex]];
                    headerRange.Merge();
                    headerRange.Value = groupCategory.Key.name_category;
                    headerRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignCenter;
                    headerRange.Font.Italic = true;

                    startRowIndex++;

                    foreach (var payment in groupCategory)
                    {
                        worksheet.Cells[1][startRowIndex] = payment.date_payment.Value.ToString("dd.MM.yyyy HH:mm");
                        worksheet.Cells[2][startRowIndex] = payment.name;
                        worksheet.Cells[3][startRowIndex] = payment.price;
                        worksheet.Cells[4][startRowIndex] = payment.count;

                        worksheet.Cells[5][startRowIndex].formula = $"=C{startRowIndex}*D{startRowIndex}";

                        worksheet.Cells[3][startRowIndex].NumberFormat =
                            worksheet.Cells[3][startRowIndex].NumberFormat = "#,##,00";

                        startRowIndex++;
                    }

                    Excel.Range sumRange = worksheet.Range[worksheet.Cells[1][startRowIndex], worksheet.Cells[4][startRowIndex]];
                    sumRange.Merge();
                    sumRange.Value = "ИТОГО:";
                    sumRange.HorizontalAlignment = Excel.XlHAlign.xlHAlignRight;

                    worksheet.Cells[5][startRowIndex].Formula = $"=SUM(E{startRowIndex - groupCategory.Count()}:" + $"E{startRowIndex - 1})";

                    sumRange.Font.Bold = worksheet.Cells[5][startRowIndex].Font.Bold = true;
                    //worksheet.Cells[5][startRowIndex].NumberFormat = "#,###,00";

                    startRowIndex++;

                    Excel.Range rangeBorders = worksheet.Range[worksheet.Cells[1][1], worksheet.Cells[5][startRowIndex - 1]];
                    rangeBorders.Borders[Excel.XlBordersIndex.xlEdgeBottom].LineStyle =
                    rangeBorders.Borders[Excel.XlBordersIndex.xlEdgeLeft].LineStyle =
                    rangeBorders.Borders[Excel.XlBordersIndex.xlEdgeRight].LineStyle =
                    rangeBorders.Borders[Excel.XlBordersIndex.xlEdgeTop].LineStyle =
                    rangeBorders.Borders[Excel.XlBordersIndex.xlInsideHorizontal].LineStyle =
                    rangeBorders.Borders[Excel.XlBordersIndex.xlInsideVertical].LineStyle = Excel.XlLineStyle.xlContinuous;

                    worksheet.Columns.AutoFit();
                }
            }
            application.Visible = true;
        }

        private void EnterButton_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AuthPage());
        }
    }
}
