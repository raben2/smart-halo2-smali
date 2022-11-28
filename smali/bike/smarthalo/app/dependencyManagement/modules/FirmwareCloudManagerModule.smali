.class public Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;
.super Ljava/lang/Object;
.source "FirmwareCloudManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideFirmwareCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;
    .locals 1
    .annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 31
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;

    invoke-direct {v0, p1, p2, p3, p4}, Lbike/smarthalo/app/managers/cloudManagers/FirmwareCloudManager;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    return-object v0
.end method
