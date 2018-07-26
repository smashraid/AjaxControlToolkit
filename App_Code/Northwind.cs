using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data.SqlClient;
using AjaxControlToolkit;
using System.Data;

/// <summary>
/// Descripción breve de Northwind
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class Northwind : System.Web.Services.WebService
{

    public Northwind()
    {

        //Eliminar la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hola a todos";
    }

    [WebMethod]
    public CascadingDropDownNameValue[] GetEmployees(string knownCategoryValues, string category)
    {

        SqlConnection connection = new SqlConnection(@"Data Source=UNI-CPU-0146\SQLEXPRESS; Initial Catalog=Northwind; Integrated Security=True");

        SqlCommand command = new SqlCommand("SELECT * FROM Employees");

        command.Connection = connection;
        connection.Open();

        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataSet dataSet = new DataSet();

        adapter.Fill(dataSet);
        command.Connection.Close();

        DataTable tbl = dataSet.Tables[0];

        List<CascadingDropDownNameValue> values = new List<CascadingDropDownNameValue>();

        foreach (DataRow dr in tbl.Rows)
        {
            string sEmployee = (string)dr["FirstName"] + " " + dr["LastName"];
            int iEmployee = (int)dr["EmployeeID"];
            values.Add(new CascadingDropDownNameValue(sEmployee, iEmployee.ToString()));
        }
        return values.ToArray();
    }



    [WebMethod]
    public CascadingDropDownNameValue[] GetOrdersByEmployee(string knownCategoryValues, string category)
    {
        StringDictionary kv = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues);
        int iEmployee;
        if (!kv.ContainsKey("Employee") || !Int32.TryParse(kv["Employee"], out iEmployee))
        {
            return null;
        }

        SqlConnection connection = new SqlConnection(@"Data Source=UNI-CPU-0146\SQLEXPRESS; Initial Catalog=Northwind; Integrated Security=True");

        SqlCommand command =
        new SqlCommand("SELECT OrderID FROM Orders WHERE EmployeeID = " + iEmployee);

        command.Connection = connection;
        connection.Open();

        SqlDataAdapter adapter = new SqlDataAdapter(command);
        DataSet dataSet = new DataSet();

        adapter.Fill(dataSet);
        command.Connection.Close();

        DataTable tbl = dataSet.Tables[0];

        List<CascadingDropDownNameValue> values = new List<CascadingDropDownNameValue>();
        
        foreach (DataRow dr in tbl.Rows)
        {
            string sOrder = dr["OrderID"].ToString();
            int iOrder = (int)dr["OrderID"];
            values.Add(new CascadingDropDownNameValue(sOrder, iOrder.ToString()));
        }
        return values.ToArray();
    }
}