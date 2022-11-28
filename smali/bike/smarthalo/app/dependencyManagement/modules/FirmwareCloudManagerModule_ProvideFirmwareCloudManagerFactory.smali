.class public final Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;
.super Ljava/lang/Object;
.source "FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;",
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

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

.field private final retrofitProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lretrofit2/Retrofit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;",
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
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    .line 32
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p3, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p4, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p5, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->authenticationContractProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;",
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
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;"
        }
    .end annotation

    .line 55
    new-instance v6, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static proxyProvideFirmwareCloudManager(Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;->provideFirmwareCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 69
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;
    .locals 5

    .line 40
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 42
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->retrofitProvider:Ljavax/inject/Provider;

    .line 43
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lretrofit2/Retrofit;

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 44
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->authenticationContractProvider:Ljavax/inject/Provider;

    .line 45
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/managers/contracts/AuthenticationContract;

    .line 41
    invoke-virtual {v0, v1, v2, v3, v4}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule;->provideFirmwareCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 40
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/FirmwareCloudManagerModule_ProvideFirmwareCloudManagerFactory;->get()Lbike/smarthalo/app/managers/contracts/FirmwareCloudManagerContract;

    move-result-object v0

    return-object v0
.end method
