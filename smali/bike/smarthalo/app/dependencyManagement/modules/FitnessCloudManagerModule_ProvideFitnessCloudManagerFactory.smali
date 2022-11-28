.class public final Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;
.super Ljava/lang/Object;
.source "FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;",
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

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field

.field private final stravaCloudManagerContractProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    .line 36
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p3, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p4, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->stravaCloudManagerContractProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p5, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p6, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->authenticationContractProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/contracts/AuthenticationContract;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;"
        }
    .end annotation

    .line 62
    new-instance v7, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static proxyProvideFitnessCloudManager(Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .locals 0

    .line 79
    invoke-virtual/range {p0 .. p5}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;->provideFitnessCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 78
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .locals 6

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 47
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 48
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->stravaCloudManagerContractProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v5, p0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->authenticationContractProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 46
    invoke-virtual/range {v0 .. v5}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;->provideFitnessCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 45
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule_ProvideFitnessCloudManagerFactory;->get()Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    move-result-object v0

    return-object v0
.end method
