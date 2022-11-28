.class public Lbike/smarthalo/app/presenters/DailyRidesPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "DailyRidesPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private disposable:Lio/reactivex/disposables/CompositeDisposable;

.field fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

.field private fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

.field private individualRides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;"
        }
    .end annotation
.end field

.field private jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private rideDay:Lbike/smarthalo/app/models/RideDay;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Lbike/smarthalo/app/models/RideDay;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p3, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;

    .line 67
    iput-object p4, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 68
    iput-object p5, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->rideDay:Lbike/smarthalo/app/models/RideDay;

    .line 69
    iput-object p6, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 70
    iput-object p2, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 71
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 72
    iput-object p8, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    .line 73
    iput-object p7, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 74
    iput-object p9, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 75
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Lbike/smarthalo/app/models/RideDay;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$Presenter;
    .locals 11

    .line 88
    new-instance v10, Lbike/smarthalo/app/presenters/DailyRidesPresenter;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Lbike/smarthalo/app/models/RideDay;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/services/JobServiceCreator;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v10
.end method

.method public static synthetic lambda$observePastRideUpdates$2(Lbike/smarthalo/app/presenters/DailyRidesPresenter;Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->refreshRides()V

    return-void
.end method

.method public static synthetic lambda$observePastRideUpdates$3(Lbike/smarthalo/app/presenters/DailyRidesPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->refreshRides()V

    return-void
.end method

.method public static synthetic lambda$observeRideUploaded$0(Lbike/smarthalo/app/presenters/DailyRidesPresenter;Lbike/smarthalo/app/models/Ping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->refreshRides()V

    return-void
.end method

.method public static synthetic lambda$observeRideUploaded$1(Lbike/smarthalo/app/presenters/DailyRidesPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->refreshRides()V

    return-void
.end method

.method public static synthetic lambda$refreshViewOnDeleteRides$4(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->individualRides:Ljava/util/List;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;->showDailyRides(Ljava/util/List;)V

    return-void
.end method

.method private observePastRideUpdates(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->observePastRideUpdate(Lbike/smarthalo/app/models/SHPastRide;)Lio/reactivex/Flowable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 151
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    const-wide/16 v1, 0x3e8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 153
    invoke-virtual {p1, v1, v2, v3}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 154
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$taknU70cQtPg7WqwbKYqRSkHHCw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$taknU70cQtPg7WqwbKYqRSkHHCw;-><init>(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$Eq7Dx23mXONhYtYzdYjgUPst8xI;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$Eq7Dx23mXONhYtYzdYjgUPst8xI;-><init>(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V

    .line 155
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 151
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private observeRideUploaded(Lbike/smarthalo/app/models/SHRide;)V
    .locals 3

    .line 134
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->observeRideDeleted(Lbike/smarthalo/app/models/SHRide;)Lio/reactivex/Single;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 139
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$ZP-UyjtC6u29qYH7pyvRB5vWh_8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$ZP-UyjtC6u29qYH7pyvRB5vWh_8;-><init>(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$KazHZNQWrGu65jXcrRRD9CB-yXI;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$KazHZNQWrGu65jXcrRRD9CB-yXI;-><init>(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V

    .line 140
    invoke-virtual {p1, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_0
    return-void
.end method

.method private refreshRides()V
    .locals 5

    .line 107
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->rideDay:Lbike/smarthalo/app/models/RideDay;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/RideDay;->getPastRides()Ljava/util/ArrayList;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHPastRide;

    .line 114
    iget-object v3, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasDeleteRequest()Z

    move-result v4

    if-nez v4, :cond_1

    .line 116
    invoke-direct {p0, v3}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->observePastRideUpdates(Lbike/smarthalo/app/models/SHPastRide;)V

    .line 117
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getRideByStamp(Ljava/lang/Long;)Lbike/smarthalo/app/models/SHRide;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    invoke-direct {p0, v2}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->observeRideUploaded(Lbike/smarthalo/app/models/SHRide;)V

    .line 122
    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHRide;->asPastRide()Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_2
    iput-object v1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->individualRides:Ljava/util/List;

    .line 129
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;->showDailyRides(Ljava/util/List;)V

    return-void
.end method

.method private refreshViewOnDeleteRides(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->individualRides:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 235
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->context:Landroid/content/Context;

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$Eb51ryaX9wTm4e85Xy-T_uqJS-o;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$DailyRidesPresenter$Eb51ryaX9wTm4e85Xy-T_uqJS-o;-><init>(Lbike/smarthalo/app/presenters/DailyRidesPresenter;)V

    const-wide/16 v1, 0x1f4

    invoke-static {p1, v1, v2, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    .line 237
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->individualRides:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 238
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/DailyRidesContract$View;->onAllRidesDeleted()V

    :cond_0
    return-void
.end method

.method private uploadToStrava(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getRideByStamp(Ljava/lang/Long;)Lbike/smarthalo/app/models/SHRide;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {p1, v1}, Lbike/smarthalo/app/models/SHRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 210
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateRide(Lbike/smarthalo/app/models/SHRide;)V

    .line 211
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    invoke-virtual {p1, v1}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$hasStravaUploadRequest()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHPastRide;->hasStravaIntegration()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-virtual {p1, v1}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasStravaUploadRequest(Z)V

    .line 217
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    .line 219
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public canUploadToStrava()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getStravaLinkedAccount()Lbike/smarthalo/app/models/StravaLinkedAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public deleteRides(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbike/smarthalo/app/models/SHPastRide;

    .line 167
    iget-object v3, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$stamp()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getPastRideByStamp(Ljava/lang/String;)Lbike/smarthalo/app/models/SHPastRide;

    move-result-object v3

    if-nez v3, :cond_0

    .line 170
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v3, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getTripDeletedEvent(D)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v4

    invoke-interface {v3, v4}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 172
    iget-object v3, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v3, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->deleteRideAssociatedWithPastRide(Lbike/smarthalo/app/models/SHPastRide;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 177
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->refreshViewOnDeleteRides(Ljava/util/List;)V

    return-void

    .line 181
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 186
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHPastRide;

    const/4 v2, 0x1

    .line 187
    invoke-virtual {v1, v2}, Lbike/smarthalo/app/models/SHPastRide;->realmSet$hasDeleteRequest(Z)V

    .line 188
    iget-object v2, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHPastRide;->realmGet$distance()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getTripDeletedEvent(D)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 189
    iget-object v2, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v2, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateLocalRide(Lbike/smarthalo/app/models/SHPastRide;)V

    goto :goto_1

    .line 192
    :cond_3
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->refreshViewOnDeleteRides(Ljava/util/List;)V

    .line 193
    iget-object p1, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(I)V

    return-void
.end method

.method public onViewDestroyed()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 103
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onViewStarted()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 93
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->refreshRides()V

    return-void
.end method

.method public onViewStopped()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public uploadToStrava(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/SHPastRide;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->canUploadToStrava()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbike/smarthalo/app/models/SHPastRide;

    .line 227
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/DailyRidesPresenter;->uploadToStrava(Lbike/smarthalo/app/models/SHPastRide;)V

    goto :goto_0

    :cond_0
    return-void
.end method
