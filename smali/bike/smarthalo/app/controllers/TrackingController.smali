.class public Lbike/smarthalo/app/controllers/TrackingController;
.super Ljava/lang/Object;
.source "TrackingController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;


# static fields
.field public static final MAX_ACCURACY_FOR_MAX_SPEED:F = 20.0f

.field public static final MAX_TRACKING_ACCURACY:F = 30.0f

.field private static final TAG:Ljava/lang/String; = "TrackingController"


# instance fields
.field private age:I

.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private context:Landroid/content/Context;

.field private currentRide:Lbike/smarthalo/app/models/SHRide;

.field private fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

.field private fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

.field private fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

.field private goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

.field private goalProgressSubscription:Lio/reactivex/disposables/Disposable;

.field private height:I

.field private isMale:Z

.field private localStorageTimer:Ljava/util/Timer;

.field private locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

.field private locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

.field private mass:I

.field private navigationStateContract:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

.field private rideStopMinSpeed:F

.field private rideStopMinTime:I

.field private rideTimeStamp:Ljava/lang/Long;

.field private uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideStopMinSpeed:F

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideStopMinTime:I

    .line 65
    new-instance v0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    .line 116
    iput-object p3, p0, Lbike/smarthalo/app/controllers/TrackingController;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    .line 117
    iput-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    .line 118
    iput-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->context:Landroid/content/Context;

    .line 119
    iput-object p4, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 120
    iput-object p5, p0, Lbike/smarthalo/app/controllers/TrackingController;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 121
    iput-object p6, p0, Lbike/smarthalo/app/controllers/TrackingController;->navigationStateContract:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    .line 122
    iput-object p7, p0, Lbike/smarthalo/app/controllers/TrackingController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 123
    iput-object p8, p0, Lbike/smarthalo/app/controllers/TrackingController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 124
    iput-object p9, p0, Lbike/smarthalo/app/controllers/TrackingController;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    .line 125
    iput-object p10, p0, Lbike/smarthalo/app/controllers/TrackingController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/controllers/TrackingController;)Lbike/smarthalo/app/models/SHRide;
    .locals 0

    .line 48
    iget-object p0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    return-object p0
.end method

