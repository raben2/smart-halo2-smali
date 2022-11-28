.class public Lbike/smarthalo/app/dependencyManagement/modules/StravaCloudManagerModule;
.super Ljava/lang/Object;
.source "StravaCloudManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideStravaCloudManager(Landroid/content/Context;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/gpx/GPXParser;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;
    .locals 9
    .annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 36
    new-instance v8, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/managers/cloudManagers/StravaCloudManager;-><init>(Landroid/content/Context;Lcom/google/gson/Gson;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/gpx/GPXParser;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v8
.end method
