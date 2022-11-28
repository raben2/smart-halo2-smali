.class public Lbike/smarthalo/app/controllers/DayLightController;
.super Ljava/lang/Object;
.source "DayLightController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;


# static fields
.field public static final BRIGHTNESS_CLIMB:I = 0x3c

.field public static final MAX_LIGHT_BRIGHTNESS:I = 0x64

.field public static final MIN_LIGHT_BRIGHTNESS:I = 0x28

.field private static final TAG:Ljava/lang/String; = "DayLightController"


# instance fields
.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private lastKnownLocation:Landroid/location/Location;

.field private lightTimer:Ljava/util/Timer;

.field private lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

.field private locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private locationSubscription:Lio/reactivex/disposables/Disposable;

.field private locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

.field private masterBrightnessSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    .line 61
    iput-object p2, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    .line 62
    iput-object p3, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 63
    iput-object p4, p0, Lbike/smarthalo/app/controllers/DayLightController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 64
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/controllers/DayLightController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->updateLightState()V

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)Lbike/smarthalo/app/controllers/controllerContracts/DayLightControllerContract;
    .locals 1

    .line 72
    new-instance v0, Lbike/smarthalo/app/controllers/DayLightController;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/controllers/DayLightController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;)V

    return-object v0
.end method

.method private cleanUpSequence()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearLightTimer()V

    .line 126
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearMasterBrightnessSubscription()V

    .line 128
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 132
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearLocationUpdateSubscription()V

    return-void
.end method

