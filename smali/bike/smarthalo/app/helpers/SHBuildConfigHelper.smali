.class public Lbike/smarthalo/app/helpers/SHBuildConfigHelper;
.super Ljava/lang/Object;
.source "SHBuildConfigHelper.java"


# static fields
.field private static final BARRACKS_DEVELOPMENT_ENV:Ljava/lang/String; = "Development"

.field private static final BARRACKS_PRODUCTION_ENV:Ljava/lang/String; = "Production"

.field private static final DEVELOPMENT_CONFIG_NAME:Ljava/lang/String; = "debug"

.field private static final NIGHTLY_CONFIG_NAME:Ljava/lang/String; = "nightly"

.field private static final RELEASE_CONFIG_NAME:Ljava/lang/String; = "release"

.field private static final SMARTHALO_E_CONFIG_NAME:Ljava/lang/String; = "smarthaloE"

.field private static final UNIT_TESTING_CONFIG_NAME:Ljava/lang/String; = "unitTesting"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentBarracksEnvironmentName()Ljava/lang/String;
    .locals 3

    const-string v0, "release"

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0xb620c14

    if-eq v1, v2, :cond_3

    const v2, 0x5b09653

    if-eq v1, v2, :cond_2

    const v2, 0x41012807

    if-eq v1, v2, :cond_1

    const v2, 0x73f6cba5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "nightly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const-string v1, "unitTesting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "Production"

    return-object v0

    :pswitch_1
    const-string v0, "Development"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isBuildConfig(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "release"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDevelopmentBuildConfig()Z
    .locals 1

    const-string v0, "debug"

    .line 41
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isBuildConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isReleaseBuildConfig()Z
    .locals 1

    const-string v0, "release"

    .line 37
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isBuildConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmartHaloEConfig()Z
    .locals 1

    const-string v0, "smarthaloE"

    .line 45
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isBuildConfig(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
