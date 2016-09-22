using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HFS.Startup))]
namespace HFS
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
