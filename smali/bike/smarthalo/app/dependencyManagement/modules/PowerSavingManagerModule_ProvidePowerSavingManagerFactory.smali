.class public final Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;
.super Ljava/lang/Object;
.source "PowerSavingManagerModule_ProvidePowerSavingManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
        ">;"
    }
.end annotation


# instance fields
.field private final appStorageContractProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    .line 24
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 25
    iput-object p3, p0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->appStorageContractProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;"
        }
    .end annotation

    .line 39
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyProvidePowerSavingManager(Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;Landroid/content/Context;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
    .locals 0

    .line 46
    invoke-virtual {p0, p1, p2}, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;->providePowerSavingManager(Landroid/content/Context;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
    .locals 3

    .line 30
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 31
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->appStorageContractProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;->providePowerSavingManager(Landroid/content/Context;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 30
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule_ProvidePowerSavingManagerFactory;->get()Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    move-result-object v0

    return-object v0
.end method
