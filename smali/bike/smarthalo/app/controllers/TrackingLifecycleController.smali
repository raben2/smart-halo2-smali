.class public Lbike/smarthalo/app/controllers/TrackingLifecycleController;
.super Ljava/lang/Object;
.source "TrackingLifecycleController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;
    }
.end annotation


# static fields
.field public static final MIN_TRACKING_DISTANCE:I = 0x19

.field public static final MIN_TRACKING_SPEED:I = 0x8

.field public static final MIN_TRACKING_TIME:I = 0x5

.field private static final SECONDS_FOR_AUTO_TRACKING_STOP:I = 0x5a

.field public static final START_TRACKING_TIME_OUT_SECONDS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "TrackingLifecycleController"


# instance fields
.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

.field private locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

.field private minimumTrackingDistance:I

.field private minimumTrackingSpeed:F

.field private minimumTrackingTime:I

.field private movementSubscription:Lio/reactivex/disposables/Disposable;

.field private navigationStateContract:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

.field private preTrackingState:Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

.field private preTrackingSubscription:Lio/reactivex/disposables/Disposable;

.field private shouldPreTrack:Z

.field private trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

.field private trackingLifecycleSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;"
        }
    .end annotation
.end field

.field private trackingStopSubscription:Lio/reactivex/disposables/Disposable;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    .line 98
    iput-object p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 100
    iput-object p3, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    .line 101
    iput-object p5, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 102
    iput-object p7, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->navigationStateContract:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    .line 103
    iput-object p6, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 105
    iput-object p4, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    const/4 p1, 0x1

    .line 106
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->create(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p2

    iput-object p2, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingLifecycleSource:Lio/reactivex/processors/FlowableProcessor;

    .line 107
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingLifecycleSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object p3, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Inactive:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    invoke-virtual {p2, p3}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    const/16 p2, 0x19

    .line 109
    iput p2, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingDistance:I

    const p2, 0x400e38e4

    .line 110
    iput p2, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingSpeed:F

    const/4 p2, 0x5

    .line 111
    iput p2, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingTime:I

    .line 112
    iput-boolean p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->shouldPreTrack:Z

    return-void
.end method

.method public static buildTrackingLifecycleController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;)Lbike/smarthalo/app/controllers/controllerContracts/TrackingLifecycleContract;
    .locals 9

    .line 80
    new-instance v8, Lbike/smarthalo/app/controllers/TrackingLifecycleController;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;)V

    return-object v8
.end method

.method private cleanUpPreTrackingSubscription()V
    .locals 1

    .line 181
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearConnectionStateSubscription()V
    .locals 1

    .line 116
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearMovementSubscription()V
    .locals 1

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->movementSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->movementSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearPreTrackingState()V
    .locals 2

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingState:Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    .line 231
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->cleanUpPreTrackingSubscription()V

    .line 233
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    :cond_0
    return-void
.end method

