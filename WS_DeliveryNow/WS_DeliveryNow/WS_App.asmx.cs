﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing.Printing;
using System.Linq;
using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Web;
using System.Web.Services;
using System.Web.Services.Description;

/*
 *         SERVICIOS WEB - ULACIT
 * WS_DeliveryNow - Proyecto Final - GRUPO N.2
 * DESCRIPCIÓN: Sistema de Pedidos
 * AUTORES: Emerson Alvarado Mora 
 *          Esteban Paniagua Barrantes
 *          Andrés Garro Barrios  
 *          Joseph Villalta Elizondo 
 * WS_DeliveryNow: Página principal del WS.
 */

namespace WS_DeliveryNow
{
    /// <summary>
    /// Descripción breve de WS_App
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class WS_App : System.Web.Services.WebService
    {
        [WebMethod]
        public string send_error()
        {
            string message = "HA SURGIDO UN ERROR EN LA OPERACIÓN.";
            HttpContext.Current.Response.Write("<script>alert('" + message + "');</script>");
            return message;
        }
        [WebMethod]
        public string send_register_sucess()
        {
            string message = "¡FELICIDADES! SU CUENTA SE HA CREADO CORRECTAMENTE.";
            HttpContext.Current.Response.Write("<script>alert('" + message + "');</script>");
            return message;
        }
        [WebMethod]
        public string send_login_success()
        {
            string message = "SESIÓN INICIADA CORRECTAMENTE.";
            HttpContext.Current.Response.Write("<script>alert('" + message + "');</script>");
            return message;
        }

        //Antes de llamar a este método, se debe instalar el paquete de NuGet: BCrypt.Net-Next
        [WebMethod]
        public string hash_password(string password, out byte[] seed)
        {

            //Se genera un seed o salto aleatorio.
            seed = new byte[16];
            new RNGCryptoServiceProvider().GetBytes(seed);

            //Se genera el hash con PBKDF2
            var pbkdf2 = new Rfc2898DeriveBytes(password, seed, 10000);
            byte[] hash = pbkdf2.GetBytes(20);

            //Se crea la combinación del seed y el hash. 
            byte[] hashBytes = new byte[36];
            Array.Copy(seed, 0, hashBytes, 0, 16);
            Array.Copy(hash, 0, hashBytes, 16, 20);

            //Se convierte el hash en cadena y se devuelve. 
            return Convert.ToBase64String(hashBytes);
        }

        [WebMethod]
        public bool verify_hash(string password, string hashDB)
        {
            // Se decodifica el hash almacenado en Base64 a bytes
            byte[] hashBytes = Convert.FromBase64String(hashDB);

            // Se extrae el seed del hash almacenado
            byte[] seed = new byte[16];
            Array.Copy(hashBytes, 0, seed, 0, 16);

            // Se genera el hash de la contraseña ingresada por el usuario usando el mismo seed
            var pbkdf2 = new Rfc2898DeriveBytes(password, seed, 10000);
            byte[] calculatedHash = pbkdf2.GetBytes(20);

            // Se crea el hash completo con el seed y el hash calculado
            byte[] calculatedHashBytes = new byte[36];
            Array.Copy(seed, 0, calculatedHashBytes, 0, 16);
            Array.Copy(calculatedHash, 0, calculatedHashBytes, 16, 20);

            // Se comparan los arreglos de bytes para verificar si los hashes son iguales
            if (StructuralComparisons.StructuralEqualityComparer.Equals(calculatedHashBytes, hashBytes))
            {
                // Si los hashes son iguales, la contraseña es válida
                return true;
            }
            else
            {
                // Si los hashes son diferentes, la contraseña es inválida
                return false;
            }
        }

        [WebMethod]
        public bool is_logged_in(string username)
        {
            bool login = false;
            int result = 0;
            SqlConnection conn = new SqlConnection(); // Objeto de Conexión a la BD.

            try
            {
                if (string.IsNullOrEmpty(username))
                {
                    send_error();
                    login = false;
                }
                else
                {
                    conn.ConnectionString = "Data Source=.; Initial Catalog=DeliveryNowDB; Integrated Security=True;";
                    conn.Open();

                    SqlCommand cmd = new SqlCommand();

                    cmd.Connection = conn;
                    cmd.CommandText = "sp_UpdateCustomerLoginStatus";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@username", username);

                    Object object_result = cmd.ExecuteScalar();

                    if (object_result != null)
                    {
                        result = int.Parse(object_result.ToString());
                    }

                    if (result == 1)
                    {
                        login = true;
                    }
                    else
                    {
                        login = false;
                    }
                }
            }
            catch (Exception ex)
            {
                login = false;
            }

            return login;
        }

        [WebMethod]
        public DataSet insert_data(string username, string name, string lastname, string password, byte[] seed, string phoneNumber, string address, string pay_method)

        {
            string hashedPassword = hash_password(password, out seed);
            DataSet ds = new DataSet();
            SqlConnection conn = new SqlConnection(); // Objeto de Conexión a la BD.

            try
            {
                if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password.ToString()))
                {
                    send_error();
                }
                else
                {
                    //Se realiza la conexión indicando el nombre del servidor (localhost = .), el nombre de la BD y el valor de Seguridad Integrada.
                    conn.ConnectionString = "Data Source=.; Initial Catalog=DeliveryNowDB; Integrated Security=True;";
                    conn.Open();

                    SqlCommand cmd = new SqlCommand();

                    cmd.Connection = conn;
                    cmd.CommandText = "sp_RegisterCustomer";
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Lastname", lastname);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("Seed", seed);
                    cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@PayMethod", pay_method);

                    try
                    {
                        string message = (string)cmd.ExecuteScalar();
                        Console.WriteLine(message);
                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                    cmd.Parameters.Clear();
                }
            }
            catch (Exception ex)
            {
                send_error();
            }
            conn.Close();
            return ds;
        }

        [WebMethod]
        public int login_verify(string username, string password)
        {
            int result = 0;
            string seedString = null;
            // Obtener el salt y el hash de la contraseña del usuario desde la base de datos
            byte[] seed = null;
            string hashDB = null;
            using (SqlConnection connection = new SqlConnection("Data Source=.; Initial Catalog=DeliveryNowDB; Integrated Security=True;")) // Reemplazar con tu cadena de conexión a la base de datos
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand("sp_CustomerLogin", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                         seedString = (string)reader["salt"];
                         seed = Encoding.Default.GetBytes(seedString);

                        hashDB = reader["customer_password"].ToString();
                    }
                }
            }

            if (seed != null && !string.IsNullOrEmpty(hashDB))
            {
                bool valid = false;
                valid = verify_hash(password, hashDB);
                // Comparar el hash calculado con el hash almacenado en la base de datos
                if (valid)
                {
                    // Llamar al stored procedure para actualizar el estado de inicio de sesión del usuario en la base de datos.
                    using (SqlConnection connection = new SqlConnection("Data Source=.; Initial Catalog=DeliveryNowDB; Integrated Security=True;"))
                    {
                        connection.Open();
                        SqlCommand cmd = new SqlCommand("sp_UpdateCustomerLoginStatus", connection);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@username", username);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                result = Convert.ToInt32(reader["login_status"]); // Obtener el estado de inicio de sesión actualizado desde la base de datos
                            }
                        }
                    }
                }
            }
            return result;
        }
    }
}


      
        
