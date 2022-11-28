.class public Lbike/smarthalo/sdk/SHSdkBuildConfigHelper;
.super Ljava/lang/Object;
.source "SHSdkBuildConfigHelper.java"


# static fields
.field private static final DEVELOPMENT_CONFIG_NAME:Ljava/lang/String; = "debug"

.field private static final NIGHTLY_CONFIG_NAME:Ljava/lang/String; = "nightly"

.field private static final RELEASE_CONFIG_NAME:Ljava/lang/String; = "release"

.field private static final TAG:Ljava/lang/String; = "SHSdkBuildConfigHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBuildConfig(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "release"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDevelopmentBuildConfig()Z
    .locals 1

    const-string v0, "debug"

    .line 28
    invoke-static {v0}, Lbike/smarthalo/sdk/SHSdkBuildConfigHelper;->isBuildConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isReleaseBuildConfig()Z
    .locals 1

    const-string v0, "release"

    .line 24
    invoke-static {v0}, Lbike/smarthalo/sdk/SHSdkBuildConfigHelper;->isBuildConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static launchParentServiceOnAuthentication(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    const-string v0, "bike.smarthalo.app.services.SHCentralService"

    .line 33
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    sget-object p0, Lbike/smarthalo/sdk/SHSdkBuildConfigHelper;->TAG:Ljava/lang/String;

    const-string v0, "Could not find parent service class.  Aborting launch"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
