using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication44.Account
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopuniDropdownListe();
            }
        }
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-SC1BN5L\\SQLEXPRESS;Initial Catalog=ProjekatBaza;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void btnPretrazi_Click(object sender, EventArgs e)
        {
            string vrstaOdece = ddlVrstaOdece.SelectedValue;
            string kreator = ddlKreator.SelectedValue;

            
           
            string query = "SELECT * FROM PRODAVNICA";

            if (!string.IsNullOrEmpty(vrstaOdece) && !string.IsNullOrEmpty(kreator))
            {
                query += " WHERE vrstaOdece = @VrstaOdece AND kreator = @Kreator";
            }
            else if (!string.IsNullOrEmpty(vrstaOdece))
            {
                query += " WHERE vrstaOdece = @VrstaOdece";
            }
            else if (!string.IsNullOrEmpty(kreator))
            {
                query += " WHERE kreator = @Kreator";
            }

            using (con)
            {
                SqlCommand command = new SqlCommand(query, con);
                if (!string.IsNullOrEmpty(vrstaOdece))
                {
                    command.Parameters.AddWithValue("@VrstaOdece", vrstaOdece);
                }
                if (!string.IsNullOrEmpty(kreator))
                {
                    command.Parameters.AddWithValue("@Kreator", kreator);
                }

                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
            }

            
        
            }
        private void PopuniDropdownListe()
        {
          
            string queryVrsteOdece = "SELECT DISTINCT vrstaOdece FROM PRODAVNICA";
            string queryKreatori = "SELECT DISTINCT kreator FROM PRODAVNICA";

            PopuniDropDownList(ddlVrstaOdece, queryVrsteOdece);
            PopuniDropDownList(ddlKreator, queryKreatori);
        }
        private void PopuniDropDownList(DropDownList ddl, string query)
        {
            con = new SqlConnection("Data Source=DESKTOP-SC1BN5L\\SQLEXPRESS;Initial Catalog=ProjekatBaza;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            using (con)
            {
                
                SqlCommand command = new SqlCommand(query, con);
                con.Open();
                SqlDataReader reader = command.ExecuteReader();
                //ddl.DataSource = reader;
                //ddl.DataTextField = "vrstaOdece"; 
                //ddl.DataValueField = "vrstaOdece"; 
                //ddl.DataBind();
                while (reader.Read())
                {
                    ddl.Items.Add(reader[0].ToString());
                }
            }
            
        }
    }
}