.class public Lbike/smarthalo/app/navigation/SHDirectionService;
.super Landroid/app/Service;
.source "SHDirectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;
    }
.end annotation


# static fields
.field public static final DIRECTION_SERVICE_ALIVE_INTENT:Ljava/lang/String; = "DIRECTION_SERVICE_ALIVE_INTENT"

.field private static final MILLISECONDS_BEFORE_RESET_BREATHING_LIGHT:I = 0xea60

.field private static final ON_COMPLETE_STOP_SELF_TIMEOUT:I = 0x1b7740

.field private static final SECONDS_BEFORE_RETRY_DATA_CONNECTION:I = 0xa

.field public static final START_NAVIGATION_ACTION:Ljava/lang/String; = "START_NAVIGATION_ACTION"

.field public static final TAG:Ljava/lang/String; = "SHDirectionService"

.field private static final mId:I = 0xb


# instance fields
.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private breathingLightTimer:Ljava/util/Timer;

.field private centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

.field private currentLocation:Landroid/location/Location;

.field private destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

.field private directionsCloudManager:Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;

.field geocodingManager:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private gpxReadSubscription:Lio/reactivex/disposables/Disposable;

.field private initializationSubscription:Lio/reactivex/disposables/Disposable;

.field private introAnimationsController:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

.field keyManager:Lbike/smarthalo/app/managers/KeyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

.field private locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

.field private final mBinder:Landroid/os/IBinder;

.field navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

.field private polylines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;"
        }
    .end annotation
.end field

.field private presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

.field private presentationStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            ">;"
        }
    .end annotation
.end field

.field private rawResponses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rerouteTimer:Ljava/util/Timer;

.field private routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 140
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 101
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Recommended:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 105
    new-instance v0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    .line 107
    new-instance v0, Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {v0}, Lbike/smarthalo/app/models/PresentationNavigationState;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-direct {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    .line 133
    new-instance v0, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService$LocalBinder;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/navigation/SHDirectionService$1;)V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->setRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    return-void
.end method

