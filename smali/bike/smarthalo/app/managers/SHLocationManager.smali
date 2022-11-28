.class public Lbike/smarthalo/app/managers/SHLocationManager;
.super Ljava/lang/Object;
.source "SHLocationManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lbike/smarthalo/app/managers/contracts/LocationManagerContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "SHLocationManager"


# instance fields
.field private context:Landroid/content/Context;

.field private currentHeading:I

.field private currentLocation:Landroid/location/Location;

.field private currentLocationSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private locationUpdateSubscribers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/managers/LocationUpdateSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private previousLocation:Landroid/location/Location;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentHeading:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->locationUpdateSubscribers:Ljava/util/List;

    .line 50
    iput-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->context:Landroid/content/Context;

    .line 52
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/PublishProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentLocationSource:Lio/reactivex/processors/FlowableProcessor;

    .line 54
    new-instance p1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-void
.end method

.method public static buildLocationManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbike/smarthalo/app/managers/MissingLocationPermissionException;
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 108
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 109
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    new-instance p0, Lbike/smarthalo/app/managers/MissingLocationPermissionException;

    const-string v0, "Location permissions are required to instantiate this class"

    invoke-direct {p0, v0}, Lbike/smarthalo/app/managers/MissingLocationPermissionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_1
    :goto_0
    new-instance v0, Lbike/smarthalo/app/managers/SHLocationManager;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/SHLocationManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private calculateCustomHeading(Landroid/location/Location;Landroid/location/Location;)I
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 149
    invoke-virtual {p2, p1}, Landroid/location/Location;->bearingTo(Landroid/location/Location;)F

    move-result p1

    float-to-double p1, p1

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p1, v0

    .line 153
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    return p2

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getHighAccuracyLocationRequest()Lcom/google/android/gms/location/LocationRequest;
    .locals 3

    .line 160
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v1, 0x64

    .line 161
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x3e8

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1f4

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method


# virtual methods
.method public disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->locationUpdateSubscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->locationUpdateSubscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    iget-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->locationUpdateSubscribers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 83
    iget-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_1
    return-void
.end method

.method public getCurrentHeading()Ljava/lang/Integer;
    .locals 1

    .line 104
    iget v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentHeading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .line 94
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .line 89
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public observeLocationUpdates()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentLocationSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0}, Lio/reactivex/processors/FlowableProcessor;->onBackpressureLatest()Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 118
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-direct {p0}, Lbike/smarthalo/app/managers/SHLocationManager;->getHighAccuracyLocationRequest()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v1

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "SHLocationManager"

    const-string v0, "onLocationChanged - is NULL"

    .line 134
    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentLocation:Landroid/location/Location;

    iput-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->previousLocation:Landroid/location/Location;

    .line 138
    iput-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentLocation:Landroid/location/Location;

    .line 140
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentLocation:Landroid/location/Location;

    iget-object v1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->previousLocation:Landroid/location/Location;

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/managers/SHLocationManager;->calculateCustomHeading(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    iput v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentHeading:I

    .line 141
    iget v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentHeading:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/location/Location;->setBearing(F)V

    .line 143
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->currentLocationSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->locationUpdateSubscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/managers/SHLocationManager;->locationUpdateSubscribers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lbike/smarthalo/app/managers/SHLocationManager;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    :cond_1
    return-void
.end method
