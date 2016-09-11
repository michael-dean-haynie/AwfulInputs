using System;
using System.IO;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AwfulInputs.Controllers
{
    public class MigrationController : Controller
    {
        // GET: Migration
        public ActionResult Index()
        {
            string connString = ConfigurationManager.ConnectionStrings["MigrationConnection"].ToString();
            SqlConnection sqlConn = new SqlConnection(connString);

            SqlCommand cmdDrop = new SqlCommand(System.IO.File.ReadAllText(Server.MapPath("~/Database/") + "drop-schema.sql"), sqlConn);
            SqlCommand cmdCreateS = new SqlCommand(System.IO.File.ReadAllText(Server.MapPath("~/Database/") + "create-schema.sql"), sqlConn);
            SqlCommand cmdCreateT = new SqlCommand(System.IO.File.ReadAllText(Server.MapPath("~/Database/") + "create-tables.sql"), sqlConn);
            SqlCommand cmdPopulate = new SqlCommand(System.IO.File.ReadAllText(Server.MapPath("~/Database/") + "populate-tables.sql"), sqlConn);

            sqlConn.Open();
            IAsyncResult resultDrop = cmdDrop.BeginExecuteReader();
            SqlDataReader readerDrop = cmdDrop.EndExecuteReader(resultDrop);
            sqlConn.Close();

            sqlConn.Open();
            IAsyncResult resultCreateS = cmdCreateS.BeginExecuteReader();
            SqlDataReader readerCreateS = cmdCreateS.EndExecuteReader(resultCreateS);
            sqlConn.Close();

            sqlConn.Open();
            IAsyncResult resultCreateT = cmdCreateT.BeginExecuteReader();
            SqlDataReader readerCreateT = cmdCreateT.EndExecuteReader(resultCreateT);
            sqlConn.Close();

            sqlConn.Open();
            IAsyncResult resultPopulate = cmdPopulate.BeginExecuteReader();
            SqlDataReader readerPopulate = cmdPopulate.EndExecuteReader(resultPopulate);
            sqlConn.Close();

            ViewBag.message = "Schema has been reset successfully.";

            return View();
        }
    }
}