.class public Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;
.super Ljava/lang/Object;
.source "PowerSavingManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providePowerSavingManager(Landroid/content/Context;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 27
    new-instance v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;

    invoke-direct {v0, p1, p2}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManager;-><init>(Landroid/content/Context;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    return-object v0
.end method
