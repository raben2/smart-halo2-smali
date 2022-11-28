.class public Lbike/smarthalo/app/dependencyManagement/modules/FitnessCloudManagerModule;
.super Ljava/lang/Object;
.source "FitnessCloudManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideFitnessCloudManager(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .locals 7
    .annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 32
    new-instance v6, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/managers/cloudManagers/FitnessCloudManager;-><init>(Landroid/content/Context;Lretrofit2/Retrofit;Lbike/smarthalo/app/managers/contracts/StravaCloudManagerContract;Lbike/smarthalo/app/managers/KeyManager;Lbike/smarthalo/app/managers/contracts/AuthenticationContract;)V

    return-object v6
.end method