.method static synthetic access$1000(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializePresentationState(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V

    return-void
.end method

.method static synthetic access$1100(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareNewRoute(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    return-void
.end method

.method static synthetic access$1300(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;
    .locals 0

    .line 86
    iget-object p0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    return-object p0
.end method

.method static synthetic access$1400(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->completeReroute(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteUser()V

    return-void
.end method

.method static synthetic access$1600(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavCommandOnSmartHalo()V

    return-void
.end method

.method static synthetic access$1700(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method static synthetic access$1800(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendErrorAnimation()V

    return-void
.end method

.method static synthetic access$1900(Lbike/smarthalo/app/navigation/SHDirectionService;J)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelfAndCleanUpDelayed(J)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->setNewNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V

    return-void
.end method

.method static synthetic access$2000(Lbike/smarthalo/app/navigation/SHDirectionService;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareAlternativeRoutes(I)V

    return-void
.end method

.method static synthetic access$2100(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->onFindStepsError()V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/navigation/SHDirectionService;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 86
    iget-object p0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationStateSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method static synthetic access$400(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 0

    .line 86
    iget-object p0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-object p0
.end method

.method static synthetic access$402(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationNavigationState;)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 0

    .line 86
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-object p1
.end method

.method static synthetic access$500(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/location/Location;Z)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->onNavigationStart(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$600(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/SHLocation;
    .locals 0

    .line 86
    iget-object p0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    return-object p0
.end method

.method static synthetic access$700(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelfAndCleanup()V

    return-void
.end method

.method static synthetic access$800(Lbike/smarthalo/app/navigation/SHDirectionService;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lbike/smarthalo/app/navigation/SHDirectionService;)Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
    .locals 0

    .line 86
    iget-object p0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-object p0
.end method

.method private centralalServiceAvailable()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    return v0
.end method

.method private checkForArrival(Landroid/location/Location;)V
    .locals 1

    .line 465
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->hasArrivedAtDestination(Landroid/location/Location;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isComplete()Z

    move-result p1

    if-nez p1, :cond_0

    .line 466
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->onNavigationCompleted()V

    :cond_0
    return-void
.end method

.method private cleanUpLocationSubscription()V
    .locals 1

    .line 358
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 359
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private cleanUpLocationUpdates()V
    .locals 2

    .line 350
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 351
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->disconnectFromLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 354
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->cleanUpLocationSubscription()V

    return-void
.end method

.method private cleanUpNavigation(ZZ)V
    .locals 1

    if-eqz p2, :cond_2

    .line 984
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {p2}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 985
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {p2}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->toggleNavBreathing(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 989
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavCommandOnSmartHalo()V

    :cond_1
    const/4 p1, 0x1

    .line 991
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopForeground(Z)V

    .line 994
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->breathingLightTimer:Ljava/util/Timer;

    if-eqz p1, :cond_3

    .line 995
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    const/4 p1, 0x0

    .line 996
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->breathingLightTimer:Ljava/util/Timer;

    .line 999
    :cond_3
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->clearRerouteTimer()V

    .line 1001
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->cleanUpLocationUpdates()V

    .line 1002
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->dispose()V

    return-void
.end method

.method private clearGpxReadSubscription()V
    .locals 1

    .line 1242
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->gpxReadSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 1243
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1244
    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->gpxReadSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearPresentationStateSubscription()V
    .locals 1

    .line 1235
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->initializationSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 1236
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1237
    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->initializationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearRerouteTimer()V
    .locals 1

    .line 654
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 656
    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private completeReroute(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;)V
    .locals 0

    .line 638
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->clearRerouteTimer()V

    return-void

    .line 643
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 645
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->clearRerouteTimer()V

    .line 649
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavCommandOnSmartHalo()V

    .line 650
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->recalculatePresentationState(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method private guideToDestination()V
    .locals 7

    .line 922
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigating(Z)V

    .line 927
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    const-string v1, "guideToDestination - NavigationService"

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 930
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->breathingLightTimer:Ljava/util/Timer;

    .line 932
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->breathingLightTimer:Ljava/util/Timer;

    new-instance v2, Lbike/smarthalo/app/navigation/SHDirectionService$4;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/navigation/SHDirectionService$4;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0xea60

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 940
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->introAnimationsController:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->showIntroAnimation(Ljava/lang/String;)V

    .line 943
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->setUpLocationUpdates()V

    .line 944
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->startForegroundLocal()V

    return-void
.end method

.method private initializeGuidanceSystem(Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 1

    .line 319
    new-instance v0, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-direct {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    .line 320
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V

    return-void
.end method

.method private initializeNavigationMode(Landroid/content/Intent;)Lbike/smarthalo/navigation/models/NavigationMode;
    .locals 3

    .line 305
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    .line 306
    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    const-string v2, "EXTRA_GPX_FILE_PATH"

    .line 308
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 309
    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_2

    .line 311
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationCompassMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    goto :goto_0

    :cond_1
    sget-object p1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    :goto_0
    move-object v1, p1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private initializePresentationState(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/navigation/models/SHPolyline;",
            ">;",
            "Lbike/smarthalo/navigation/models/NavigationMode;",
            "Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;",
            "I)V"
        }
    .end annotation

    .line 1208
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->clearPresentationStateSubscription()V

    .line 1210
    new-instance v6, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_D7_xYZ-vLP4m7ffhUxXR4RIS_g;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V

    .line 1211
    invoke-static {v6}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    .line 1212
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    .line 1213
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$QVRkya0pdTqcaJMj_3MiLNKPS_E;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$QVRkya0pdTqcaJMj_3MiLNKPS_E;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 1214
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->initializationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private initializeRouteType(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "EXTRA_ROUTE_TYPE"

    .line 297
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EXTRA_ROUTE_TYPE"

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    goto :goto_0

    .line 300
    :cond_0
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getLastSelectedRouteType()Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    :goto_0
    return-void
.end method

.method public static synthetic lambda$KjbIMKauuZsIcrnaorWw2sp2tuM(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->onNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic lambda$_pox4Jw7aN8UscRoM-ULeTQfo4E(Lbike/smarthalo/app/navigation/SHDirectionService;)V
    .locals 0

    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelfAndCleanup()V

    return-void
.end method

.method public static synthetic lambda$initializePresentationState$7(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)Lbike/smarthalo/app/models/PresentationNavigationState;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1211
    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    iget-object v4, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->initialize(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;I)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$initializePresentationState$8(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1215
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 1216
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method public static synthetic lambda$loadGPXPath$2(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/net/Uri;)Lbike/smarthalo/app/models/SHLocation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1010
    invoke-static {p1, p0}, Lbike/smarthalo/app/helpers/SHFileHelper;->loadFileAsString(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    .line 1015
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializeGuidanceSystem(Lbike/smarthalo/navigation/models/NavigationMode;)V

    .line 1019
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1021
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    invoke-virtual {v0, v1, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->createGuidanceSystemOfflineTurnByTurn(Landroid/location/Location;Ljava/lang/String;)V

    .line 1026
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolyline()Lbike/smarthalo/navigation/models/SHPolyline;

    move-result-object p1

    .line 1028
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lbike/smarthalo/app/helpers/SHPolylineHelper;->populatePolylineLatLngs(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/List;)V

    .line 1030
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getClosestStepIndexToUser()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1031
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->onOfflineNotAtOrigin()V

    .line 1034
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v0, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V

    .line 1035
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setOffThePath(Z)V

    .line 1037
    iget-object v0, p1, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    iget-object p1, p1, Lbike/smarthalo/navigation/models/SHPolyline;->latLngs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/models/SHLatLng;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLatLng;->getSHLocation()Lbike/smarthalo/app/models/SHLocation;

    move-result-object p1

    return-object p1

    .line 1012
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    throw p1
.end method

.method public static synthetic lambda$loadGPXPath$3(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/SingleSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1039
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->geocodingManager:Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/managers/cloudManagers/GeocodingManager;->getLocationInformation(Lbike/smarthalo/app/models/SHLocation;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$loadGPXPath$4(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1041
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->reportGpxError()V

    return-void
.end method

.method public static synthetic lambda$loadGPXPath$5(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1044
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f110351

    .line 1045
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/models/SHLocation;->realmSet$title(Ljava/lang/String;)V

    .line 1047
    :cond_0
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    .line 1048
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializePresentationState(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V

    return-void
.end method

.method public static synthetic lambda$loadGPXPath$6(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1050
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->reportGpxError()V

    return-void
.end method

.method public static synthetic lambda$o4TiChkKarR3dXZn_506Er5btAo(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->onNavigationError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$onDirectNavigationStart$1(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 838
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->cleanUpLocationSubscription()V

    .line 839
    invoke-direct {p0, p2, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->onLocationReadyForDirectNavigation(Landroid/location/Location;Lbike/smarthalo/navigation/models/NavigationMode;)V

    return-void
.end method

.method public static synthetic lambda$setUpLocationUpdates$0(Lbike/smarthalo/app/navigation/SHDirectionService;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 402
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/analytics/DebugAnalyticsHelper;->sendInvalidValhallaDirectionEvent(Landroid/content/Context;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)V

    .line 405
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->onNavigationError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private loadGPXPath(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1006
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->clearGpxReadSubscription()V

    .line 1008
    new-instance v0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$k8FQkUmjV6Xni4SSVlisVVdsbtA;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$k8FQkUmjV6Xni4SSVlisVVdsbtA;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;Landroid/net/Uri;)V

    .line 1009
    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$NyrI2kgiT-ywRkRMvPLL6IMvIc8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$NyrI2kgiT-ywRkRMvPLL6IMvIc8;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 1039
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 1040
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$Z1SGKgwBRtzvFaRb61PCmH7VWBM;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$Z1SGKgwBRtzvFaRb61PCmH7VWBM;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 1041
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnError(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$YBh3em08YF7D5pv-annYo4rtKM8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$YBh3em08YF7D5pv-annYo4rtKM8;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    new-instance v1, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$6O64iqEbF4frBb1plmT3_pGXrVM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$6O64iqEbF4frBb1plmT3_pGXrVM;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 1042
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->gpxReadSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private onDirectNavigationStart(Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 4

    .line 829
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_0

    .line 831
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 832
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 833
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->observeLocationUpdates()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 834
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 835
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$jp_b56kvkUKbW9BQPrSwk0DyouE;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$jp_b56kvkUKbW9BQPrSwk0DyouE;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;)V

    new-instance p1, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$o4TiChkKarR3dXZn_506Er5btAo;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$o4TiChkKarR3dXZn_506Er5btAo;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 836
    invoke-virtual {v0, v1, p1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private onFindStepsError()V
    .locals 2

    .line 1157
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Error:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 1158
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method private onLocationReadyForDirectNavigation(Landroid/location/Location;Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 2

    .line 854
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    .line 856
    invoke-direct {p0, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializeGuidanceSystem(Lbike/smarthalo/navigation/models/NavigationMode;)V

    .line 858
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    invoke-virtual {p2}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 870
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareDirectTurnByTurnNavigation(Landroid/location/Location;Lbike/smarthalo/navigation/models/NavigationMode;)V

    goto :goto_0

    .line 864
    :cond_0
    :pswitch_0
    invoke-direct {p0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareAsTheCrowFliesPath(Z)V

    .line 865
    invoke-direct {p0, p1, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->onNavigationStart(Landroid/location/Location;Z)V

    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onNavigationCompleted()V
    .locals 4

    .line 471
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setComplete(Z)V

    .line 472
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v0, v1, :cond_0

    .line 473
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavCommandOnSmartHalo()V

    .line 476
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-object v0, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->pastLocations:Ljava/util/List;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->getSHLatLng()Lbike/smarthalo/app/models/SHLatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    .line 478
    sget-object v2, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->ArrivedAtDestination:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v2, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 479
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 481
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->onDestinationReached(Ljava/lang/String;)V

    :cond_1
    const-wide/32 v2, 0x1b7740

    .line 486
    new-instance v0, Lbike/smarthalo/app/navigation/-$$Lambda$qnWPQ3Nb8vUc3B_fCtn2BowIH-8;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$qnWPQ3Nb8vUc3B_fCtn2BowIH-8;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    invoke-static {p0, v2, v3, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    .line 488
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->cleanUpNavigation(ZZ)V

    .line 490
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/PresentationNavigationState;->getTotalDistance()I

    move-result v1

    invoke-static {v1}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getNavigationCompleteEvent(I)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    return-void
.end method

.method private onNavigationError(Ljava/lang/Throwable;)V
    .locals 2

    .line 847
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 848
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavCommandOnSmartHalo()V

    .line 849
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendErrorAnimation()V

    const-wide/16 v0, 0x7d0

    .line 850
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelfAndCleanUpDelayed(J)V

    return-void
.end method

.method private onNavigationStart(Landroid/location/Location;Z)V
    .locals 5

    .line 902
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    .line 904
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 905
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->getValue()I

    move-result v0

    .line 906
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->createGuidanceSystemTurnByTurn(Landroid/location/Location;Landroid/location/Location;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 910
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v1

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-static {v1, v3}, Lbike/smarthalo/app/analytics/navigation/AnalyticsNavigation;->getNavigationTripStartedEvent(Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    if-nez p2, :cond_2

    .line 913
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    move-result-object p2

    .line 914
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-static {v0, v1, v2, p1, p2}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->prepareNavigationStateOnStart(Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;ZLandroid/location/Location;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 915
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 918
    :cond_2
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->guideToDestination()V

    return-void
.end method

.method private onNewLocation(Landroid/location/Location;)V
    .locals 7

    .line 410
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->updateState(Landroid/location/Location;)V

    .line 413
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getDisplayStatus()Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getSoundStatus()Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    move-result-object v2

    .line 416
    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 418
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-object v6, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    .line 422
    invoke-virtual {v6}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isOffThePath()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v0, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 417
    :goto_0
    invoke-static {v3, v5, p1, v1, v6}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->updateOnNewLocation(Landroid/content/Context;Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Z)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v3

    iput-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 423
    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, v3}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 426
    :cond_1
    iget-object v3, v1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->typesToRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    .line 427
    sget-object v6, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    invoke-virtual {v5}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v4, :cond_2

    .line 432
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavCommandOnSmartHalo()V

    goto :goto_1

    .line 429
    :cond_2
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavPointerOnSmartHalo()V

    goto :goto_1

    .line 436
    :cond_3
    sget-object v3, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    invoke-virtual {v0}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    .line 451
    invoke-direct {p0, v1, v2, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->processStepByStepResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V

    goto :goto_2

    .line 444
    :pswitch_0
    sget-object v3, Lbike/smarthalo/navigation/models/NavigationMode;->TurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-direct {p0, v1, v2, v3}, Lbike/smarthalo/app/navigation/SHDirectionService;->processStepByStepResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V

    .line 445
    invoke-direct {p0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->processGPSCompassModeResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)V

    goto :goto_2

    .line 448
    :pswitch_1
    invoke-direct {p0, v1, v2, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->processOfflineTurnByTurnResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V

    goto :goto_2

    .line 438
    :pswitch_2
    invoke-direct {p0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->processCompassModeResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)V

    goto :goto_2

    .line 441
    :cond_4
    invoke-direct {p0, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->processGPSCompassModeResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)V

    .line 454
    :goto_2
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    sget-object v2, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->NONE:Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;

    invoke-virtual {v1, v2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setSoundStatus(Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;)V

    .line 455
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    .line 459
    sget-object v1, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->hasReachedOfflineModeOrigin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    :cond_5
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->checkForArrival(Landroid/location/Location;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onOfflineNotAtOrigin()V
    .locals 2

    .line 1055
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->OfflineNotAtOrigin:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 1056
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method private prepareAlternativeRoutes(I)V
    .locals 10

    packed-switch p1, :pswitch_data_0

    return-void

    .line 1116
    :pswitch_0
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Flattest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 1117
    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getMapzenRouteCostingOption(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    .line 1112
    :pswitch_1
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Fastest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 1113
    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getMapzenRouteCostingOption(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    move-result-object v1

    move-object v6, v1

    goto :goto_0

    .line 1108
    :pswitch_2
    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->Safest:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 1109
    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getMapzenRouteCostingOption(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    move-result-object v1

    move-object v6, v1

    .line 1123
    :goto_0
    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->directionsCloudManager:Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    iget-object v4, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    const-string v5, ""

    new-instance v7, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;

    invoke-direct {v7}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;-><init>()V

    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lbike/smarthalo/app/navigation/SHDirectionService$6;

    invoke-direct {v9, p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService$6;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V

    invoke-virtual/range {v2 .. v9}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->findValhallaStepsToLocation(Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;Ljava/lang/String;Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)V

    add-int/lit8 p1, p1, 0x1

    .line 1140
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareAlternativeRoutes(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareAsTheCrowFliesPath(Z)V
    .locals 7

    .line 1162
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    if-eqz v1, :cond_2

    .line 1164
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 1166
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v1

    .line 1168
    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    iget-object v4, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v4}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v4

    float-to-double v5, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->createGuidanceSystemAsTheCrowFlies(Landroid/location/Location;Landroid/location/Location;D)V

    .line 1169
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setCurrentStep(I)V

    .line 1171
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    sget-object v3, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    invoke-virtual {v0, v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V

    .line 1172
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigating(Z)V

    .line 1174
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1176
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getPolyline()Lbike/smarthalo/navigation/models/SHPolyline;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHPolylineHelper;->populatePolylineLatLngs(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/List;)V

    if-eqz p1, :cond_0

    .line 1181
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    .line 1183
    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    .line 1181
    invoke-static {p1, v0, v1, v2, v3}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->initializeOnDirectNavigation(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 1187
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    goto :goto_0

    .line 1188
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1189
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->recalculatePresentationState(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/PresentationNavigationState;)V

    goto :goto_0

    .line 1191
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-direct {p0, p1, v0, v1, v2}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializePresentationState(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V

    goto :goto_0

    .line 1195
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    sget-object v0, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->Error:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v0, p1, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 1196
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    :goto_0
    return-void
.end method

.method private prepareDestinationPath()V
    .locals 9

    .line 1065
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConnectivityHelper;->isDataAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 1070
    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getMapzenRouteCostingOption(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    invoke-direct {v0}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;-><init>()V

    :goto_0
    move-object v5, v0

    .line 1073
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->directionsCloudManager:Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    const-string v4, ""

    new-instance v6, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;

    invoke-direct {v6}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;-><init>()V

    new-instance v8, Lbike/smarthalo/app/navigation/SHDirectionService$5;

    invoke-direct {v8, p0}, Lbike/smarthalo/app/navigation/SHDirectionService$5;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->findValhallaStepsToLocation(Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;Ljava/lang/String;Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)V

    goto :goto_1

    .line 1098
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->onFindStepsError()V

    :goto_1
    return-void
.end method

.method private prepareDirectTurnByTurnNavigation(Landroid/location/Location;Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 9

    .line 876
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getMapzenRouteCostingOption(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    move-result-object v5

    .line 877
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->directionsCloudManager:Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    const-string v4, ""

    new-instance v6, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;

    invoke-direct {v6}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;-><init>()V

    new-instance v8, Lbike/smarthalo/app/navigation/SHDirectionService$3;

    invoke-direct {v8, p0, p2, p1}, Lbike/smarthalo/app/navigation/SHDirectionService$3;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;)V

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->findValhallaStepsToLocation(Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;Ljava/lang/String;Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)V

    return-void
.end method

.method private prepareNavigationOnStart(Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 326
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializeGuidanceSystem(Lbike/smarthalo/navigation/models/NavigationMode;)V

    .line 328
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    .line 329
    sget-object p2, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    invoke-virtual {p1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 340
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareDestinationPath()V

    goto :goto_0

    :cond_0
    :pswitch_0
    const/4 p1, 0x0

    .line 332
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareAsTheCrowFliesPath(Z)V

    :cond_1
    :goto_0
    :pswitch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareNewRoute(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/lang/String;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 1

    .line 1145
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rawResponses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    invoke-virtual {p3}, Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;->getValue()I

    move-result p2

    iput p2, p1, Lbike/smarthalo/navigation/models/SHPolyline;->routeType:I

    .line 1147
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lbike/smarthalo/app/helpers/SHPolylineHelper;->populatePolylineLatLngs(Lbike/smarthalo/navigation/models/SHPolyline;Ljava/util/List;)V

    .line 1149
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object p1

    .line 1151
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 1152
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    iget-object p3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, p3, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializePresentationState(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/NavigationMode;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;I)V

    :cond_0
    return-void
.end method

.method private processCompassModeResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)V
    .locals 1

    .line 494
    iget v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    iget p1, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->bearing:I

    invoke-direct {p0, v0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendCompassCommandToSmartHalo(II)V

    return-void
.end method

.method private processGPSCompassModeResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)V
    .locals 4

    .line 499
    iget-object v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->deviceInstruction:Ljava/lang/String;

    .line 502
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->convertStepInstruction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 507
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget v2, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lbike/smarthalo/app/models/PresentationNavigationState;->currentProgress:Ljava/lang/Integer;

    .line 508
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentBearing()I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->asTheCrowFliesBearing()I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 526
    :cond_1
    iget p1, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    .line 527
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v1

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x32

    .line 526
    invoke-direct {p0, p1, v1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendStandByPointerAnimation(IILjava/lang/String;)V

    goto :goto_2

    .line 509
    :cond_2
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v1

    sget-object v2, Lbike/smarthalo/navigation/models/NavigationMode;->AsTheCrowFliesGPS:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq v1, v2, :cond_3

    .line 510
    new-instance v1, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>()V

    const/16 v2, 0x1e

    .line 511
    iput v2, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    const/16 v2, 0xff

    .line 512
    iput v2, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    .line 513
    iput v2, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    .line 514
    iget v2, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->bearing:I

    iget v3, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    invoke-direct {p0, v1, v2, v3, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendPointerCommandToSmartHalo(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_3
    iget v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    iget v1, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->bearing:I

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    .line 521
    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x32

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-direct {p0, v0, v1, v2, v3}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendPointerCommandToSmartHalo(IIILjava/lang/String;)V

    .line 524
    :goto_1
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget p1, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->bearing:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->currentBearing:Ljava/lang/Integer;

    :goto_2
    return-void
.end method

.method private processOfflineTurnByTurnResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 3

    .line 536
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-static {p0, v0, v1, v2}, Lbike/smarthalo/app/helpers/DirectionHelper;->createOfflineTurnByTurnPresentationState(Landroid/content/Context;Lbike/smarthalo/app/models/PresentationNavigationState;Landroid/location/Location;Lbike/smarthalo/navigation/wrapper/NavigationWrapper;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    .line 537
    iget-object v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OffPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-ne v0, v1, :cond_0

    .line 538
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->processGPSCompassModeResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;)V

    goto :goto_0

    .line 540
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lbike/smarthalo/app/navigation/SHDirectionService;->processStepByStepResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V

    :goto_0
    return-void
.end method

.method private processStepByStepResults(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 6

    .line 548
    iget-boolean v1, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->isStepAnimationNow:Z

    if-eqz v1, :cond_0

    .line 549
    sget-object v1, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceDisplayStatus$AnimationType:[I

    iget-object v2, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->currentType:Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;

    invoke-virtual {v2}, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus$AnimationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 572
    :pswitch_0
    sget-object v1, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v2, Lbike/smarthalo/navigation/models/StepType;->UTURN:Lbike/smarthalo/navigation/models/StepType;

    iget v3, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    iget v4, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    iget-object v5, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->description:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendNavCommandToSmartHalo(Lbike/smarthalo/navigation/models/TransportationMode;Lbike/smarthalo/navigation/models/StepType;IILjava/lang/String;)V

    goto :goto_0

    .line 569
    :pswitch_1
    sget-object v1, Lbike/smarthalo/navigation/models/TransportationMode;->CYCLING:Lbike/smarthalo/navigation/models/TransportationMode;

    sget-object v2, Lbike/smarthalo/navigation/models/StepType;->DESTINATION:Lbike/smarthalo/navigation/models/StepType;

    iget v3, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    iget v4, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendNavCommandToSmartHalo(Lbike/smarthalo/navigation/models/TransportationMode;Lbike/smarthalo/navigation/models/StepType;IILjava/lang/String;)V

    goto :goto_0

    .line 560
    :pswitch_2
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 561
    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v2, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepAngles(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 562
    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v3, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTypeInt(I)I

    move-result v1

    .line 563
    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isTurnStarted()Z

    move-result v3

    invoke-direct {p0, v2, p1, v3, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendEnteredRoundaboutCommandToSmartHalo(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;ZI)V

    goto :goto_0

    .line 554
    :pswitch_3
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getCurrentStepIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 555
    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v2, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepAngles(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 556
    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v3, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getStepTypeInt(I)I

    move-result v1

    .line 557
    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v3}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isTurnStarted()Z

    move-result v3

    invoke-direct {p0, v2, p1, v3, v1}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendEnteringRoundaboutCommandToSmartHalo(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;ZI)V

    goto :goto_0

    .line 551
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendNavAngleCommandToSmartHalo(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V

    goto :goto_0

    .line 566
    :pswitch_5
    iget v1, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    iget v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->bearing:I

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v2}, Lbike/smarthalo/app/models/SHLocation;->getLocation()Landroid/location/Location;

    move-result-object v2

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    invoke-virtual {v2, v3}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v2

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x32

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHLocation;->realmGet$title()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendPointerCommandToSmartHalo(IIILjava/lang/String;)V

    .line 576
    :goto_0
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$SHGuidanceSoundStatus:[I

    invoke-virtual {p2}, Lbike/smarthalo/navigation/models/SHGuidanceSoundStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 589
    :pswitch_6
    sget-object v0, Lbike/smarthalo/app/models/SHSounds;->info_sound:[B

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendSoundToSmartHalo([B)V

    goto :goto_1

    .line 586
    :pswitch_7
    sget-object v0, Lbike/smarthalo/app/models/SHSounds;->destination_sound:[B

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendSoundToSmartHalo([B)V

    goto :goto_1

    .line 583
    :pswitch_8
    sget-object v0, Lbike/smarthalo/app/models/SHSounds;->turn_now_sound:[B

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendSoundToSmartHalo([B)V

    goto :goto_1

    .line 580
    :pswitch_9
    sget-object v0, Lbike/smarthalo/app/models/SHSounds;->progress_sound:[B

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendSoundToSmartHalo([B)V

    .line 593
    :cond_0
    :goto_1
    :pswitch_a
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isOffThePath()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-eq p3, v0, :cond_1

    .line 594
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->processTurnByTurnOffThePath()V

    .line 597
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->onNavigationCompleted()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private processTurnByTurnOffThePath()V
    .locals 7

    .line 661
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 662
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteTimer:Ljava/util/Timer;

    const/16 v0, 0x2710

    .line 664
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteTimer:Ljava/util/Timer;

    new-instance v2, Lbike/smarthalo/app/navigation/SHDirectionService$2;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/navigation/SHDirectionService$2;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    int-to-long v5, v0

    move-wide v3, v5

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 670
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendRerouteCommandToSmartHalo()V

    .line 671
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    invoke-virtual {v0, v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->processTurnByTurnOffThePath(Landroid/location/Location;)V

    .line 672
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    const-string v1, "Entering rerouteUser"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteUser()V

    :cond_0
    return-void
.end method

.method private recalculatePresentationState(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 6

    .line 1223
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->polylines:Ljava/util/ArrayList;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    .line 1227
    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v3

    iget-object v4, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    iget-object v5, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    move-object v1, p2

    move-object v2, p1

    .line 1223
    invoke-static/range {v0 .. v5}, Lbike/smarthalo/app/navigation/PresentationNavigationStateFactory;->recalculateState(Ljava/util/ArrayList;Lbike/smarthalo/app/models/PresentationNavigationState;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)Lbike/smarthalo/app/models/PresentationNavigationState;

    move-result-object p1

    .line 1230
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    .line 1231
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    return-void
.end method

.method private reportGpxError()V
    .locals 2

    .line 1060
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    sget-object v1, Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;->GPXError:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    iput-object v1, v0, Lbike/smarthalo/app/models/PresentationNavigationState;->updateType:Lbike/smarthalo/app/models/PresentationNavigationState$UpdateType;

    .line 1061
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationState:Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-direct {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method

.method private rerouteUser()V
    .locals 9

    .line 603
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHConnectivityHelper;->isDataAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v0, :cond_1

    .line 608
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->getCurrentHeading()Ljava/lang/Integer;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    .line 610
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "NavigationTrip_Rerouted"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getMapzenRouteCostingOption(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;

    move-result-object v5

    .line 613
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->directionsCloudManager:Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    iget-object v3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    new-instance v6, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;

    invoke-direct {v6}, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;-><init>()V

    new-instance v8, Lbike/smarthalo/app/navigation/SHDirectionService$1;

    invoke-direct {v8, p0}, Lbike/smarthalo/app/navigation/SHDirectionService$1;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;->findValhallaStepsToLocation(Lbike/smarthalo/app/models/SHLocation;Landroid/location/Location;Ljava/lang/String;Lbike/smarthalo/app/api/valhalla/gets/ValhallaBicycleCostingOptions;Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;Landroid/content/Context;Lbike/smarthalo/app/api/RequestCallback;)V

    :cond_1
    return-void
.end method

.method private sendCompassCommandToSmartHalo(II)V
    .locals 1

    .line 733
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_compass(II)V

    :cond_0
    return-void
.end method

.method private sendEnteredRoundaboutCommandToSmartHalo(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;",
            "ZI)V"
        }
    .end annotation

    .line 766
    iget-object v5, p2, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutExitStreetName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendRoundaboutCommandToSmartHalo(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;ZILjava/lang/String;I)V

    return-void
.end method

.method private sendEnteringRoundaboutCommandToSmartHalo(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;",
            "ZI)V"
        }
    .end annotation

    .line 762
    iget-object v5, p2, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->roundaboutExitStreetName:Ljava/lang/String;

    iget v6, p2, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendRoundaboutCommandToSmartHalo(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;ZILjava/lang/String;I)V

    return-void
.end method

.method private sendErrorAnimation()V
    .locals 1

    .line 756
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->playErrorAnimation()V

    :cond_0
    return-void
.end method

.method private sendNavAngleCommandToSmartHalo(Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 10

    .line 777
    iget-object v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    iget-object v0, v0, Lbike/smarthalo/navigation/models/NavAngleTurns;->mode:Lbike/smarthalo/navigation/models/TransportationMode;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColour(Lbike/smarthalo/navigation/models/TransportationMode;)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object v2

    .line 778
    iget-object v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    iget-object v0, v0, Lbike/smarthalo/navigation/models/NavAngleTurns;->mode:Lbike/smarthalo/navigation/models/TransportationMode;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColour(Lbike/smarthalo/navigation/models/TransportationMode;)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object v5

    .line 779
    iget-object v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->deviceInstruction:Ljava/lang/String;

    .line 780
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lbike/smarthalo/app/helpers/DirectionHelper;->convertStepInstruction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-static {v1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object v8, v0

    .line 790
    :goto_0
    iget-object v0, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->offlineModeStatus:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    sget-object v1, Lbike/smarthalo/navigation/models/OfflineModeStatus;->OnPath:Lbike/smarthalo/navigation/models/OfflineModeStatus;

    if-eq v0, v1, :cond_1

    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->OfflineTurnByTurn:Lbike/smarthalo/navigation/models/NavigationMode;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    const/4 v9, 0x0

    .line 791
    :goto_1
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {p2}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 792
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {p2}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v1

    iget-object v3, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->thisTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    iget v4, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToThisManeuver:I

    iget-object v6, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->nextTurn:Lbike/smarthalo/navigation/models/NavAngleTurns;

    iget v7, p1, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->distanceToNextManeuver:I

    invoke-virtual/range {v1 .. v9}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->navAngleQuick(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/navigation/models/NavAngleTurns;ILjava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method private sendNavCommandToSmartHalo(Lbike/smarthalo/navigation/models/TransportationMode;Lbike/smarthalo/navigation/models/StepType;IILjava/lang/String;)V
    .locals 6

    .line 805
    new-instance v1, Lbike/smarthalo/sdk/models/SHColour;

    invoke-direct {v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>()V

    .line 806
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$TransportationMode:[I

    invoke-virtual {p1}, Lbike/smarthalo/navigation/models/TransportationMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xff

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/16 p1, 0x43

    .line 813
    iput p1, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    .line 814
    iput v0, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    .line 815
    iput v0, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    goto :goto_0

    :cond_0
    const/16 p1, 0x26

    .line 808
    iput p1, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    const/16 p1, 0xea

    .line 809
    iput p1, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    const/16 p1, 0xf9

    .line 810
    iput p1, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    .line 817
    :goto_0
    sget-object p1, Lbike/smarthalo/navigation/models/StepType;->UTURN:Lbike/smarthalo/navigation/models/StepType;

    if-ne p2, p1, :cond_1

    const/16 p1, 0xfd

    .line 818
    iput p1, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    const/16 p1, 0xed

    .line 819
    iput p1, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    .line 820
    iput v0, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    .line 823
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {p1}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 824
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {p1}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {p2}, Lbike/smarthalo/navigation/models/StepType;->getType()I

    move-result v2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private sendPointerCommandToSmartHalo(IIILjava/lang/String;)V
    .locals 0

    .line 745
    invoke-static {p1}, Lbike/smarthalo/app/helpers/DirectionHelper;->getNavColourFromProgressForSmartHalo(I)Lbike/smarthalo/sdk/models/SHColour;

    move-result-object p1

    .line 746
    invoke-direct {p0, p1, p2, p3, p4}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendPointerCommandToSmartHalo(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V

    return-void
.end method

.method private sendPointerCommandToSmartHalo(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V
    .locals 1

    .line 739
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendRerouteCommandToSmartHalo()V
    .locals 1

    .line 690
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->centralalServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->reroute()V

    :cond_0
    return-void
.end method

.method private sendRoundaboutCommandToSmartHalo(Ljava/util/ArrayList;Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;ZILjava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;",
            "ZI",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-static {p5}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p5, p2, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->description:Ljava/lang/String;

    :goto_0
    move-object v6, p5

    .line 772
    iget-object p5, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {p5}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    iget v2, p2, Lbike/smarthalo/navigation/models/SHGuidanceDisplayStatus;->progress:I

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_roundabout(Ljava/util/ArrayList;IZIILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private sendSoundToSmartHalo([B)V
    .locals 3

    .line 678
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-nez v0, :cond_0

    .line 680
    sget-object p1, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    const-string v0, "sendSoundToSmartHalo: settings are null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 684
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isNavigationSoundOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$navigationVolume()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->playTrack(II[B)V

    :cond_1
    return-void
.end method

.method private sendStandByPointerAnimation(IILjava/lang/String;)V
    .locals 1

    .line 750
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_pointer_standby(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setNewNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopNavCommandOnSmartHalo()V

    .line 211
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0, p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V

    .line 212
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->setUpNewNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V

    :cond_0
    return-void
.end method

.method private setRouteType(Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    return-void
.end method

.method private setUpLocationUpdates()V
    .locals 3

    .line 392
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->cleanUpLocationSubscription()V

    .line 394
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscriber:Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->requestLocationUpdates(Lbike/smarthalo/app/managers/LocationUpdateSubscriber;)V

    .line 395
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 396
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->observeLocationUpdates()Lio/reactivex/Flowable;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lio/reactivex/Flowable;->onBackpressureLatest()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$KjbIMKauuZsIcrnaorWw2sp2tuM;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$KjbIMKauuZsIcrnaorWw2sp2tuM;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    new-instance v2, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$wuDUdzkcEWAla5io4VDdHrxPZGA;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$wuDUdzkcEWAla5io4VDdHrxPZGA;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 398
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationUpdateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setUpNewNavigationMode(Lbike/smarthalo/navigation/models/NavigationMode;)V
    .locals 1

    .line 217
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    invoke-virtual {p1}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 223
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->resetNavigationState()V

    .line 224
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getLastSelectedRouteType()Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->routeType:Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;

    .line 226
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {p1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->rerouteUser()V

    goto :goto_0

    .line 229
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareDestinationPath()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 219
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareAsTheCrowFliesPath(Z)V

    :goto_0
    return-void
.end method

.method private startForegroundLocal()V
    .locals 2

    .line 953
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildDirectionServiceNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0xb

    .line 954
    invoke-virtual {p0, v1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private stopNavCommandOnSmartHalo()V
    .locals 2

    .line 708
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 709
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->getNavigationMode()Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/navigation/models/NavigationMode;->NoNavigation:Lbike/smarthalo/navigation/models/NavigationMode;

    .line 710
    :goto_0
    sget-object v1, Lbike/smarthalo/app/navigation/SHDirectionService$7;->$SwitchMap$bike$smarthalo$navigation$models$NavigationMode:[I

    invoke-virtual {v0}, Lbike/smarthalo/navigation/models/NavigationMode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 724
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->refreshCarouselNavigationCard()V

    .line 725
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_pointer_off()V

    .line 726
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->turnOffNavAnimations()V

    goto :goto_1

    .line 718
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_pointer_off()V

    .line 721
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->turnOffNavAnimations()V

    goto :goto_1

    .line 712
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_compass_off()V

    goto :goto_1

    .line 715
    :cond_4
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_pointer_off()V

    :cond_5
    :goto_1
    return-void
.end method

.method private stopNavOnSmartHalo()V
    .locals 1

    .line 702
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->turnOffNavAnimations()V

    :cond_0
    return-void
.end method

.method private stopNavPointerOnSmartHalo()V
    .locals 1

    .line 696
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->getCentralService()Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    move-result-object v0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->nav_pointer_off()V

    :cond_0
    return-void
.end method

.method private stopSelfAndCleanUpDelayed(J)V
    .locals 2

    .line 979
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_pox4Jw7aN8UscRoM-ULeTQfo4E;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/navigation/-$$Lambda$SHDirectionService$_pox4Jw7aN8UscRoM-ULeTQfo4E;-><init>(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopSelfAndCleanup()V
    .locals 3

    .line 962
    sget-object v0, Lbike/smarthalo/app/navigation/SHDirectionService;->TAG:Ljava/lang/String;

    const-string v1, "stopSelfAndCleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v0}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v0

    .line 966
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    invoke-virtual {v1}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->setNavigating(Z)V

    :cond_0
    const/4 v1, 0x1

    .line 970
    invoke-direct {p0, v1, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->cleanUpNavigation(ZZ)V

    .line 971
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->clearPresentationStateSubscription()V

    .line 972
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->onDispose()V

    .line 973
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->introAnimationsController:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

    invoke-virtual {v0}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->onDispose()V

    .line 975
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelf()V

    return-void
.end method

.method private updatePresentationStateSource(Lbike/smarthalo/app/models/PresentationNavigationState;)V
    .locals 1

    .line 1201
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationStateSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-virtual {v0, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 387
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 237
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getGeocodingManagerComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;

    move-result-object v0

    invoke-interface {v0, p0}, Lbike/smarthalo/app/dependencyManagement/components/GeocodingManagerComponent;->inject(Lbike/smarthalo/app/navigation/SHDirectionService;)V

    .line 239
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/processors/PublishProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->presentationStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 241
    new-instance v0, Lbike/smarthalo/app/controllers/CentralServiceController;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/CentralServiceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    .line 242
    iget-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;->onStart()V

    .line 243
    new-instance v0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

    iget-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->centralServiceController:Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;

    invoke-direct {v0, v1}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;-><init>(Lbike/smarthalo/app/services/serviceControllers/CentralServiceControllerContract;)V

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->introAnimationsController:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

    .line 245
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    new-instance v1, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;

    iget-object v2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->keyManager:Lbike/smarthalo/app/managers/KeyManager;

    invoke-direct {v1, v2, v0}, Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;-><init>(Lbike/smarthalo/app/managers/KeyManager;Z)V

    iput-object v1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->directionsCloudManager:Lbike/smarthalo/app/managers/cloudManagers/DirectionsCloudManager;

    .line 250
    :try_start_0
    invoke-static {p0}, Lbike/smarthalo/app/managers/SHLocationManager;->buildLocationManager(Landroid/content/Context;)Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
    :try_end_0
    .catch Lbike/smarthalo/app/managers/MissingLocationPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    .line 255
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "DIRECTION_SERVICE_ALIVE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/navigation/SHDirectionService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 374
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 375
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelfAndCleanup()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 268
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-nez p2, :cond_0

    .line 269
    invoke-virtual {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelf()V

    .line 272
    :cond_0
    iget-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->navigationWrapper:Lbike/smarthalo/navigation/wrapper/NavigationWrapper;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    .line 273
    invoke-virtual {p2}, Lbike/smarthalo/navigation/wrapper/NavigationWrapper;->isNavigating()Z

    move-result p2

    invoke-direct {p0, p3, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->cleanUpNavigation(ZZ)V

    :cond_1
    const-string p2, "EXTRA_CURRENT_LOCATION"

    .line 276
    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "EXTRA_CURRENT_LOCATION"

    .line 277
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    :cond_2
    const-string p2, "EXTRA_DESTINATION"

    .line 280
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lbike/smarthalo/app/models/SHLocation;

    iput-object p2, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    .line 282
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializeNavigationMode(Landroid/content/Intent;)Lbike/smarthalo/navigation/models/NavigationMode;

    move-result-object p2

    .line 283
    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->initializeRouteType(Landroid/content/Intent;)V

    const-string p3, "START_NAVIGATION_ACTION"

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 286
    invoke-direct {p0, p2}, Lbike/smarthalo/app/navigation/SHDirectionService;->onDirectNavigationStart(Lbike/smarthalo/navigation/models/NavigationMode;)V

    goto :goto_0

    :cond_3
    const-string p3, "EXTRA_GPX_FILE_PATH"

    .line 287
    invoke-virtual {p1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p2, "EXTRA_GPX_FILE_PATH"

    .line 288
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/navigation/SHDirectionService;->loadGPXPath(Landroid/net/Uri;)V

    goto :goto_0

    .line 290
    :cond_4
    iget-object p1, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->currentLocation:Landroid/location/Location;

    iget-object p3, p0, Lbike/smarthalo/app/navigation/SHDirectionService;->destinationSHLocation:Lbike/smarthalo/app/models/SHLocation;

    invoke-direct {p0, p2, p1, p3}, Lbike/smarthalo/app/navigation/SHDirectionService;->prepareNavigationOnStart(Lbike/smarthalo/navigation/models/NavigationMode;Landroid/location/Location;Lbike/smarthalo/app/models/SHLocation;)V

    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public stopService(Landroid/content/Intent;)Z
    .locals 0

    .line 366
    invoke-super {p0, p1}, Landroid/app/Service;->stopService(Landroid/content/Intent;)Z

    .line 367
    invoke-direct {p0}, Lbike/smarthalo/app/navigation/SHDirectionService;->stopSelfAndCleanup()V

    const/4 p1, 0x1

    return p1
.end method
