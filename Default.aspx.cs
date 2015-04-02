using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    private string connString =
        @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\VS2010 Projects\Paddington\App_Data\PaddingtonDB.mdf;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        loadPlayers();
        
    }

    private void loadPlayers()
    {
        List<String> columnData = new List<String>();

        using (SqlConnection connection = new SqlConnection(connString))
        {
            connection.Open();

            string query = "SELECT Name FROM Player";
            using (SqlCommand command = new SqlCommand(query, connection))
            {
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        columnData.Add(reader.GetString(0));
                    }
                }
            }
        }
        foreach (var s in columnData)
        {
            if (playerDropdown.Items.FindByValue(s) == null)
            {
                playerDropdown.Items.Add(s);
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        var conn = new SqlConnection(connString);
        {
            var sql = new SqlCommand("INSERT INTO Player(Name, Balance, LastPaymentDate) Values(@Name, @Balance, @LastPaymentDate)", conn);
            sql.Parameters.AddWithValue("@Name", nameBox.Text);
            sql.Parameters.AddWithValue("@Balance", Convert.ToDecimal(balanceBox.Text));
            sql.Parameters.AddWithValue("@LastPaymentDate", datePayment.SelectedDate.ToString(CultureInfo.InvariantCulture));

            conn.Open();
            sql.ExecuteNonQuery();
            conn.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}

[AttributeUsage(AttributeTargets.Property, Inherited = true)]
[Serializable]
public class MappingAttribute : Attribute
{
    public string ColumnName = null;
}

public class Product
{
    [Mapping(ColumnName = "Name")]
    public int Name { get; private set; }

    [Mapping(ColumnName = "Balance")]
    public int Balance { get; private set; }

    [Mapping(ColumnName = "LastPaymentDate")]
    public string LastPaymentDate { get; private set; }
}

