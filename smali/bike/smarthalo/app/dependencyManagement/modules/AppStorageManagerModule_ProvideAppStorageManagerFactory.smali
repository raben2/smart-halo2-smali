.class public final Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;
.super Ljava/lang/Object;
.source "AppStorageManagerModule_ProvideAppStorageManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;
    .locals 1

    .line 25
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;)V

    return-object v0
.end method

.method public static proxyProvideAppStorageManager(Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;->provideAppStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;
    .locals 2

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    .line 19
    invoke-virtual {v0}, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;->provideAppStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule_ProvideAppStorageManagerFactory;->get()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    move-result-object v0

    return-object v0
.end method
