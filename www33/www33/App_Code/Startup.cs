using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(www33.Startup))]
namespace www33
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
