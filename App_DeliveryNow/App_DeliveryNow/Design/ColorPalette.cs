using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
/*
 *         SERVICIOS WEB - ULACIT
 * ColorPalette - Proyecto Final - GRUPO N.2
 * DESCRIPCIÓN: Sistema de Pedidos
 * AUTORES: Emerson Alvarado Mora 
 *          Esteban Paniagua Barrantes
 *          Andrés Garro Barrios
 *          Joseph Villalta Elizondo 
 * ColorPalette: Clase estática para controlar
 *              la paleta de colores del programa.
 */
namespace App_DeliveryNow.Design
{
    public static class ColorPalette
    {
        public static Color DarkGreen { get; } = ColorTranslator.FromHtml("#081C15");
        public static Color DarkTeal { get; } = ColorTranslator.FromHtml("#1C3334");
        public static Color Teal { get; } = ColorTranslator.FromHtml("#345B63");
        public static Color LightTeal { get; } = ColorTranslator.FromHtml("#62929E");
        public static Color Beige { get; } = ColorTranslator.FromHtml("#D9C9A3");
        public static Color Water { get; } = ColorTranslator.FromHtml("#ECFFFA");
    }
}