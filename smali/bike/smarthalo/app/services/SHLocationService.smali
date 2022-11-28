.class public Lbike/smarthalo/app/services/SHLocationService;
.super Landroid/app/Service;
.source "SHLocationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/services/SHLocationService$LocalBinder;
    }
.end annotation


# static fields
.field private static final SH_LOCATION_LOG:Ljava/lang/String; = "SH_LOCATION"


# instance fields
.field private locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbike/smarthalo/app/services/SHLocationService$LocalBinder;-><init>(Lbike/smarthalo/app/services/SHLocationService;Lbike/smarthalo/app/services/SHLocationService$1;)V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHLocationService;->mBinder:Landroid/os/IBinder;

    .line 26
    new-instance v0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/services/SHLocationService;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    return-void
.end method

.method static synthetic access$100(Lbike/smarthalo/app/services/SHLocationService;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
    .locals 0

    .line 22
    iget-object p0, p0, Lbike/smarthalo/app/services/SHLocationService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "SH_LOCATION"

    const-string v0, "onBind"

    .line 82
    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lbike/smarthalo/app/services/SHLocationService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 87
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/services/SHLocationService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "SH_LOCATION"

    const-string v1, "onCreate"

    .line 30
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    :try_start_0
    invoke-static {p0}, Lbike/smarthalo/app/managers/SHLocationManager;->buildLocationManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/services/SHLocationService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
    :try_end_0
    .catch Lbike/smarthalo/app/managers/MissingLocationPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    :catch_0
    invoke-virtual {p0}, Lbike/smarthalo/app/services/SHLocationService;->stopSelf()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "SH_LOCATION"

    const-string v1, "onDestroy"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/services/SHLocationService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lbike/smarthalo/app/services/SHLocationService;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    :cond_0
    return-void
.end method