.method private clearConnectionStateSubscription()V
    .locals 1

    .line 118
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearLightTimer()V
    .locals 1

    .line 136
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private clearLocationUpdateSubscription()V
    .locals 1

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearMasterBrightnessSubscription()V
    .locals 1

    .line 143
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->masterBrightnessSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->masterBrightnessSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getAndObserveFirstLocationUpdate(Lio/reactivex/Flowable;)Lio/reactivex/disposables/Disposable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Landroid/location/Location;",
            ">;)",
            "Lio/reactivex/disposables/Disposable;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 158
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$xQq-AdSOL11dCYdVf9g6zq5ghF8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$xQq-AdSOL11dCYdVf9g6zq5ghF8;-><init>(Lbike/smarthalo/app/controllers/DayLightController;)V

    .line 159
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$6PqWaUlB9DXa79qp7Y7GTYjBpfI(Lbike/smarthalo/app/controllers/DayLightController;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->updateMasterBrightness()V

    return-void
.end method

.method public static synthetic lambda$getAndObserveFirstLocationUpdate$0(Lbike/smarthalo/app/controllers/DayLightController;Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lastKnownLocation:Landroid/location/Location;

    .line 161
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->updateMasterBrightness()V

    .line 162
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->updateLightState()V

    .line 163
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    return-void
.end method

.method public static synthetic lambda$processFirstQuarterOfDayLight$1(Lbike/smarthalo/app/controllers/DayLightController;JLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr p1, v0

    long-to-int p2, p1

    .line 215
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->setMasterBrightness(I)V

    return-void
.end method

.method static synthetic lambda$processFirstQuarterOfDayLight$2(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "DayLightController"

    const-string v0, "An error occured while updating master brightness"

    .line 217
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$processLastQuarterOfDayLight$3(Lbike/smarthalo/app/controllers/DayLightController;JLjava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 233
    iget-object p3, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    long-to-int p2, p1

    invoke-interface {p3, p2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->setMasterBrightness(I)V

    return-void
.end method

.method static synthetic lambda$processLastQuarterOfDayLight$4(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p0, "DayLightController"

    const-string v0, "An error occured while updating master brightness"

    .line 235
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic lambda$q9XUIWcT51cRM3S3LJ4qHiNUHQU(Lbike/smarthalo/app/controllers/DayLightController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/DayLightController;->onConnectionStateChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$setUpDelayedBrightnessUpdate$5(Lbike/smarthalo/app/controllers/DayLightController;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->updateMasterBrightness()V

    return-void
.end method

.method private observeConnectionState()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearConnectionStateSubscription()V

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 113
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$q9XUIWcT51cRM3S3LJ4qHiNUHQU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$q9XUIWcT51cRM3S3LJ4qHiNUHQU;-><init>(Lbike/smarthalo/app/controllers/DayLightController;)V

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onConnectionStateChanged(Z)V
    .locals 1

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 82
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearLocationUpdateSubscription()V

    .line 83
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->observeLocationUpdates()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/DayLightController;->getAndObserveFirstLocationUpdate(Lio/reactivex/Flowable;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->locationSubscription:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->cleanUpSequence()V

    :goto_0
    return-void
.end method

.method private processFirstQuarterOfDayLight(JJJ)V
    .locals 6

    move-wide v0, p5

    move-wide v2, p3

    move-wide v4, p1

    .line 204
    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/helpers/BrightnessHelper;->getFirstQuarterOfDayLightBrightness(JJJ)J

    move-result-wide p1

    .line 205
    iget-object p3, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    long-to-int p4, p1

    invoke-interface {p3, p4}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->setMasterBrightness(I)V

    const-wide/16 p3, 0x64

    sub-long/2addr p3, p1

    .line 208
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 210
    invoke-static {p5, p6, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p5

    long-to-int p4, p3

    int-to-long p3, p4

    .line 211
    invoke-virtual {p5, p3, p4}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p4, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$HfWmdi-4eHoDep0oTQ2bWodZqxs;

    invoke-direct {p4, p0, p1, p2}, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$HfWmdi-4eHoDep0oTQ2bWodZqxs;-><init>(Lbike/smarthalo/app/controllers/DayLightController;J)V

    sget-object p1, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$PmVxlVZaA3uts5xlR8FZ_6rRLXQ;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$PmVxlVZaA3uts5xlR8FZ_6rRLXQ;

    new-instance p2, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$6PqWaUlB9DXa79qp7Y7GTYjBpfI;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$6PqWaUlB9DXa79qp7Y7GTYjBpfI;-><init>(Lbike/smarthalo/app/controllers/DayLightController;)V

    .line 212
    invoke-virtual {p3, p4, p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->masterBrightnessSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private processLastQuarterOfDayLight(JJJ)V
    .locals 6

    move-wide v0, p5

    move-wide v2, p3

    move-wide v4, p1

    .line 222
    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/helpers/BrightnessHelper;->getLastQuarterOfDayLightBrightness(JJJ)J

    move-result-wide p1

    .line 223
    iget-object p3, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    long-to-int p4, p1

    invoke-interface {p3, p4}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->setMasterBrightness(I)V

    const-wide/16 p3, 0x28

    sub-long p3, p1, p3

    .line 226
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 228
    invoke-static {p5, p6, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p5

    long-to-int p4, p3

    int-to-long p3, p4

    .line 229
    invoke-virtual {p5, p3, p4}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p3

    new-instance p4, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$Mk9hb9MvXP9HtqsoIZdWZXwGx50;

    invoke-direct {p4, p0, p1, p2}, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$Mk9hb9MvXP9HtqsoIZdWZXwGx50;-><init>(Lbike/smarthalo/app/controllers/DayLightController;J)V

    sget-object p1, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$azP7u96De3tfznQEJc7QlixI6ag;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$azP7u96De3tfznQEJc7QlixI6ag;

    new-instance p2, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$6PqWaUlB9DXa79qp7Y7GTYjBpfI;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$6PqWaUlB9DXa79qp7Y7GTYjBpfI;-><init>(Lbike/smarthalo/app/controllers/DayLightController;)V

    .line 230
    invoke-virtual {p3, p4, p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->masterBrightnessSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setUpDelayedBrightnessUpdate(J)V
    .locals 2

    .line 240
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 241
    invoke-static {p1, p2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    const-wide/16 v0, 0x1

    .line 242
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$oTVGxRP4_exIzXrm54nAJ3ayslw;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DayLightController$oTVGxRP4_exIzXrm54nAJ3ayslw;-><init>(Lbike/smarthalo/app/controllers/DayLightController;)V

    .line 243
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->masterBrightnessSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateLightState()V
    .locals 4

    .line 247
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lastKnownLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightNightMode()Z

    move-result v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result v2

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$lightBrightness()I

    move-result v0

    iget-object v3, p0, Lbike/smarthalo/app/controllers/DayLightController;->lastKnownLocation:Landroid/location/Location;

    invoke-direct {p0, v1, v2, v0, v3}, Lbike/smarthalo/app/controllers/DayLightController;->updateLightState(ZZILandroid/location/Location;)V

    :cond_0
    return-void
.end method

.method private updateLightState(ZZILandroid/location/Location;)V
    .locals 7
    .param p4    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_5

    .line 258
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 260
    invoke-static {p4, p1}, Lbike/smarthalo/app/controllers/DayTimes;->buildDayTimes(Landroid/location/Location;Ljava/util/Date;)Lbike/smarthalo/app/controllers/DayTimes;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 265
    :cond_0
    iget-wide v0, p1, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    iget-object p4, p1, Lbike/smarthalo/app/controllers/DayTimes;->sunrise:Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 p4, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 267
    iget-object v0, p1, Lbike/smarthalo/app/controllers/DayTimes;->sunrise:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p1, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    iget-wide v0, p1, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    iget-object v2, p1, Lbike/smarthalo/app/controllers/DayTimes;->sunset:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 271
    iget-wide v0, p1, Lbike/smarthalo/app/controllers/DayTimes;->tomorrowSunRise:J

    iget-wide v2, p1, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 275
    iget-object v1, p1, Lbike/smarthalo/app/controllers/DayTimes;->sunset:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p1, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 278
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 282
    :cond_3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightTimer:Ljava/util/Timer;

    .line 283
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightTimer:Ljava/util/Timer;

    new-instance v2, Lbike/smarthalo/app/controllers/DayLightController$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/controllers/DayLightController$1;-><init>(Lbike/smarthalo/app/controllers/DayLightController;)V

    .line 288
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    .line 283
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    if-eqz p2, :cond_4

    .line 290
    sget-object p1, Lbike/smarthalo/sdk/commands/light/LightMode;->Blinking:Lbike/smarthalo/sdk/commands/light/LightMode;

    goto :goto_1

    :cond_4
    sget-object p1, Lbike/smarthalo/sdk/commands/light/LightMode;->Normal:Lbike/smarthalo/sdk/commands/light/LightMode;

    .line 292
    :goto_1
    iget-object p2, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-interface {p2, p1, p3, p4}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->updateFrontLightSetting(Lbike/smarthalo/sdk/commands/light/LightMode;IZ)V

    .line 293
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    sget-object p2, Lbike/smarthalo/app/analytics/light/LightIlluminationSource;->Auto:Lbike/smarthalo/app/analytics/light/LightIlluminationSource;

    invoke-interface {p1, v0, p2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->toggleFrontLight(ZLbike/smarthalo/app/analytics/light/LightIlluminationSource;)V

    :cond_5
    return-void
.end method

.method private updateMasterBrightness()V
    .locals 12

    .line 168
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DayLightController;->lastKnownLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 173
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lastKnownLocation:Landroid/location/Location;

    invoke-static {v1, v0}, Lbike/smarthalo/app/controllers/DayTimes;->buildDayTimes(Landroid/location/Location;Ljava/util/Date;)Lbike/smarthalo/app/controllers/DayTimes;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 178
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearMasterBrightnessSubscription()V

    .line 179
    iget-wide v1, v0, Lbike/smarthalo/app/controllers/DayTimes;->endOfDayLight:J

    iget-wide v3, v0, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfDayLight:J

    invoke-static {v1, v2, v3, v4}, Lbike/smarthalo/app/helpers/BrightnessHelper;->getClimbIncrement(JJ)J

    move-result-wide v10

    .line 181
    sget-object v1, Lbike/smarthalo/app/controllers/DayLightController$2;->$SwitchMap$bike$smarthalo$app$controllers$DayTimes$DayState:[I

    iget-object v2, v0, Lbike/smarthalo/app/controllers/DayTimes;->dayState:Lbike/smarthalo/app/controllers/DayTimes$DayState;

    invoke-virtual {v2}, Lbike/smarthalo/app/controllers/DayTimes$DayState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x28

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 197
    :pswitch_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-interface {v1, v2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->setMasterBrightness(I)V

    .line 198
    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/DayTimes;->getTomorrowDayLightInterval()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/controllers/DayLightController;->setUpDelayedBrightnessUpdate(J)V

    goto :goto_0

    .line 194
    :pswitch_1
    iget-wide v6, v0, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    iget-wide v8, v0, Lbike/smarthalo/app/controllers/DayTimes;->endOfMaximumDayLight:J

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lbike/smarthalo/app/controllers/DayLightController;->processLastQuarterOfDayLight(JJJ)V

    goto :goto_0

    .line 190
    :pswitch_2
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->setMasterBrightness(I)V

    .line 191
    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/DayTimes;->getEndOfMaximumDayLightInterval()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/controllers/DayLightController;->setUpDelayedBrightnessUpdate(J)V

    goto :goto_0

    .line 187
    :pswitch_3
    iget-wide v6, v0, Lbike/smarthalo/app/controllers/DayTimes;->now:J

    iget-wide v8, v0, Lbike/smarthalo/app/controllers/DayTimes;->beginningOfDayLight:J

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lbike/smarthalo/app/controllers/DayLightController;->processFirstQuarterOfDayLight(JJJ)V

    goto :goto_0

    .line 183
    :pswitch_4
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DayLightController;->lightsCommandControllerContract:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;

    invoke-interface {v1, v2}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/LightsCommandControllerContract;->setMasterBrightness(I)V

    .line 184
    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/DayTimes;->getBeforeDayLightInterval()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/controllers/DayLightController;->setUpDelayedBrightnessUpdate(J)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onDispose()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearConnectionStateSubscription()V

    .line 106
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->cleanUpSequence()V

    return-void
.end method

.method public onLightModeChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 92
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->updateLightState()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->clearLightTimer()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DayLightController;->observeConnectionState()V

    return-void
.end method
