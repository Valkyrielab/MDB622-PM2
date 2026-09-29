using System;
using Microsoft.Data.SqlClient;

class Program
{
    private static string connectionString;
    static void Main(string [] args)
    {
        connectionString = "Server=.;Database=SouthAfricaAirwayDB;Integrated Security=True; TrustServerCertificate=True;Trusted_Connection=True;";

        using (var conn = new SqlConnection(connectionString))
        {
            conn.Open();
            Console.WriteLine("Database connection successful!");

            SqlCommand cmd = new SqlCommand("SELECT FullName, Email FROM Passengers", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Console.WriteLine($"{reader["FullName"]} - {reader["Email"]}");
            }
        }
    }
}
