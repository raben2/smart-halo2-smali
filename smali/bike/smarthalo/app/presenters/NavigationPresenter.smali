.class public Lbike/smarthalo/app/presenters/NavigationPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "NavigationPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;


# static fields
.field public static final ROUTES_FETCH_TIME_OUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "NavigationPresenter"


# instance fields
.field private appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private currentLocation:Landroid/location/Location;

.field private currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

.field private directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

.field private directionServiceDirection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

.field private favouritesSubscription:Lio/reactivex/disposables/Disposable;

.field private geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

.field private geocodingSubscription:Lio/reactivex/disposables/Disposable;

.field private hasBikeSubscription:Lio/reactivex/disposables/Disposable;

.field private isMetric:Z

.field private isViewReady:Z

.field private locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private locationSubscription:Lio/reactivex/disposables/Disposable;

.field private locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

.field private navigationSubscription:Lio/reactivex/disposables/Disposable;

.field private final onUnitOfMeasurementChanged:Landroid/content/BroadcastReceiver;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isViewReady:Z

    .line 209
    new-instance v0, Lbike/smarthalo/app/presenters/NavigationPresenter$3;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/NavigationPresenter$3;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->onUnitOfMeasurementChanged:Landroid/content/BroadcastReceiver;

    .line 87
    invoke-interface {p5}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isMetric:Z

    .line 92
    :cond_0
    iput-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    .line 94
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->buildLocationManager(Landroid/content/Context;)V

    .line 96
    iput-object p3, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    .line 97
    iput-object p4, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    .line 98
    iput-object p5, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 99
    iput-object p6, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 101
    new-instance p2, Lbike/smarthalo/app/presenters/NavigationPresenter$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/NavigationPresenter$1;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getDirectionServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p2

    iput-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionServiceDirection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    .line 120
    new-instance p2, Lbike/smarthalo/app/presenters/NavigationPresenter$2;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/NavigationPresenter$2;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
    .locals 0

    .line 47
    iget-object p0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;)Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
    .locals 0

    .line 47
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/models/PresentationNavigationState;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->processNewNavigationState(Lbike/smarthalo/app/models/PresentationNavigationState;Z)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/NavigationPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->observeNavigation(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/presenters/NavigationPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->observeHasBike(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$400(Lbike/smarthalo/app/presenters/NavigationPresenter;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isMetric:Z

    return p0
.end method

.method static synthetic access$402(Lbike/smarthalo/app/presenters/NavigationPresenter;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isMetric:Z

    return p1
.end method

.method static synthetic access$500(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 0

    .line 47
    iget-object p0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-object p0
.end method

.method static synthetic access$600(Lbike/smarthalo/app/presenters/NavigationPresenter;)Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;
    .locals 0

    .line 47
    iget-object p0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    return-object p0
.end method

.method private buildLocationManager(Landroid/content/Context;)V
    .locals 0

    .line 146
    :try_start_0
    invoke-static {p1}, Lbike/smarthalo/app/managers/SHLocationManager;->buildLocationManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
    :try_end_0
    .catch Lbike/smarthalo/app/managers/MissingLocationPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    :goto_0
    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;ZLbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$Presenter;
    .locals 7

    .line 141
    new-instance p1, Lbike/smarthalo/app/presenters/NavigationPresenter;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/presenters/NavigationPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;Lbike/smarthalo/app/coordinators/FavouritesController;Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;)V

    return-object p1
.end method

.method private cleanGeocodingSubscription()V
    .locals 1

    .line 530
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->geocodingSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->geocodingSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearFavouritesSubscription()V
    .locals 1

    .line 188
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->favouritesSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 189
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->favouritesSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearHasBikeSubscription()V
    .locals 1

    .line 195
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->hasBikeSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->hasBikeSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearLocationSubscription()V
    .locals 1

    .line 181
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearNavigationSubscription()V
    .locals 1

    .line 174
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->navigationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->navigationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private correctDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "\n"

    const-string v1, " "

    .line 242
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initializeDirectionsAndService(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 2

    .line 257
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onNavigationError()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 264
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentLocation:Landroid/location/Location;

    invoke-static {v0, v1, p2, p1}, Lbike/smarthalo/app/services/ServiceBinders/DirectionServiceStartHelper;->startServiceForNavigation(Landroid/content/Context;Landroid/location/Location;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;)V

    .line 270
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {p1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->getPresentationSource()Lio/reactivex/Flowable;

    move-result-object p1

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->observeNavigation(Lio/reactivex/Flowable;)V

    :cond_1
    return-void
.end method

.method private isFullRecoveryRequired(Lbike/smarthalo/app/models/PresentationNavigationState;)Z
    .locals 1

    .line 468
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-nez v0, :cond_0

    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Initial:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic lambda$observeCurrentLocation$4(Lbike/smarthalo/app/presenters/NavigationPresenter;Landroid/location/Location;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 394
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onFirstLocationReady(Landroid/location/Location;)V

    .line 396
    :cond_0
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentLocation:Landroid/location/Location;

    return-void
.end method

.method public static synthetic lambda$observeFavouritesUpdates$5(Lbike/smarthalo/app/presenters/NavigationPresenter;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1, p1, v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->getUpdatedDestinationType(Ljava/util/List;Lbike/smarthalo/app/models/SHLocation;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 412
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 414
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$type(I)V

    .line 415
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$type()I

    move-result v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->setDestinationType(I)V

    .line 420
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onFavouritesUpdated(Ljava/util/List;Lbike/smarthalo/app/models/SHLocation;)V

    return-void
.end method

.method public static synthetic lambda$observeHasBike$0(Lbike/smarthalo/app/presenters/NavigationPresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onFindMarkerVisibilityChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$observeNavigation$2(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 380
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->processNewNavigationState(Lbike/smarthalo/app/models/PresentationNavigationState;Z)V

    return-void
.end method

.method public static synthetic lambda$observeNavigation$3(Lbike/smarthalo/app/presenters/NavigationPresenter;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 383
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onNavigationError()V

    return-void
.end method

.method public static synthetic lambda$requestItinerary$1(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    invoke-direct {p0, p2, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onLocationInformationReceived(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    return-void
.end method

.method public static synthetic lambda$updateUserUnitsFromLocation$6(Lbike/smarthalo/app/presenters/NavigationPresenter;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHUser;->realmSet$distanceMetric(Ljava/lang/Boolean;)V

    .line 522
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 523
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, v1, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onUnitsChanged(Lbike/smarthalo/app/models/PresentationNavigationState;Z)V

    :cond_0
    return-void
.end method

.method private observeCurrentLocation(Lio/reactivex/Flowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationSubscription:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$VDbpodSHmHnaKFH8n_YztupK8Eg;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$VDbpodSHmHnaKFH8n_YztupK8Eg;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    .line 392
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private observeFavouritesUpdates()V
    .locals 4

    .line 402
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->favouritesSubscription:Lio/reactivex/disposables/Disposable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->favouritesController:Lbike/smarthalo/app/coordinators/FavouritesController;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lbike/smarthalo/app/coordinators/FavouritesController;->getFavouritesSource()Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 406
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 407
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$unrtWyRA6R7M1rSs1PC_I4T_ni8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$unrtWyRA6R7M1rSs1PC_I4T_ni8;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    .line 408
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->favouritesSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private observeHasBike(Lio/reactivex/Flowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearHasBikeSubscription()V

    .line 205
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$ETD_Gg4eYr1YCymv0LiN2CXeTgs;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$ETD_Gg4eYr1YCymv0LiN2CXeTgs;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    .line 206
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->hasBikeSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeNavigation(Lio/reactivex/Flowable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            ">;)V"
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearNavigationSubscription()V

    .line 378
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$CihHVCbuqiBuRQVdmV9bsIJcljI;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$CihHVCbuqiBuRQVdmV9bsIJcljI;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$bUHSwGEdhqZ7lHaR3_pyieilu68;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$bUHSwGEdhqZ7lHaR3_pyieilu68;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    .line 379
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->navigationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onFirstLocationReady(Landroid/location/Location;)V
    .locals 1

    .line 505
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$distanceMetric()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 507
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->updateUserUnitsFromLocation(Landroid/location/Location;)V

    .line 510
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onFirstLocationReady(Landroid/location/Location;)V

    return-void
.end method

.method private onLocationInformationReceived(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 2

    .line 246
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->isValidForNavigation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->initializeDirectionsAndService(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->hasValidLocationData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    const v1, 0x7f110351

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 250
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->initializeDirectionsAndService(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onNavigationError()V

    :goto_0
    return-void
.end method

.method private onNavigationError()V
    .locals 1

    const v0, 0x7f1102a3

    .line 495
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onNavigationError(I)V

    return-void
.end method

.method private onNavigationError(I)V
    .locals 1

    .line 499
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onError(I)V

    .line 501
    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->stopNavigation()V

    return-void
.end method

.method private processNewNavigationState(Lbike/smarthalo/app/models/PresentationNavigationState;Z)V
    .locals 2

    .line 427
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onResult()V

    .line 429
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->GPXError:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-ne v0, v1, :cond_0

    const p2, 0x7f110185

    .line 430
    invoke-direct {p0, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onNavigationError(I)V

    goto/16 :goto_0

    .line 431
    :cond_0
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->OfflineNotAtOrigin:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-ne v0, v1, :cond_1

    .line 432
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    invoke-interface {p2}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onOfflineNavigation()V

    goto/16 :goto_0

    .line 433
    :cond_1
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Error:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    if-ne v0, v1, :cond_2

    .line 434
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onNavigationError()V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 436
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->isFullRecoveryRequired(Lbike/smarthalo/app/models/PresentationNavigationState;)Z

    move-result p2

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->recoverNavigation(Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V

    goto :goto_0

    .line 437
    :cond_3
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->isFullRecoveryRequired(Lbike/smarthalo/app/models/PresentationNavigationState;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 438
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->recoverNavigation(Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V

    goto :goto_0

    .line 440
    :cond_4
    sget-object p2, Lbike/smarthalo/app/presenters/NavigationPresenter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current update type is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object p2, Lbike/smarthalo/app/presenters/NavigationPresenter$4;->$SwitchMap$bike$smarthalo$app$models$PresentationNavigationState$UpdateType:[I

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 459
    :pswitch_0
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-interface {p2, p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onDirectNavigation(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-interface {p2, p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onReroute(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    goto :goto_0

    .line 453
    :pswitch_2
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-interface {p2, p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onNewStep(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    goto :goto_0

    .line 450
    :pswitch_3
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-interface {p2, p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onFinish(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    goto :goto_0

    .line 447
    :pswitch_4
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    iget-boolean v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isMetric:Z

    invoke-interface {p2, p1, v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onNewLocation(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Z)V

    goto :goto_0

    .line 444
    :pswitch_5
    iget-object p2, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/NavigationPresenter;->updateViewOnNavigationInitialized(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    .line 464
    :goto_0
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private recoverNavigation(Lbike/smarthalo/app/models/PresentationNavigationState;ZLandroid/location/Location;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 473
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->destination:Lbike/smarthalo/app/models/SHLocation;

    if-nez v0, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    iget-boolean v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-nez v0, :cond_1

    .line 479
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->observeFavouritesUpdates()V

    :cond_1
    if-eqz p2, :cond_2

    .line 483
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    const/4 v0, 0x1

    invoke-interface {p2, p1, p3, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->recover(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Z)V

    goto :goto_0

    .line 485
    :cond_2
    iget-object p2, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->recover(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Z)V

    :goto_0
    return-void

    .line 474
    :cond_3
    :goto_1
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    const-string p2, "DESTINATION_NULL_ON_RECOVER"

    invoke-static {p1, p2}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateUserUnitsFromLocation(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 515
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->cleanGeocodingSubscription()V

    .line 516
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lbike/smarthalo/app/models/SHLocation;->buildSHLocation(Landroid/location/Location;Ljava/lang/Long;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;->isImperialCountry(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$q_LMdTMBQ4ZmQfri9uAjRAnuSOk;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$q_LMdTMBQ4ZmQfri9uAjRAnuSOk;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;)V

    .line 518
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->geocodingSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private updateViewOnNavigationInitialized(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V
    .locals 1

    .line 490
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->observeFavouritesUpdates()V

    .line 491
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    invoke-interface {v0, p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->initialize(Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method public chooseOfflineMode(Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->chooseOfflineMode(Z)V

    :cond_0
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 1

    .line 303
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getIsMetric()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isMetric:Z

    return v0
.end method

.method public getIsUserTester()Z
    .locals 1

    .line 348
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPresentationState()Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 1

    .line 298
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-object v0
.end method

.method public onViewPaused()V
    .locals 2

    .line 154
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionServiceDirection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 157
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 161
    :cond_0
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isViewReady:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->onUnitOfMeasurementChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearLocationSubscription()V

    .line 166
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearNavigationSubscription()V

    .line 167
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearFavouritesSubscription()V

    .line 168
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->cleanGeocodingSubscription()V

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isViewReady:Z

    return-void
.end method

.method public onViewReady()V
    .locals 4

    const/4 v0, 0x1

    .line 313
    iput-boolean v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->isViewReady:Z

    .line 315
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->buildLocationManager(Landroid/content/Context;)V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->subscribeToLocationUpdates()V

    .line 321
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionServiceDirection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 322
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 324
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->observeFavouritesUpdates()V

    .line 326
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->onUnitOfMeasurementChanged:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "bike.smarthalo.app.BROADCAST_UNIT_OF_MEASUREMENT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    const-class v0, Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHServiceHelper;->isServiceRunning(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->stopNavigation()V

    :cond_1
    return-void
.end method

.method public processSelectedGpxFile(Landroid/net/Uri;)V
    .locals 2

    .line 343
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentLocation:Landroid/location/Location;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/app/services/ServiceBinders/DirectionServiceStartHelper;->startServiceForGPXNavigation(Landroid/content/Context;Landroid/location/Location;Landroid/net/Uri;)V

    return-void
.end method

.method public requestItinerary(Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->getLastSelectedRouteType()Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object v0

    .line 229
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->isValidForNavigation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbike/smarthalo/app/presenters/NavigationPresenter;->correctDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->initializeDirectionsAndService(Lbike/smarthalo/app/models/SHLocation;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->hasValidLocationData()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->cleanGeocodingSubscription()V

    .line 234
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->geocodingManager:Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;

    invoke-interface {v1, p1}, Lbike/smarthalo/app/managers/contracts/GeocodingManagerContract;->getLocationInformation(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$eTH3ptq-T1ILveeo7h5CNmOL5bE;

    invoke-direct {v1, p0, v0}, Lbike/smarthalo/app/presenters/-$$Lambda$NavigationPresenter$eTH3ptq-T1ILveeo7h5CNmOL5bE;-><init>(Lbike/smarthalo/app/presenters/NavigationPresenter;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->geocodingSubscription:Lio/reactivex/disposables/Disposable;

    goto :goto_0

    .line 237
    :cond_2
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->onNavigationError()V

    :goto_0
    return-void
.end method

.method public setRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 1

    .line 336
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setLastSelectedRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    .line 337
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->selectedRouteType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 338
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->setRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    return-void
.end method

.method public startNavigation()V
    .locals 2

    .line 277
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentLocation:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->startNavigation(Landroid/location/Location;)V

    .line 281
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearFavouritesSubscription()V

    return-void
.end method

.method public stopNavigation()V
    .locals 2

    .line 286
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->directionService:Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;->stopNavigation()V

    .line 289
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearNavigationSubscription()V

    .line 290
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->clearFavouritesSubscription()V

    .line 292
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/NavigationContract$View;->onStopped(Z)V

    const/4 v0, 0x0

    .line 293
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->currentState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-void
.end method

.method public subscribeToLocationUpdates()V
    .locals 2

    .line 361
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->buildLocationManager(Landroid/content/Context;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_1

    .line 366
    iget-object v1, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 367
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->observeLocationUpdates()Lio/reactivex/Flowable;

    move-result-object v0

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/NavigationPresenter;->observeCurrentLocation(Lio/reactivex/Flowable;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NavigationPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showNoLocationToast(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
