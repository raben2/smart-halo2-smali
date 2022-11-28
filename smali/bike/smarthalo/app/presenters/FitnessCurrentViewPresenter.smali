.class public Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "FitnessCurrentViewPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$LatestRideCallback;
    }
.end annotation


# instance fields
.field private activeRideSubscription:Lio/reactivex/disposables/Disposable;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private currentUser:Lbike/smarthalo/app/models/SHUser;

.field fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private trackingStateSubscription:Lio/reactivex/disposables/Disposable;

.field userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getFitnessCloudManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/FitnessManagersComponent;->inject(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V

    .line 64
    iput-object p2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;

    .line 65
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    .line 66
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->setUpCentralServiceConnection()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 37
    iget-object p0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->startTrackingStateSubscription(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->clearTrackingStateSubscription()V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->clearActiveRideSubscription()V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$Presenter;
    .locals 1

    .line 70
    new-instance v0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;)V

    return-object v0
.end method

.method private clearActiveRideSubscription()V
    .locals 1

    .line 145
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->activeRideSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->activeRideSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearTrackingStateSubscription()V
    .locals 1

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method static synthetic lambda$startTrackingStateSubscription$0(Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Tracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$startTrackingStateSubscription$1(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->startTrackingSubscription()V

    goto :goto_0

    .line 116
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->clearActiveRideSubscription()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$startTrackingSubscription$2(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;Ljava/lang/Long;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getCurrentRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object p1

    iget-object v1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;->onActiveRideUpdated(Lbike/smarthalo/app/models/SHRide;Z)V

    .line 131
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;

    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getCurrentGoal()Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;->onGoalUpdated(Lbike/smarthalo/app/models/SHGoal;Z)V

    :cond_0
    return-void
.end method

.method private setUpCentralServiceConnection()V
    .locals 2

    .line 89
    new-instance v0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter$1;-><init>(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private startTrackingStateSubscription(Lio/reactivex/Flowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->clearTrackingStateSubscription()V

    .line 108
    sget-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$waZm8SLDRRAeNZvgCQ-9IjUbXF4;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$waZm8SLDRRAeNZvgCQ-9IjUbXF4;

    .line 110
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 111
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$3mXWxFPj8OvsSOmob_SB08HfI1I;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$3mXWxFPj8OvsSOmob_SB08HfI1I;-><init>(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V

    .line 112
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startTrackingSubscription()V
    .locals 3

    .line 122
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->clearActiveRideSubscription()V

    const-wide/16 v0, 0x3e8

    .line 125
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 126
    invoke-static {v0, v1, v2}, Lio/reactivex/Flowable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 127
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$WbVnYU7c60OVI4KPzOUXlsXQRPs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessCurrentViewPresenter$WbVnYU7c60OVI4KPzOUXlsXQRPs;-><init>(Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;)V

    .line 128
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->activeRideSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public addGoal(ID)Lbike/smarthalo/app/models/SHGoal;
    .locals 8

    .line 170
    new-instance v0, Lbike/smarthalo/app/models/SHGoal;

    invoke-direct {v0}, Lbike/smarthalo/app/models/SHGoal;-><init>()V

    .line 171
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$type(I)V

    .line 172
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$goal(Ljava/lang/Double;)V

    const-wide/16 p1, 0x0

    .line 174
    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    const/4 p3, 0x0

    .line 175
    invoke-virtual {v0, p3}, Lbike/smarthalo/app/models/SHGoal;->realmSet$nextProgress(I)V

    const/4 v1, 0x1

    .line 176
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isActive(Z)V

    .line 177
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$id(I)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$timestamp(Ljava/lang/Long;)V

    .line 179
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v2, p3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;

    move-result-object p3

    .line 181
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 185
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-nez v2, :cond_0

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 187
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr p1, v6

    long-to-double p1, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v6

    mul-double v4, v4, p1

    .line 188
    invoke-virtual {v0, v4, v5}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    .line 189
    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 192
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide p1

    mul-double p1, p1, v4

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    .line 193
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 195
    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 197
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide p1

    mul-double p1, p1, v4

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    .line 198
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    goto :goto_0

    .line 199
    :cond_3
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    .line 200
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$co2()D

    move-result-wide p1

    mul-double p1, p1, v4

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    .line 201
    invoke-virtual {p3}, Lbike/smarthalo/app/models/SHRide;->realmGet$co2()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    goto :goto_0

    .line 204
    :cond_4
    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    .line 207
    :cond_5
    :goto_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getIsConnected()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 208
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$hasShownIntroAnimation(Z)V

    .line 209
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 210
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->showSpeedometerIntroAnimation()V

    goto :goto_1

    .line 212
    :cond_6
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->showGoalIntroAnimation()V

    .line 215
    :cond_7
    :goto_1
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 216
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getSpeedometerEvent(D)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    goto :goto_2

    .line 218
    :cond_8
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p2

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getGoalSetEvent(ID)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 221
    :goto_2
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V

    .line 223
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz p1, :cond_9

    .line 224
    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->onGoalChanged()V

    :cond_9
    return-object v0
.end method

.method public deleteGoal()V
    .locals 4

    .line 242
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    .line 244
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v2, :cond_1

    .line 245
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 246
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->removeSpeedometerAnimation()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->removeGoalAnimation()V

    .line 252
    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isActive(Z)V

    const/4 v2, -0x1

    .line 253
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$type(I)V

    const-wide/16 v2, 0x0

    .line 254
    invoke-virtual {v0, v2, v3}, Lbike/smarthalo/app/models/SHGoal;->realmSet$progress(D)V

    .line 255
    invoke-virtual {v0, v2, v3}, Lbike/smarthalo/app/models/SHGoal;->realmSet$previousProgress(D)V

    .line 256
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$nextProgress(I)V

    .line 257
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$hasShownIntroAnimation(Z)V

    .line 259
    iget-object v1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V

    .line 261
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->onGoalChanged()V

    :cond_2
    return-void
.end method

.method public getCurrentGoalType()I
    .locals 2

    .line 268
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    return v0
.end method

.method public hasOngoingGoal()Z
    .locals 2

    .line 237
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isCompleted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSpeedGoalSupported()Z
    .locals 2

    .line 273
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsingMetric()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onViewPaused()V
    .locals 1

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 84
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->clearTrackingStateSubscription()V

    .line 85
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->clearActiveRideSubscription()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    return-void
.end method

.method public updateCurrentRide(Lbike/smarthalo/app/models/SHPastRide;)V
    .locals 4

    .line 153
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHPastRide;->asRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v0

    .line 160
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {p1, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getUserGoal(Z)Lbike/smarthalo/app/models/SHGoal;

    move-result-object p1

    .line 161
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v2

    iput-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    .line 162
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lbike/smarthalo/app/presenters/FitnessCurrentViewPresenter;->currentUser:Lbike/smarthalo/app/models/SHUser;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 162
    :cond_2
    invoke-interface {v2, v0, p1, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessCurrentViewContract$View;->updateGoalAndRide(Lbike/smarthalo/app/models/SHRide;Lbike/smarthalo/app/models/SHGoal;Z)V

    return-void
.end method
