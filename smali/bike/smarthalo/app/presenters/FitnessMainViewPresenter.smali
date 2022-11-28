.class public Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "FitnessMainViewPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "FitnessMainViewPresenter"


# instance fields
.field private appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

.field private fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

.field private pastRideSubscription:Lio/reactivex/disposables/Disposable;

.field private reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private rideUpdatesSubscription:Lio/reactivex/disposables/Disposable;

.field private settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

.field private trackingStateSubscription:Lio/reactivex/disposables/Disposable;

.field private unitsSubscription:Lio/reactivex/disposables/Disposable;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p2, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;

    .line 71
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->setUpCentralServiceConnection()V

    .line 72
    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->buildManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 73
    iput-object p3, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 74
    iput-object p4, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 75
    iput-object p5, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    .line 76
    iput-object p6, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 77
    iput-object p7, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 42
    iget-object p0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 42
    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->startTrackingStateSubscription(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearTrackingStateSubscription()V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$Presenter;
    .locals 9

    .line 88
    new-instance v8, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    return-object v8
.end method

.method private clearPastRideSubscription()V
    .locals 1

    .line 249
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->pastRideSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->pastRideSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearRideUpdatesSubscription()V
    .locals 1

    .line 256
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->rideUpdatesSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 258
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->rideUpdatesSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearTrackingStateSubscription()V
    .locals 1

    .line 235
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearUnitsSubscription()V
    .locals 1

    .line 242
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->unitsSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 244
    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->unitsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getPastRides()V
    .locals 3

    .line 164
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "HAS_DOWNLOADED_PAST_RIDES"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 166
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearPastRideSubscription()V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    .line 170
    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getPastRidesAsync()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$EVRM9V8HSCnhVFotbt-sbcCBLKM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$EVRM9V8HSCnhVFotbt-sbcCBLKM;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    .line 171
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->pastRideSubscription:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearPastRideSubscription()V

    .line 179
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearRideUpdatesSubscription()V

    .line 180
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->fitnessCloudManager:Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;

    .line 181
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/IFitnessCloudManager;->updateCloudAndLocalRides()Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$Y5aKMAxbahpA6PnvIb977oKEJno;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$Y5aKMAxbahpA6PnvIb977oKEJno;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$HgkOjnp6ABfMbkRbb3ngjZg5uNg;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$HgkOjnp6ABfMbkRbb3ngjZg5uNg;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    .line 182
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->pastRideSubscription:Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getPastRides$1(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->getAllRides()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lbike/smarthalo/app/models/PresentationModels/LocalPastRidesResponse;->getLatestValidRide()Lbike/smarthalo/app/models/SHPastRide;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;->givePastRidesToChildView(Ljava/util/List;Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public static synthetic lambda$getPastRides$2(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->observeNewPastRidesAndPendingRides()V

    .line 185
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/app/models/SHPastRide;

    :goto_0
    invoke-interface {v0, p1, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;->givePastRidesToChildView(Ljava/util/List;Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public static synthetic lambda$getPastRides$3(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->observeNewPastRidesAndPendingRides()V

    .line 190
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;->givePastRidesToChildView(Ljava/util/List;Lbike/smarthalo/app/models/SHPastRide;)V

    return-void
.end method

.method public static synthetic lambda$observeNewPastRidesAndPendingRides$8(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Lbike/smarthalo/app/models/Ping;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->getPastRides()V

    .line 230
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;->onFetchingNewRides()V

    return-void
.end method

.method static synthetic lambda$observeUnitsChanged$4(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    invoke-virtual {p0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$observeUnitsChanged$5(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->getPastRides()V

    return-void
.end method

.method static synthetic lambda$startTrackingStateSubscription$6(Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
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

.method public static synthetic lambda$startTrackingStateSubscription$7(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;->setCurrentTabTitle(Z)V

    return-void
.end method

.method public static synthetic lambda$toggleFitness$0(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->onFitnessTrackingToggledOff()V

    return-void
.end method

.method private observeNewPastRidesAndPendingRides()V
    .locals 2

    .line 220
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearRideUpdatesSubscription()V

    .line 223
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 225
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->observePendingRidesUpdates()Lio/reactivex/Flowable;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 226
    invoke-interface {v1}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->observePastRidesUpdates()Lio/reactivex/Flowable;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Lio/reactivex/Flowable;->merge(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$MPMKFG0cY99FMrrvFvZGjgDsotA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$MPMKFG0cY99FMrrvFvZGjgDsotA;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    .line 228
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->rideUpdatesSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeUnitsChanged()V
    .locals 3

    .line 196
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveUser()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearUnitsSubscription()V

    const-wide/16 v1, 0x1

    .line 203
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->skip(J)Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$ESZoG9jn76oqnp5ClrSv794OYCc;

    .line 204
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$15mgkPJRIJfJLKoUF63dj3mAVPU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$15mgkPJRIJfJLKoUF63dj3mAVPU;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    .line 205
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->unitsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private setUpCentralServiceConnection()V
    .locals 2

    .line 124
    new-instance v0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter$1;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

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

    .line 210
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearTrackingStateSubscription()V

    .line 212
    sget-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$i-z7bODJd5wDKJlBoX13vOzd8r8;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$i-z7bODJd5wDKJlBoX13vOzd8r8;

    .line 214
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 215
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$Rg8JR9BsUCaI2VrKXrmN1MlmqR0;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$Rg8JR9BsUCaI2VrKXrmN1MlmqR0;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    .line 216
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public dontRemindFitnessPrompt()Z
    .locals 3

    .line 119
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "DONT_REMIND_FITNESS_OFF"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setBooleanItem(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public getIsFitnessOn()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAutoTracking()Z

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
    .locals 1

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 156
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onDispose()V

    .line 157
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearTrackingStateSubscription()V

    .line 158
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearPastRideSubscription()V

    .line 159
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearRideUpdatesSubscription()V

    .line 160
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->clearUnitsSubscription()V

    return-void
.end method

.method public onViewResumed()V
    .locals 4

    .line 142
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 143
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->onStart()V

    .line 144
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->observeNewPastRidesAndPendingRides()V

    .line 145
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->observeUnitsChanged()V

    .line 147
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getCurrentRide(Z)Lbike/smarthalo/app/models/SHRide;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHRide;->realmGet$isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v2, v1}, Lbike/smarthalo/app/presenters/presenterContracts/FitnessMainViewContract$View;->setCurrentTabTitle(Z)V

    .line 150
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->getPastRides()V

    return-void
.end method

.method public shouldPromptUserOnFitnessOff()Z
    .locals 4

    .line 107
    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->settingsStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/SettingsStorageContract;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v3, "DONT_REMIND_FITNESS_OFF"

    invoke-interface {v2, v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    sget-object v3, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v3, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAutoTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toggleFitness(Z)V
    .locals 3

    const-string v0, "isAutoTracking"

    .line 98
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->updateSetting(Ljava/lang/String;Z)V

    .line 100
    iget-object p1, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz p1, :cond_0

    .line 101
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$AVvpVWIB_HhaQTgSqGU59ioT6Cw;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$FitnessMainViewPresenter$AVvpVWIB_HhaQTgSqGU59ioT6Cw;-><init>(Lbike/smarthalo/app/presenters/FitnessMainViewPresenter;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
