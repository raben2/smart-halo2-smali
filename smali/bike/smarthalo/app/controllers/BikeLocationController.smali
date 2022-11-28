.class public Lbike/smarthalo/app/controllers/BikeLocationController;
.super Ljava/lang/Object;
.source "BikeLocationController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;


# instance fields
.field private bikeLocationSubscription:Lio/reactivex/disposables/Disposable;

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceStateControllerContract:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private hasBikeLocationSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;


# direct methods
.method private constructor <init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Landroid/content/Context;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    .line 38
    iput-object p1, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->deviceStateControllerContract:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 39
    iput-object p2, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->context:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 42
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUserBikeLocation()Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    const/4 p2, 0x1

    .line 43
    invoke-static {p2}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p3

    invoke-virtual {p3}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p3

    iput-object p3, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->hasBikeLocationSource:Lio/reactivex/processors/FlowableProcessor;

    .line 44
    iget-object p3, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->hasBikeLocationSource:Lio/reactivex/processors/FlowableProcessor;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static buildController(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Landroid/content/Context;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;)Lbike/smarthalo/app/controllers/controllerContracts/BikeLocationControllerContract;
    .locals 1

    .line 51
    new-instance v0, Lbike/smarthalo/app/controllers/BikeLocationController;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/controllers/BikeLocationController;-><init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Landroid/content/Context;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;)V

    return-object v0
.end method

.method private clearBikeLocationSubscription()V
    .locals 1

    .line 67
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->bikeLocationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->bikeLocationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearConnectionSubscription()V
    .locals 1

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic lambda$observeConnectionState$0(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$observeConnectionState$1(Lbike/smarthalo/app/controllers/BikeLocationController;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 82
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->deleteUserBikeLocation()V

    .line 83
    iget-object p1, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->hasBikeLocationSource:Lio/reactivex/processors/FlowableProcessor;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/BikeLocationController;->observeFirstLocation()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$observeFirstLocation$2(Lbike/smarthalo/app/controllers/BikeLocationController;Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->saveUserBikeLocation(Landroid/location/Location;)V

    .line 102
    iget-object p1, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->hasBikeLocationSource:Lio/reactivex/processors/FlowableProcessor;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    return-void
.end method

.method private observeConnectionState()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/BikeLocationController;->clearConnectionSubscription()V

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->deviceStateControllerContract:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 78
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/controllers/-$$Lambda$BikeLocationController$OttffnuB5VFifTBdcmcu_1QjAkM;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$BikeLocationController$OttffnuB5VFifTBdcmcu_1QjAkM;

    .line 79
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->skipWhile(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$BikeLocationController$G7wcbNDeE18zOfIYtXPbgpN9iFk;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$BikeLocationController$G7wcbNDeE18zOfIYtXPbgpN9iFk;-><init>(Lbike/smarthalo/app/controllers/BikeLocationController;)V

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private observeFirstLocation()V
    .locals 3

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 94
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->observeLocationUpdates()Lio/reactivex/Flowable;

    move-result-object v0

    .line 96
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/BikeLocationController;->clearBikeLocationSubscription()V

    const-wide/16 v1, 0x1

    .line 99
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$BikeLocationController$FJIOXyUVDTJ1aztUXi39SK4e6G8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$BikeLocationController$FJIOXyUVDTJ1aztUXi39SK4e6G8;-><init>(Lbike/smarthalo/app/controllers/BikeLocationController;)V

    .line 100
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->bikeLocationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAndObserveHasBikeLocation()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->hasBikeLocationSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/processors/FlowableProcessor;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public onDispose()V
    .locals 2

    .line 115
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/BikeLocationController;->clearBikeLocationSubscription()V

    .line 116
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/BikeLocationController;->clearConnectionSubscription()V

    .line 118
    iget-object v0, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lbike/smarthalo/app/controllers/BikeLocationController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/BikeLocationController;->observeConnectionState()V

    return-void
.end method
