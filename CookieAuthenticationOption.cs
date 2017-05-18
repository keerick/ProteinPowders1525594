using Microsoft.Owin;
using Microsoft.Owin.Security.Cookies;

namespace ProteinPowders_1525594
{
    internal class CookieAuthenticationOption : CookieAuthenticationOptions
    {
        public object AuthenticationType { get; set; }
        public PathString LoginPath { get; set; }
    }
}