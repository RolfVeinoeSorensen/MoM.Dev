# MoM.Dev
This is the project you will need to get [MoM](https://github.com/RolfVeinoeSorensen/MoM) up and running.

## Prerequisities
 * Microsoft Visual Studio 2015 ([Community Edition](https://www.visualstudio.com/en-us) will work fine)
 * Microsoft SQL Server 2014 or higher ([Developer Edition](https://blogs.technet.microsoft.com/dataplatforminsider/2016/03/31/microsoft-sql-server-developer-edition-is-now-free/) is now free)
 * .NET Core ([1.0.0-rc2-final](https://www.microsoft.com/net/core#windows))
 * Git, Node and NPM

## Getting Started
1. Clone this repository.
2. Run the install.cmd and follow the prompts
3. Done

**Note:** Some features in the install script are not yet written so you will also need to perform the tasks below which are not marked as done.

### Features in the install script
- [x] Create basic install script
- [x] Github commands to clone or pull the needed repositories
- [x] NPM install package.json (Used for all projects to ensure we all use the same versions of client frameworks)
- [ ] Korebuild command
- [ ] Setup User Secrets to store appsettings
- [ ] Write Connectionstring and other settings to the user secret json file
- [ ] Create and run migrations for database

## Development
When working on MoM you will most likely want to work on the solution that contains the modules or themes you are currently working with.
The basic filestructure for MoM.

 * MoM.Dev
    * MoM/MoM.sln
        * MoM.Module
        * MoM.Web
    * MoM.Modules/MoM.Modules.sln
        * ../MoM/
        * MoM.Blog
        * MoM.CMS
        * MoM.Tutorial
    * MoM.Themes/MoM.Themes.sln
        * ../MoM/
        * MoM.Bootstrap
    * Your.Modules/Your.Modules.sln
    * Your.Themes/Your.Themes.sln

The reason for this structure is to make is easy for you to contain the projects you create for your own modules and themes in your on Git repository.

## Publishing
This section needs work.

### Publishing to IIS
This section needs work.
It is possible to deploy the solution to IIS.

### Publishing to Docker
This section needs work.
It is currently not possible to deploy the solution to IIS. This feature will be created at later time.

## This solution is not ready for production sites
I am currently working on making this solution ready enough to serve my personal website.
It will in time feature the possibility to load modules dynamically like Orchard 2 allready does.
Wiki and tutorials are still to come.

## Authors

* **Rolf Veinø Sørensen** - *Initial work* - [easymodules.net](https://easymodules.net/)

See also the list of [contributors](https://github.com/RolfVeinoeSorensen/MoM/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Acknowledgments
 * [Orchard 2](https://github.com/OrchardCMS/Orchard2) Very cool Free, open source CMS, but more complex and generic.
 * [ExtCore](https://github.com/ExtCore/ExtCore) Free, open source and cross-platform framework for creating modular and extendable web applications based on ASP.NET Core 1.0.