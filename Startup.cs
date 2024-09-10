using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Townbush_Pharmacy_Website.Startup))]
namespace Townbush_Pharmacy_Website
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
