.class public Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;
.super Ljava/lang/Object;
.source "AuthenticationManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideAuthenticationManager(Landroid/content/Context;Lretrofit2/Retrofit;Lcom/google/gson/Gson;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/managers/contracts/AuthenticationContract;
    .locals 10
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 41
    new-instance v9, Lbike/smarthalo/app/managers/AuthenticationManager;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lbike/smarthalo/app/managers/AuthenticationManager;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;Lcom/google/gson/Gson;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v9
.end method
