.class public final Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;
.super Ljava/lang/Object;
.source "SettingsStorageManagerModule_ProvideSettingStorageManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;
    .locals 1

    .line 26
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;)V

    return-object v0
.end method

.method public static proxyProvideSettingStorageManager(Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;->provideSettingStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 31
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;
    .locals 2

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    .line 20
    invoke-virtual {v0}, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;->provideSettingStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 19
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule_ProvideSettingStorageManagerFactory;->get()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    move-result-object v0

    return-object v0
.end method
