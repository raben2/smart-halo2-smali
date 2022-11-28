.class public Lbike/smarthalo/app/dependencyManagement/modules/GeocodingManagerModule;
.super Ljava/lang/Object;
.source "GeocodingManagerModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method providesGeocodingManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;
    .locals 1
    .annotation runtime Lbike/smarthalo/app/dependencyManagement/scopes/AppLevel;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 25
    new-instance v0, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
