.class public Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "FitnessPastViewPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;


# instance fields
.field private preparePastRidesSubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p2, p0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$Presenter;
    .locals 1

    .line 41
    new-instance v0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;)V

    return-object v0
.end method

.method private clearPastRideSubscription()V
    .locals 1

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->preparePastRidesSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->preparePastRidesSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic lambda$prepareRideDays$0(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lbike/smarthalo/app/models/SHPastRide;

    .line 53
    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/helpers/DateHelper;->getDateWithTruncatedHours(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 55
    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v2

    sget v3, Llayout/FitnessMainViewFragment;->MINIMUM_RIDE_DISTANCE:F

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasDeleteRequest()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/RideDay;

    if-nez v2, :cond_2

    .line 63
    new-instance v9, Lbike/smarthalo/app/models/RideDay;

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v4

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v5

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v6

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v7

    move-object v2, v9

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lbike/smarthalo/app/models/RideDay;-><init>(Ljava/util/Date;FFIFLbike/smarthalo/app/models/SHPastRide;)V

    .line 71
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v2}, Lbike/smarthalo/app/models/RideDay;->getDistance()F

    move-result v1

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lbike/smarthalo/app/models/RideDay;->setDistance(F)V

    .line 74
    invoke-virtual {v2}, Lbike/smarthalo/app/models/RideDay;->getCalories()F

    move-result v1

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$calories()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lbike/smarthalo/app/models/RideDay;->setCalories(F)V

    .line 75
    invoke-virtual {v2}, Lbike/smarthalo/app/models/RideDay;->getDuration()I

    move-result v1

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$duration()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lbike/smarthalo/app/models/RideDay;->setDuration(I)V

    .line 76
    invoke-virtual {v2}, Lbike/smarthalo/app/models/RideDay;->getCo2()F

    move-result v1

    invoke-virtual {v8}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$co2()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lbike/smarthalo/app/models/RideDay;->setCo2(F)V

    .line 77
    invoke-virtual {v2, v8}, Lbike/smarthalo/app/models/RideDay;->addPastRide(Lbike/smarthalo/app/models/SHPastRide;)V

    goto :goto_0

    .line 81
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object p0
.end method

.method public static synthetic lambda$prepareRideDays$1(Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;

    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->isUserMetric()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessPastViewContract$View;->preparePastRidesVisuals(Ljava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public isUserMetric()Z
    .locals 1

    .line 97
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onViewPaused()V
    .locals 0

    .line 103
    invoke-super {p0}, Lbike/smarthalo/app/presenters/BasePresenter;->onViewPaused()V

    .line 104
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->clearPastRideSubscription()V

    return-void
.end method

.method public prepareRideDays(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->clearPastRideSubscription()V

    .line 48
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$vwDLsJOkDTNpDmEUNEAAS4Q88Cs;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$vwDLsJOkDTNpDmEUNEAAS4Q88Cs;-><init>(Ljava/util/List;)V

    .line 49
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    .line 85
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 86
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$BHzx35DryyQMzoT98OxEUJxrHyA;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessPastViewPresenter$BHzx35DryyQMzoT98OxEUJxrHyA;-><init>(Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;)V

    .line 87
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->preparePastRidesSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public showDailyRides(Lbike/smarthalo/app/models/RideDay;Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lbike/smarthalo/app/activities/DailyRidesActivity;->createIntent(Landroid/content/Context;Lbike/smarthalo/app/models/RideDay;Z)Landroid/content/Intent;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lbike/smarthalo/app/presenters/FitnessPastViewPresenter;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
