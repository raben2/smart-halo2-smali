.class public final Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;
.super Ljava/lang/Object;
.source "UserCloudManagerModule_ProvideUserCloudManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/contracts/IUserCloudManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final authenticationContractProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
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

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsStorageContractProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final userStorageContractProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    .line 40
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->authenticationContractProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->userStorageContractProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p7, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->settingsStorageContractProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;"
        }
    .end annotation

    .line 69
    new-instance v8, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static proxyProvideUserCloudManager(Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .locals 0

    .line 88
    invoke-virtual/range {p0 .. p6}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;->provideUserCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 87
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/contracts/IUserCloudManager;
    .locals 7

    .line 50
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->authenticationContractProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    iget-object v5, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->userStorageContractProvider:Ljavax/inject/Provider;

    .line 56
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v6, p0, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->settingsStorageContractProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 51
    invoke-virtual/range {v0 .. v6}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule;->provideUserCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;)Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 50
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/UserCloudManagerModule_ProvideUserCloudManagerFactory;->get()Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    move-result-object v0

    return-object v0
.end method
