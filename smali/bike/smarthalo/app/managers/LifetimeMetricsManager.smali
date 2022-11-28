.class public Lbike/smarthalo/app/managers/LifetimeMetricsManager;
.super Ljava/lang/Object;
.source "LifetimeMetricsManager.java"

# interfaces
.implements Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;


# instance fields
.field fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/managers/LifetimeMetricsManager;)V

    return-void
.end method

.method public static buildManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/LifetimeMetricsManagerContract;
    .locals 1

    .line 31
    new-instance v0, Lbike/smarthalo/app/managers/LifetimeMetricsManager;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/managers/LifetimeMetricsManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private calculateLifetimeMetrics(Ljava/util/List;)Lbike/smarthalo/app/models/LifetimeMetrics;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)",
            "Lbike/smarthalo/app/models/LifetimeMetrics;"
        }
    .end annotation

    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/app/models/SHPastRide;

    .line 62
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v5

    sget v8, Llayout/FitnessMainViewFragment;->MINIMUM_RIDE_DISTANCE:F

    cmpg-float v5, v5, v8

    if-ltz v5, :cond_6

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasDeleteRequest()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v5

    add-int/2addr v4, v5

    .line 69
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v5

    if-ge v6, v5, :cond_2

    .line 70
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v5

    move v6, v5

    .line 72
    :cond_2
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v5

    add-float/2addr v7, v5

    .line 73
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v5

    cmpg-float v5, v9, v5

    if-gez v5, :cond_3

    .line 74
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v5

    move v9, v5

    .line 76
    :cond_3
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$elevation()F

    move-result v5

    add-float/2addr v11, v5

    .line 77
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$elevation()F

    move-result v5

    cmpg-float v5, v13, v5

    if-gez v5, :cond_4

    .line 78
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$elevation()F

    move-result v5

    move v13, v5

    :cond_4
    int-to-float v5, v14

    .line 80
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v8

    add-float/2addr v5, v8

    float-to-int v14, v5

    int-to-float v5, v15

    .line 81
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_5

    .line 82
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v5

    float-to-int v5, v5

    move v15, v5

    .line 84
    :cond_5
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v5

    add-float v17, v17, v5

    int-to-float v5, v12

    .line 85
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_0

    .line 86
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v3

    float-to-int v3, v3

    move v12, v3

    goto :goto_0

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 92
    div-int v1, v4, v0

    int-to-float v1, v1

    move v5, v1

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    :goto_2
    if-eqz v0, :cond_9

    int-to-float v1, v0

    div-float v1, v7, v1

    move v8, v1

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    :goto_3
    if-eqz v0, :cond_a

    int-to-float v1, v0

    div-float v1, v11, v1

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    if-eqz v0, :cond_b

    .line 95
    div-int v3, v14, v0

    int-to-float v3, v3

    move/from16 v16, v3

    goto :goto_5

    :cond_b
    const/16 v16, 0x0

    :goto_5
    if-eqz v0, :cond_c

    int-to-float v2, v0

    div-float v2, v17, v2

    move/from16 v18, v2

    goto :goto_6

    :cond_c
    const/16 v18, 0x0

    .line 97
    :goto_6
    invoke-static {v7, v4}, Lbike/smarthalo/app/helpers/SHConversionHelper;->getAverageSpeed(FI)F

    move-result v10

    .line 99
    new-instance v2, Lbike/smarthalo/app/models/LifetimeMetrics;

    move-object v3, v2

    move/from16 v19, v12

    move v12, v1

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v1

    move/from16 v20, v0

    invoke-direct/range {v3 .. v20}, Lbike/smarthalo/app/models/LifetimeMetrics;-><init>(IFIFFFFFFFIFIFFII)V

    return-object v2
.end method

.method public static synthetic lambda$getLifetimeMetrics$0(Lbike/smarthalo/app/managers/LifetimeMetricsManager;Ljava/util/List;)Lbike/smarthalo/app/models/LifetimeMetrics;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1}, Lbike/smarthalo/app/managers/LifetimeMetricsManager;->calculateLifetimeMetrics(Ljava/util/List;)Lbike/smarthalo/app/models/LifetimeMetrics;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getLifetimeMetrics(Ljava/util/List;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/LifetimeMetrics;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lbike/smarthalo/app/managers/-$$Lambda$LifetimeMetricsManager$DiOXI8hIlSxaSKxw369zbhfOxio;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/managers/-$$Lambda$LifetimeMetricsManager$DiOXI8hIlSxaSKxw369zbhfOxio;-><init>(Lbike/smarthalo/app/managers/LifetimeMetricsManager;Ljava/util/List;)V

    .line 36
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    .line 37
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 38
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
