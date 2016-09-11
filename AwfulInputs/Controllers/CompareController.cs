using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AwfulInputs.Controllers
{
    public class CompareController : Controller
    {
        // GET: Compare
        public ActionResult Index()
        {
            string connString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();
            SqlConnection sqlConn = new SqlConnection(connString);
            string qryString = @"
USE [AwfulInputs]
SELECT TOP 2 *
FROM [AwfulInput]
ORDER BY NEWID()
";
            SqlCommand sqlCmd = new SqlCommand(qryString, sqlConn);

            sqlConn.Open();
            SqlDataReader reader = sqlCmd.ExecuteReader();
            List<String> views = new List<String>();
            while (reader.Read())
            {
                views.Add(reader["ViewName"].ToString());
            }
            sqlConn.Close();

            ViewBag.views = views;
            return View();
        }
    }
}