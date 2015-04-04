using System;
using System.Collections.Generic;
using System.Globalization;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    private string connString =
        @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\dev\Paddington\App_Data\PaddingtonDB.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        errorLabel.Text = "";

        try
        {
            loadPlayers();
        }
        catch (Exception ex)
        {
            errorLabel.Text = ex.Message;
        }
    }

    protected void loadPlayers()
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
        getPlayerTableFromDb();
    }

    private void getPlayerTableFromDb()
    {
        try
        {
            var conn = new SqlConnection(connString);
            {
                var sql =
                    new SqlCommand(
                        "INSERT INTO Player(Name, Balance, LastPaymentDate) Values(@Name, @Balance, @LastPaymentDate)", conn);
                sql.Parameters.AddWithValue("@Name", nameBox.Text);
                sql.Parameters.AddWithValue("@Balance", Convert.ToDecimal(balanceBox.Text));
                sql.Parameters.AddWithValue("@LastPaymentDate",
                    datePayment.SelectedDate.ToString(CultureInfo.InvariantCulture));

                conn.Open();
                sql.ExecuteNonQuery();
                conn.Close();
            }
        }
        catch (SqlException ex)
        {
            errorLabel.Text = ex.Message;
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        var player = new Player();
        var selectedPlayer = playerDropdown.SelectedItem.ToString();
        var getBalance = "SELECT Balance FROM Player WHERE Name = '" + selectedPlayer + "'";

        var conn = new SqlConnection(connString);
        conn.Open();

        using (var cmd = new SqlCommand(getBalance, conn))
        {
            using (var reader = cmd.ExecuteReader())
            {
                var balanceOrdinal = reader.GetOrdinal("Balance");
                while (reader.Read())
                {
                    player.Balance = reader.GetInt32(balanceOrdinal);
                }
            }
            player.Balance = player.Balance + Convert.ToInt32(addBox.Text);
        }
        conn.Close();

        var conn2 = new SqlConnection(connString);
        {
            var sql2 = new SqlCommand("UPDATE Player SET Balance = " + player.Balance + " WHERE Name = @Name", conn2);
            sql2.Parameters.AddWithValue("@Name", selectedPlayer);

            conn2.Open();
            sql2.ExecuteNonQuery();
            conn2.Close();
        }
    }

    public class Player
    {
        public int Name { get; set; }
        public int Balance { get; set; }
        public string LastPaymentDate { get; private set; }
    }
}
