# Paths
$packFolder = (Get-Item -Path "./" -Verbose).FullName
$rootFolder = Join-Path $packFolder "../"

# List of solutions
$solutions = (
    "framework",
    "modules/account",
    "modules/audit-logging",
    "modules/background-jobs",
    "modules/blogging",
    "modules/client-simulation",
    "modules/docs",
    "modules/feature-management",
    "modules/identity",
    "modules/identityserver",
    "modules/permission-management",
    "modules/setting-management",
    "modules/tenant-management",
    "modules/users",
    "modules/virtual-file-explorer",
    "modules/blob-storing-database"
)

# List of projects
$projects = (

    # framework
    "framework/src/Volo.Abp.ApiVersioning.Abstractions",
    "framework/src/Volo.Abp.AspNetCore.Authentication.JwtBearer",
    "framework/src/Volo.Abp.AspNetCore.Authentication.OAuth",
    "framework/src/Volo.Abp.AspNetCore.Authentication.OpenIdConnect",
    "framework/src/Volo.Abp.AspNetCore",
    "framework/src/Volo.Abp.AspNetCore.Components.WebAssembly",
    "framework/src/Volo.Abp.AspNetCore.Components.WebAssembly.Theming",
    "framework/src/Volo.Abp.AspNetCore.Components.WebAssembly.BasicTheme",
    "framework/src/Volo.Abp.AspNetCore.MultiTenancy",
    "framework/src/Volo.Abp.AspNetCore.Mvc.Client",
    "framework/src/Volo.Abp.AspNetCore.Mvc.Client.Common",
    "framework/src/Volo.Abp.AspNetCore.Mvc.Contracts",
    "framework/src/Volo.Abp.AspNetCore.Mvc",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Bootstrap",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Bundling",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.MultiTenancy",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Packages",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Theme.Basic",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Theme.Shared",
    "framework/src/Volo.Abp.AspNetCore.Mvc.UI.Widgets",
    "framework/src/Volo.Abp.AspNetCore.Serilog",
    "framework/src/Volo.Abp.AspNetCore.SignalR",
    "framework/src/Volo.Abp.AspNetCore.TestBase",
    "framework/src/Volo.Abp.Auditing",
    "framework/src/Volo.Abp.Authorization",
    "framework/src/Volo.Abp.Autofac",
    "framework/src/Volo.Abp.Autofac.WebAssembly",
    "framework/src/Volo.Abp.AutoMapper",
    "framework/src/Volo.Abp.BackgroundJobs.Abstractions",
    "framework/src/Volo.Abp.BackgroundJobs",
    "framework/src/Volo.Abp.BackgroundJobs.HangFire",
    "framework/src/Volo.Abp.BackgroundJobs.RabbitMQ",
    "framework/src/Volo.Abp.BackgroundJobs.Quartz",
    "framework/src/Volo.Abp.BackgroundWorkers",
    "framework/src/Volo.Abp.BackgroundWorkers.Quartz",
    "framework/src/Volo.Abp.BlazoriseUI",
    "framework/src/Volo.Abp.BlobStoring",
    "framework/src/Volo.Abp.BlobStoring.FileSystem",
    "framework/src/Volo.Abp.BlobStoring.Aliyun",
    "framework/src/Volo.Abp.BlobStoring.Azure",
    "framework/src/Volo.Abp.BlobStoring.Minio",
    "framework/src/Volo.Abp.BlobStoring.Aws",
    "framework/src/Volo.Abp.Caching",
    "framework/src/Volo.Abp.Caching.StackExchangeRedis",
    "framework/src/Volo.Abp.Castle.Core",
    "framework/src/Volo.Abp.Cli.Core",
    "framework/src/Volo.Abp.Cli",
    "framework/src/Volo.Abp.Core",
    "framework/src/Volo.Abp",
    "framework/src/Volo.Abp.Dapper",
    "framework/src/Volo.Abp.Data",
    "framework/src/Volo.Abp.Ddd.Application",
    "framework/src/Volo.Abp.Ddd.Application.Contracts",
    "framework/src/Volo.Abp.Ddd.Domain",
    "framework/src/Volo.Abp.Emailing",
    "framework/src/Volo.Abp.EntityFrameworkCore",
    "framework/src/Volo.Abp.EntityFrameworkCore.MySQL",
    "framework/src/Volo.Abp.EntityFrameworkCore.Oracle",
    "framework/src/Volo.Abp.EntityFrameworkCore.Oracle.Devart",
    "framework/src/Volo.Abp.EntityFrameworkCore.PostgreSql",
    "framework/src/Volo.Abp.EntityFrameworkCore.Sqlite",
    "framework/src/Volo.Abp.EntityFrameworkCore.SqlServer",
    "framework/src/Volo.Abp.EventBus",
    "framework/src/Volo.Abp.EventBus.RabbitMQ",
    "framework/src/Volo.Abp.EventBus.Kafka",
    "framework/src/Volo.Abp.EventBus.Rebus",
    "framework/src/Volo.Abp.ExceptionHandling",
    "framework/src/Volo.Abp.Features",
    "framework/src/Volo.Abp.FluentValidation",
    "framework/src/Volo.Abp.GlobalFeatures",
    "framework/src/Volo.Abp.Guids",
    "framework/src/Volo.Abp.HangFire",
    "framework/src/Volo.Abp.Http.Abstractions",
    "framework/src/Volo.Abp.Http.Client",
    "framework/src/Volo.Abp.Http.Client.IdentityModel",
    "framework/src/Volo.Abp.Http.Client.IdentityModel.Web",
    "framework/src/Volo.Abp.Http.Client.IdentityModel.WebAssembly",
    "framework/src/Volo.Abp.Http",
    "framework/src/Volo.Abp.IdentityModel",
    "framework/src/Volo.Abp.Json",
    "framework/src/Volo.Abp.Ldap",
    "framework/src/Volo.Abp.Localization.Abstractions",
    "framework/src/Volo.Abp.MailKit",
    "framework/src/Volo.Abp.Localization",
    "framework/src/Volo.Abp.MemoryDb",
    "framework/src/Volo.Abp.MongoDB",
    "framework/src/Volo.Abp.MultiTenancy",
    "framework/src/Volo.Abp.Minify",
    "framework/src/Volo.Abp.ObjectExtending",
    "framework/src/Volo.Abp.ObjectMapping",
    "framework/src/Volo.Abp.Quartz",
    "framework/src/Volo.Abp.RabbitMQ",
    "framework/src/Volo.Abp.Security",
    "framework/src/Volo.Abp.Serialization",
    "framework/src/Volo.Abp.Settings",
    "framework/src/Volo.Abp.Sms",
    "framework/src/Volo.Abp.Specifications",
    "framework/src/Volo.Abp.TestBase",
    "framework/src/Volo.Abp.TextTemplating",
    "framework/src/Volo.Abp.Threading",
    "framework/src/Volo.Abp.Timing",
    "framework/src/Volo.Abp.UI",
    "framework/src/Volo.Abp.UI.Navigation",
    "framework/src/Volo.Abp.Uow",
    "framework/src/Volo.Abp.Validation.Abstractions",
    "framework/src/Volo.Abp.Validation",
    "framework/src/Volo.Abp.VirtualFileSystem",
    "framework/src/Volo.Abp.Kafka",

    # modules/account
    "modules/account/src/Volo.Abp.Account.Application.Contracts",
    "modules/account/src/Volo.Abp.Account.Application",
    "modules/account/src/Volo.Abp.Account.HttpApi.Client",
    "modules/account/src/Volo.Abp.Account.HttpApi",
    "modules/account/src/Volo.Abp.Account.Web",
    "modules/account/src/Volo.Abp.Account.Web.IdentityServer",
    "modules/account/src/Volo.Abp.Account.Blazor",
        
    # modules/audit-logging
    "modules/audit-logging/src/Volo.Abp.AuditLogging.Domain",
    "modules/audit-logging/src/Volo.Abp.AuditLogging.Domain.Shared",
    "modules/audit-logging/src/Volo.Abp.AuditLogging.EntityFrameworkCore",
    "modules/audit-logging/src/Volo.Abp.AuditLogging.MongoDB",

    # modules/background-jobs
    "modules/background-jobs/src/Volo.Abp.BackgroundJobs.Domain",
    "modules/background-jobs/src/Volo.Abp.BackgroundJobs.Domain.Shared",
    "modules/background-jobs/src/Volo.Abp.BackgroundJobs.EntityFrameworkCore",
    "modules/background-jobs/src/Volo.Abp.BackgroundJobs.MongoDB",

    # modules/blogging
    "modules/blogging/src/Volo.Blogging.Application.Contracts.Shared",
    "modules/blogging/src/Volo.Blogging.Application.Contracts",
    "modules/blogging/src/Volo.Blogging.Application",
    "modules/blogging/src/Volo.Blogging.Domain",
    "modules/blogging/src/Volo.Blogging.Domain.Shared",
    "modules/blogging/src/Volo.Blogging.EntityFrameworkCore",
    "modules/blogging/src/Volo.Blogging.HttpApi.Client",
    "modules/blogging/src/Volo.Blogging.HttpApi",
    "modules/blogging/src/Volo.Blogging.MongoDB",
    "modules/blogging/src/Volo.Blogging.Web",
    "modules/blogging/src/Volo.Blogging.Admin.Application",
    "modules/blogging/src/Volo.Blogging.Admin.Application.Contracts",
    "modules/blogging/src/Volo.Blogging.Admin.HttpApi",
    "modules/blogging/src/Volo.Blogging.Admin.HttpApi.Client",
    "modules/blogging/src/Volo.Blogging.Admin.Web",

    # modules/client-simulation
    "modules/client-simulation/src/Volo.ClientSimulation",
    "modules/client-simulation/src/Volo.ClientSimulation.Web",

    # modules/docs
    "modules/docs/src/Volo.Docs.Admin.Application.Contracts",
    "modules/docs/src/Volo.Docs.Admin.Application",
    "modules/docs/src/Volo.Docs.Admin.HttpApi.Client",
    "modules/docs/src/Volo.Docs.Admin.HttpApi",
    "modules/docs/src/Volo.Docs.Admin.Web",
    "modules/docs/src/Volo.Docs.Application.Contracts",
    "modules/docs/src/Volo.Docs.Application",
    "modules/docs/src/Volo.Docs.Domain",
    "modules/docs/src/Volo.Docs.Domain.Shared",
    "modules/docs/src/Volo.Docs.EntityFrameworkCore",
    "modules/docs/src/Volo.Docs.HttpApi.Client",
    "modules/docs/src/Volo.Docs.HttpApi",
    "modules/docs/src/Volo.Docs.MongoDB",
    "modules/docs/src/Volo.Docs.Web",

    # modules/feature-management
    "modules/feature-management/src/Volo.Abp.FeatureManagement.Application.Contracts",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.Application",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.Domain",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.Domain.Shared",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.EntityFrameworkCore",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.HttpApi.Client",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.HttpApi",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.MongoDB",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.Web",
    "modules/feature-management/src/Volo.Abp.FeatureManagement.Blazor",

    # modules/identity
    "modules/identity/src/Volo.Abp.Identity.Application.Contracts",
    "modules/identity/src/Volo.Abp.Identity.Application",
    "modules/identity/src/Volo.Abp.Identity.AspNetCore",
    "modules/identity/src/Volo.Abp.Identity.Domain",
    "modules/identity/src/Volo.Abp.Identity.Domain.Shared",
    "modules/identity/src/Volo.Abp.Identity.EntityFrameworkCore",
    "modules/identity/src/Volo.Abp.Identity.HttpApi.Client",
    "modules/identity/src/Volo.Abp.Identity.HttpApi",
    "modules/identity/src/Volo.Abp.Identity.MongoDB",
    "modules/identity/src/Volo.Abp.Identity.Web",
    "modules/identity/src/Volo.Abp.Identity.Blazor",
    "modules/identity/src/Volo.Abp.PermissionManagement.Domain.Identity",
    
    # modules/identityserver
    "modules/identityserver/src/Volo.Abp.IdentityServer.Domain",
    "modules/identityserver/src/Volo.Abp.IdentityServer.Domain.Shared",
    "modules/identityserver/src/Volo.Abp.IdentityServer.EntityFrameworkCore",
    "modules/identityserver/src/Volo.Abp.IdentityServer.MongoDB",
    "modules/identityserver/src/Volo.Abp.PermissionManagement.Domain.IdentityServer",

    # modules/permission-management
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Application.Contracts",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Application",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Domain",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Domain.Shared",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.EntityFrameworkCore",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.HttpApi.Client",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.HttpApi",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.MongoDB",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Web",
    "modules/permission-management/src/Volo.Abp.PermissionManagement.Blazor",

    # modules/setting-management
    "modules/setting-management/src/Volo.Abp.SettingManagement.Domain",
    "modules/setting-management/src/Volo.Abp.SettingManagement.Domain.Shared",
    "modules/setting-management/src/Volo.Abp.SettingManagement.EntityFrameworkCore",
    "modules/setting-management/src/Volo.Abp.SettingManagement.MongoDB",
    "modules/setting-management/src/Volo.Abp.SettingManagement.Web",

    # modules/tenant-management
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Application.Contracts",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Application",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Domain",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Domain.Shared",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.EntityFrameworkCore",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.HttpApi.Client",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.HttpApi",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.MongoDB",
    "modules/tenant-management/src/Volo.Abp.TenantManagement.Web",

    # modules/users
    "modules/users/src/Volo.Abp.Users.Abstractions",
    "modules/users/src/Volo.Abp.Users.Domain",
    "modules/users/src/Volo.Abp.Users.Domain.Shared",
    "modules/users/src/Volo.Abp.Users.EntityFrameworkCore",
    "modules/users/src/Volo.Abp.Users.MongoDB",

    # modules/virtual-file-explorer
    "modules/virtual-file-explorer/src/Volo.Abp.VirtualFileExplorer.Web",
	
    # modules/blob-storing-database
    "modules/blob-storing-database/src/Volo.Abp.BlobStoring.Database.Domain",
    "modules/blob-storing-database/src/Volo.Abp.BlobStoring.Database.Domain.Shared",
    "modules/blob-storing-database/src/Volo.Abp.BlobStoring.Database.EntityFrameworkCore",
    "modules/blob-storing-database/src/Volo.Abp.BlobStoring.Database.MongoDB"
)
