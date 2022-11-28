.class public final Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;
.super Ljava/lang/Object;
.source "FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;
    .locals 1

    .line 26
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;)V

    return-object v0
.end method

.method public static proxyProvideFitnessStorageManager(Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;->provideFitnessStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .locals 2

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    .line 20
    invoke-virtual {v0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;->provideFitnessStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule_ProvideFitnessStorageManagerFactory;->get()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    move-result-object v0

    return-object v0
.end method
