.class public Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;
.super Ljava/lang/Object;
.source "UserCloudManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideUserCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .locals 8
    .annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 35
    new-instance v7, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)V

    return-object v7
.end method
