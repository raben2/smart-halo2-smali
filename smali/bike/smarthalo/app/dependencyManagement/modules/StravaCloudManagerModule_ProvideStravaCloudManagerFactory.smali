.class public final Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;
.super Ljava/lang/Object;
.source "StravaCloudManagerModule_ProvideStravaCloudManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;",
        ">;"
    }
.end annotation


# instance fields
.field private final analyticsContractProvider:Ljavax/inject/Provider;
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

.field private final gpxParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/gpx/GPXParser;",
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

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

.field private final okHttpClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/gpx/GPXParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    .line 44
    iput-object p2, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p5, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->gpxParserProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p6, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p7, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p8, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->analyticsContractProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lokhttp3/OkHttpClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/gpx/GPXParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lbike/smarthalo/app/analytics/AnalyticsContract;",
            ">;)",
            "Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;"
        }
    .end annotation

    .line 76
    new-instance v9, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static proxyProvideStravaCloudManager(Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;Landroid/content/Context;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/gpx/GPXParser;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;
    .locals 0

    .line 97
    invoke-virtual/range {p0 .. p7}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;->provideStravaCloudManager(Landroid/content/Context;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/gpx/GPXParser;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 96
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    return-object p0
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;
    .locals 8

    .line 55
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;

    iget-object v1, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 57
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->gsonProvider:Ljavax/inject/Provider;

    .line 58
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    iget-object v3, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 59
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/OkHttpClient;

    iget-object v4, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->gpxParserProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbike/smarthalo/app/gpx/GPXParser;

    iget-object v5, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 61
    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v6, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 62
    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v7, p0, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->analyticsContractProvider:Ljavax/inject/Provider;

    .line 63
    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 56
    invoke-virtual/range {v0 .. v7}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;->provideStravaCloudManager(Landroid/content/Context;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/gpx/GPXParser;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 55
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule_ProvideStravaCloudManagerFactory;->get()Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;

    move-result-object v0

    return-object v0
.end method
