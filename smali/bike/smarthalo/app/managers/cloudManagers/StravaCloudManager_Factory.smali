.class public final Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;
.super Ljava/lang/Object;
.source "StravaCloudManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->gsonProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->gpxParserProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p7, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->analyticsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;"
        }
    .end annotation

    .line 66
    new-instance v8, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method


# virtual methods
.method public get()Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;
    .locals 9

    .line 48
    new-instance v8, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 49
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->gsonProvider:Ljavax/inject/Provider;

    .line 50
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/gson/Gson;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->okHttpClientProvider:Ljavax/inject/Provider;

    .line 51
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->gpxParserProvider:Ljavax/inject/Provider;

    .line 52
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lbike/smarthalo/app/gpx/GPXParser;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 53
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lbike/smarthalo/app/managers/KeyManager;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->fitnessStorageManagerProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v0, p0, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->analyticsManagerProvider:Ljavax/inject/Provider;

    .line 55
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lbike/smarthalo/app/analytics/AnalyticsContract;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;-><init>(Landroid/content/Context;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/gpx/GPXParser;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v8
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager_Factory;->get()Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    move-result-object v0

    return-object v0
.end method
