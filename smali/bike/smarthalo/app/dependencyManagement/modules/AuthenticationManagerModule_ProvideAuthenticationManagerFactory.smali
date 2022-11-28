.class public final Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;
.super Ljava/lang/Object;
.source "AuthenticationManagerModule_ProvideAuthenticationManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
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

.field private final fitnessStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final jobServiceCreatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
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

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final userStorageManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    .line 48
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p9, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/services/JobServiceCreator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;"
        }
    .end annotation

    .line 83
    new-instance v10, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static proxyProvideAuthenticationManager(Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;Landroid/content/Context;Lretrofit2/Retrofit;Lcom/google/gson/Gson;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/AuthenticationContract;
    .locals 0

    .line 106
    invoke-virtual/range {p0 .. p8}, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;->provideAuthenticationManager(Landroid/content/Context;Lretrofit2/Retrofit;Lcom/google/gson/Gson;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 105
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/contracts/AuthenticationContract;
    .locals 9

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 62
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 64
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/gson/Gson;

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 65
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v5, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->userStorageManagerProvider:Ljavax/inject/Provider;

    .line 66
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iget-object v6, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 67
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v7, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->jobServiceCreatorProvider:Ljavax/inject/Provider;

    .line 68
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbike/smarthalo/app/services/JobServiceCreator;

    iget-object v8, p0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 61
    invoke-virtual/range {v0 .. v8}, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;->provideAuthenticationManager(Landroid/content/Context;Lretrofit2/Retrofit;Lcom/google/gson/Gson;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 60
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule_ProvideAuthenticationManagerFactory;->get()Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    move-result-object v0

    return-object v0
.end method