.method private clearTrackingStopSubscription()V
    .locals 1

    .line 198
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingStopSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingStopSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private isSpeedAboveThreshold(Landroid/location/Location;)Z
    .locals 2

    .line 293
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result p1

    iget v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingSpeed:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$observeConnectionState$1(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$observeConnectionState$2(Lbike/smarthalo/app/controllers/TrackingLifecycleController;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->checkAndStopActiveRide()V

    return-void
.end method

.method public static synthetic lambda$observeDeviceMovement$0(Lbike/smarthalo/app/controllers/TrackingLifecycleController;Lbike/smarthalo/app/models/Ping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->startShouldTrackCheck()V

    return-void
.end method

.method public static synthetic lambda$observePreTrackSequence$4(Lbike/smarthalo/app/controllers/TrackingLifecycleController;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->getCurrentLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 214
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingState:Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->updatePreTrackingState(Landroid/location/Location;Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;)Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingState:Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    .line 215
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingState:Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->checkShouldStartTracking(Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->shouldPreTrack:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 218
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->startTracking()V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$observePreTrackSequence$5(Lbike/smarthalo/app/controllers/TrackingLifecycleController;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearPreTrackingState()V

    return-void
.end method

.method public static synthetic lambda$observePreTrackSequence$6(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearPreTrackingState()V

    return-void
.end method

.method public static synthetic lambda$setUpTrackingStopTimer$3(Lbike/smarthalo/app/controllers/TrackingLifecycleController;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->checkAndStopActiveRide()V

    return-void
.end method

.method private observeConnectionState()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearConnectionStateSubscription()V

    .line 146
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 147
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$pkoiLnOYN1b6Dfi4AaQvd3Q-fR8;

    .line 148
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$nu7Rh8Zy24Qhe2UvRm2aIYcQBlY;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$nu7Rh8Zy24Qhe2UvRm2aIYcQBlY;-><init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V

    .line 149
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeDeviceMovement()V
    .locals 2

    .line 136
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearMovementSubscription()V

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 139
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveSmartHaloMovement()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$yKtz7SmHz0_KRt0MGG3yuKxvs9Y;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$yKtz7SmHz0_KRt0MGG3yuKxvs9Y;-><init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V

    .line 140
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->movementSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observePreTrackSequence()Lio/reactivex/disposables/Disposable;
    .locals 5

    .line 205
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x3e8

    .line 206
    invoke-static {v1, v2, v3, v4, v0}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1e

    .line 207
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    .line 208
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$ZofsElJVt4mLEGBzgRkg4lcytSw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$ZofsElJVt4mLEGBzgRkg4lcytSw;-><init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V

    new-instance v2, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$T0zdRTVIPKH94dUNLVNG1Pt1bPQ;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$T0zdRTVIPKH94dUNLVNG1Pt1bPQ;-><init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V

    new-instance v3, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$HDF41BsWYCEN62G5zvQrgmKdfTA;

    invoke-direct {v3, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$HDF41BsWYCEN62G5zvQrgmKdfTA;-><init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V

    .line 209
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method private setUpTrackingStopTimer()V
    .locals 3

    .line 188
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearTrackingStopSubscription()V

    .line 190
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x15f90

    .line 192
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 193
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$vJ0Y8b5V9tAOpfzEfBzGL3hbjsk;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingLifecycleController$vJ0Y8b5V9tAOpfzEfBzGL3hbjsk;-><init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V

    .line 194
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingStopSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startTracking()V
    .locals 7

    .line 305
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingState:Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    iget-object v2, v0, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->locations:Ljava/util/ArrayList;

    .line 309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingSpeed:F

    iget v6, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingTime:I

    .line 307
    invoke-interface/range {v1 .. v6}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->startSession(Ljava/util/ArrayList;JFI)V

    .line 313
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingLifecycleSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Tracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 315
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;->playStartTrackingSound()V

    .line 318
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearPreTrackingState()V

    :cond_2
    return-void
.end method


# virtual methods
.method public checkAndStopActiveRide()V
    .locals 2

    const/4 v0, 0x0

    .line 247
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->stopSession()V

    .line 250
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingLifecycleSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Inactive:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingState:Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    return-void
.end method

.method public checkShouldStartTracking(Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;)Z
    .locals 5

    .line 299
    iget-boolean v0, p1, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->isSpeedAboveThreshold:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalMilliSecondsAboveSpeedThreshold:J

    iget v2, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingTime:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget p1, p1, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalDistanceAboveSpeedThreshold:I

    iget v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->minimumTrackingDistance:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getShouldPreTrack()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->shouldPreTrack:Z

    return v0
.end method

.method public observeTrackingState()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingLifecycleSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public onDispose(Z)V
    .locals 1

    .line 239
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearTrackingStopSubscription()V

    .line 240
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearPreTrackingState()V

    .line 241
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->clearConnectionStateSubscription()V

    .line 243
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->onDispose(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->observeConnectionState()V

    .line 132
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->observeDeviceMovement()V

    return-void
.end method

.method public startShouldTrackCheck()V
    .locals 2

    .line 161
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 166
    invoke-static {v1}, Lbike/smarthalo/app/managers/storageManagers/FitnessStorageStaticManager;->getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    .line 168
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAutoTracking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->cleanUpPreTrackingSubscription()V

    .line 171
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 172
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->trackingLifecycleSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->PreTracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 173
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->observePreTrackSequence()Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->preTrackingSubscription:Lio/reactivex/disposables/Disposable;

    .line 176
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->setUpTrackingStopTimer()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public toggleShouldPreTrack()V
    .locals 1

    .line 153
    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->shouldPreTrack:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->shouldPreTrack:Z

    return-void
.end method

.method public updatePreTrackingState(Landroid/location/Location;Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;)Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;
    .locals 7

    if-nez p2, :cond_0

    .line 271
    new-instance p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;-><init>(Lbike/smarthalo/app/controllers/TrackingLifecycleController;)V

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/TrackingLifecycleController;->isSpeedAboveThreshold(Landroid/location/Location;)Z

    move-result v0

    iput-boolean v0, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->isSpeedAboveThreshold:Z

    .line 276
    iget-boolean v0, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->isSpeedAboveThreshold:Z

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->locations:Ljava/util/ArrayList;

    iget-object v1, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->locations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 279
    iget v1, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalDistanceAboveSpeedThreshold:I

    int-to-float v1, v1

    invoke-virtual {p1, v0}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalDistanceAboveSpeedThreshold:I

    .line 280
    iget-wide v1, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalMilliSecondsAboveSpeedThreshold:J

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalMilliSecondsAboveSpeedThreshold:J

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 283
    iput v0, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalDistanceAboveSpeedThreshold:I

    const-wide/16 v0, 0x0

    .line 284
    iput-wide v0, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->totalMilliSecondsAboveSpeedThreshold:J

    .line 287
    :cond_2
    :goto_0
    iget-object v0, p2, Lbike/smarthalo/app/controllers/TrackingLifecycleController$PreTrackingState;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