.method static synthetic access$100(Lbike/smarthalo/app/controllers/TrackingController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .locals 0

    .line 48
    iget-object p0, p0, Lbike/smarthalo/app/controllers/TrackingController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-object p0
.end method

.method private addPreTrackingLocations(Ljava/util/ArrayList;Lbike/smarthalo/app/models/SHRide;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;",
            "Lbike/smarthalo/app/models/SHRide;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lbike/smarthalo/app/models/SHLocation;->buildSHLocation(Landroid/location/Location;Ljava/lang/Long;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static buildTrackingProvider(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;
    .locals 12

    .line 92
    new-instance v11, Lbike/smarthalo/app/controllers/TrackingController;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lbike/smarthalo/app/controllers/TrackingController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v11
.end method

.method private clearGoalProgressSubscription()V
    .locals 1

    .line 161
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearLocationUpdates()V
    .locals 2

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method private clearSubscriptions()V
    .locals 1

    .line 304
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingController;->clearLocationUpdates()V

    .line 305
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingController;->clearGoalProgressSubscription()V

    .line 307
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->localStorageTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 309
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->localStorageTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private endOfRideSequence(Z)V
    .locals 9

    .line 278
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingController;->clearSubscriptions()V

    .line 283
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$isActive(Z)V

    if-nez p1, :cond_2

    .line 286
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingController;->getUserData()V

    .line 287
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    iget v3, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideStopMinTime:I

    iget v4, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideStopMinSpeed:F

    iget-boolean v5, p0, Lbike/smarthalo/app/controllers/TrackingController;->isMale:Z

    iget v6, p0, Lbike/smarthalo/app/controllers/TrackingController;->mass:I

    iget v7, p0, Lbike/smarthalo/app/controllers/TrackingController;->height:I

    iget v8, p0, Lbike/smarthalo/app/controllers/TrackingController;->age:I

    invoke-static/range {v2 .. v8}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->processEndOfRide(Lbike/smarthalo/app/models/SHRide;IFZIII)Lbike/smarthalo/app/models/fitness/TrimmedRideData;

    move-result-object p1

    .line 289
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Lbike/smarthalo/app/models/StravaLinkedAccount;->realmGet$isAutoUploadOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 294
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-interface {v0, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    .line 295
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;->onRideFinished(Lbike/smarthalo/app/models/fitness/TrimmedRideData;)V

    .line 296
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v2

    invoke-static {v2, v3}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getTripCompletedEvent(D)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 299
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private getUserData()V
    .locals 5

    .line 213
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$gender()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iput-boolean v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->isMale:Z

    .line 219
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$height()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getHeightInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->isMale:Z

    if-eqz v1, :cond_4

    const/16 v1, 0xb0

    goto :goto_1

    :cond_4
    const/16 v1, 0xa2

    :goto_1
    iput v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->height:I

    .line 220
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$weight()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getWeightInt()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->isMale:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x55

    goto :goto_2

    :cond_6
    const/16 v1, 0x4b

    :goto_2
    iput v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->mass:I

    .line 222
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    const/16 v0, 0x19

    .line 223
    iput v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->age:I

    goto :goto_3

    .line 225
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 227
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$dateOfBirth()Ljava/util/Date;

    move-result-object v0

    .line 228
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 229
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-double v0, v1

    const-wide v2, 0x4076d40000000000L    # 365.25

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    .line 231
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->age:I

    :goto_3
    return-void
.end method

.method public static synthetic lambda$Gcyd2YWi6ijyHGLgJmiVTrQ6DOA(Lbike/smarthalo/app/controllers/TrackingController;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/TrackingController;->onNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic lambda$setUpLocationUpdates$0(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "TrackingController"

    const-string v1, "Error occurred while fetching location updates"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private onNewLocation(Landroid/location/Location;)V
    .locals 3

    const-string v0, "TrackingController"

    const-string v1, "Received new location"

    .line 168
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/TrackingController;->stopSession()V

    return-void

    .line 175
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lbike/smarthalo/app/models/SHLocation;->buildSHLocation(Landroid/location/Location;Ljava/lang/Long;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$accuracy()F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 181
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/realm/RealmList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_1
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/TrackingController;->updateRideData(Z)V

    return-void
.end method

.method private setUpLocalStorageUpdater()V
    .locals 7

    .line 319
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->localStorageTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->localStorageTimer:Ljava/util/Timer;

    .line 324
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->localStorageTimer:Ljava/util/Timer;

    .line 325
    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->localStorageTimer:Ljava/util/Timer;

    new-instance v2, Lbike/smarthalo/app/controllers/TrackingController$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/controllers/TrackingController$1;-><init>(Lbike/smarthalo/app/controllers/TrackingController;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x7530

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private setUpLocationUpdates()V
    .locals 3

    .line 137
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationManagerContract:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 139
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->observeLocationUpdates()Lio/reactivex/Flowable;

    move-result-object v0

    .line 140
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$Gcyd2YWi6ijyHGLgJmiVTrQ6DOA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$Gcyd2YWi6ijyHGLgJmiVTrQ6DOA;-><init>(Lbike/smarthalo/app/controllers/TrackingController;)V

    sget-object v2, Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$TrackingController$gey5-L4tR-AUx4I3oOlwn04iFHA;

    .line 141
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private updateRideData(Z)V
    .locals 9

    .line 189
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/RealmList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHLocation;

    .line 192
    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/16 v5, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v4

    float-to-double v7, v4

    invoke-virtual {v3, v7, v8}, Lbike/smarthalo/app/models/SHRide;->realmSet$avgSpeed(D)V

    .line 194
    iget-object v3, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$speed()F

    move-result v2

    float-to-double v7, v2

    invoke-virtual {v3, v7, v8}, Lbike/smarthalo/app/models/SHRide;->realmSet$maxSpeed(D)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, v5, v6}, Lbike/smarthalo/app/models/SHRide;->realmSet$avgSpeed(D)V

    .line 197
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, v5, v6}, Lbike/smarthalo/app/models/SHRide;->realmSet$maxSpeed(D)V

    .line 199
    :goto_0
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, v5, v6}, Lbike/smarthalo/app/models/SHRide;->realmSet$traveledDistance(D)V

    .line 200
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2, v5, v6}, Lbike/smarthalo/app/models/SHRide;->realmSet$burntCalories(D)V

    :cond_1
    if-le v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 203
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object p1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lbike/smarthalo/app/models/SHLocation;

    .line 204
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$goodLocations()Lio/realm/RealmList;

    move-result-object p1

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1, v0}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lbike/smarthalo/app/models/SHLocation;

    .line 206
    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    iget-boolean v5, p0, Lbike/smarthalo/app/controllers/TrackingController;->isMale:Z

    iget v6, p0, Lbike/smarthalo/app/controllers/TrackingController;->mass:I

    iget v7, p0, Lbike/smarthalo/app/controllers/TrackingController;->height:I

    iget v8, p0, Lbike/smarthalo/app/controllers/TrackingController;->age:I

    invoke-static/range {v2 .. v8}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->processRideMetrics(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/SHLocation;ZIII)V

    .line 207
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->goalController:Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;->updateGoalMetrics(Lbike/smarthalo/app/models/SHRide;)V

    .line 209
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v0

    iget-object v2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHRide;->realmGet$locations()Lio/realm/RealmList;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/RealmList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lio/realm/RealmList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$timestamp()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$endTime(J)V

    return-void
.end method


# virtual methods
.method public getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 243
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrentRide()Lbike/smarthalo/app/models/SHRide;
    .locals 1

    .line 237
    iget-object v0, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    return-object v0
.end method

.method public onDispose(Z)V
    .locals 0

    .line 315
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/TrackingController;->endOfRideSequence(Z)V

    return-void
.end method

.method public startSession(Ljava/util/ArrayList;JFI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/location/Location;",
            ">;JFI)V"
        }
    .end annotation

    const-string v0, "TrackingController"

    const-string v1, "Start fitness tracking session"

    .line 248
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideTimeStamp:Ljava/lang/Long;

    .line 251
    new-instance p2, Lbike/smarthalo/app/models/SHRide;

    invoke-direct {p2}, Lbike/smarthalo/app/models/SHRide;-><init>()V

    iput-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    .line 252
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    iget-object p3, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideTimeStamp:Ljava/lang/Long;

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/models/SHRide;->realmSet$timestamp(Ljava/lang/Long;)V

    .line 253
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    iget-object p3, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideTimeStamp:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$endTime(J)V

    .line 254
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    new-instance p3, Lio/realm/RealmList;

    invoke-direct {p3}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/models/SHRide;->realmSet$locations(Lio/realm/RealmList;)V

    .line 255
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    new-instance p3, Lio/realm/RealmList;

    invoke-direct {p3}, Lio/realm/RealmList;-><init>()V

    invoke-virtual {p2, p3}, Lbike/smarthalo/app/models/SHRide;->realmSet$goodLocations(Lio/realm/RealmList;)V

    .line 257
    iput p4, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideStopMinSpeed:F

    .line 258
    iput p5, p0, Lbike/smarthalo/app/controllers/TrackingController;->rideStopMinTime:I

    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 261
    iget-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/controllers/TrackingController;->addPreTrackingLocations(Ljava/util/ArrayList;Lbike/smarthalo/app/models/SHRide;)V

    .line 264
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object p2, p0, Lbike/smarthalo/app/controllers/TrackingController;->currentRide:Lbike/smarthalo/app/models/SHRide;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    .line 265
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingController;->setUpLocalStorageUpdater()V

    .line 267
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingController;->getUserData()V

    .line 268
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/TrackingController;->setUpLocationUpdates()V

    .line 269
    iget-object p1, p0, Lbike/smarthalo/app/controllers/TrackingController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string p2, "FitnessTrip_Started"

    invoke-interface {p1, p2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public stopSession()V
    .locals 1

    const/4 v0, 0x0

    .line 274
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/TrackingController;->endOfRideSequence(Z)V

    return-void
.end method
