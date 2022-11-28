.class public final Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;
.super Ljava/lang/Object;
.source "CarouselController.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;
.implements Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CarouselController.kt\nbike/smarthalo/app/controllers/metricsControllers/CarouselController\n*L\n1#1,277:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0016\u0018\u0000 _2\u00020\u00012\u00020\u0002:\u0001_BE\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010G\u001a\u00020!H\u0016J\u0008\u0010H\u001a\u00020!H\u0016J\u0008\u0010I\u001a\u00020JH\u0002J\u0008\u0010K\u001a\u00020JH\u0002J\u0008\u0010L\u001a\u00020JH\u0002J\u0010\u0010M\u001a\u00020J2\u0006\u0010N\u001a\u00020;H\u0002J\u0008\u0010O\u001a\u00020JH\u0002J\u0008\u0010P\u001a\u00020JH\u0002J\u0008\u0010Q\u001a\u00020JH\u0002J\u0008\u0010R\u001a\u00020JH\u0002J\u0008\u0010S\u001a\u00020JH\u0002J\u0010\u0010T\u001a\u00020J2\u0006\u0010N\u001a\u00020;H\u0002J\u0008\u0010U\u001a\u00020JH\u0002J\u0008\u0010V\u001a\u00020JH\u0002J\u0008\u0010W\u001a\u00020JH\u0002J\u0008\u0010X\u001a\u00020JH\u0002J\u0008\u0010Y\u001a\u00020JH\u0016J\u0008\u0010Z\u001a\u00020JH\u0016J\u0010\u0010[\u001a\u00020J2\u0006\u0010\\\u001a\u00020;H\u0002J\u0008\u0010]\u001a\u00020JH\u0002J\u0008\u0010^\u001a\u00020JH\u0016R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\"\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u001b\"\u0004\u0008$\u0010\u001dR\u001c\u0010%\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001b\"\u0004\u0008\'\u0010\u001dR\u001c\u0010(\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u001b\"\u0004\u0008*\u0010\u001dR\u001a\u0010+\u001a\u00020,X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00106R\u001c\u00107\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u001b\"\u0004\u00089\u0010\u001dR\u001c\u0010:\u001a\u0004\u0018\u00010;X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u001b\"\u0004\u0008B\u0010\u001dR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u0010DR\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010F\u00a8\u0006`"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;",
        "Lbike/smarthalo/app/controllers/controllerContracts/CarouselControllerContract;",
        "Lbike/smarthalo/app/controllers/metricsControllers/CarouselMaskContract;",
        "deviceServiceController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;",
        "deviceStateController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;",
        "directionController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;",
        "trackingController",
        "Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;",
        "activeGoalController",
        "Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;",
        "userStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "assistantCommandsController",
        "Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getActiveGoalController",
        "()Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "analyticsSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getAnalyticsSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setAnalyticsSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "getAssistantCommandsController",
        "()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;",
        "carouselMask",
        "Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;",
        "carouselNotificationSubscription",
        "getCarouselNotificationSubscription",
        "setCarouselNotificationSubscription",
        "carouselUpdateSubscription",
        "getCarouselUpdateSubscription",
        "setCarouselUpdateSubscription",
        "connectionStateSubscription",
        "getConnectionStateSubscription",
        "setConnectionStateSubscription",
        "currentCardViewStart",
        "",
        "getCurrentCardViewStart",
        "()J",
        "setCurrentCardViewStart",
        "(J)V",
        "getDeviceServiceController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;",
        "getDeviceStateController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;",
        "getDirectionController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;",
        "hasGoalSubscription",
        "getHasGoalSubscription",
        "setHasGoalSubscription",
        "latestMetricsCarouselPosition",
        "Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;",
        "getLatestMetricsCarouselPosition",
        "()Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;",
        "setLatestMetricsCarouselPosition",
        "(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V",
        "navigationStateSubscription",
        "getNavigationStateSubscription",
        "setNavigationStateSubscription",
        "getTrackingController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;",
        "getUserStorageManager",
        "()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "addNavigationMask",
        "getCarouselMask",
        "handleClockNotification",
        "",
        "handleGoalNotification",
        "handleNavigationNotification",
        "handleNewNotification",
        "newCarouselNotification",
        "handleRideAverageSpeedNotification",
        "handleRideCaloriesNotification",
        "handleRideDistanceNotification",
        "handleRideTimeNotification",
        "handleSpeedometerNotification",
        "manageCardViewAnalytics",
        "observeCarouselNotification",
        "observeConnectionState",
        "observeHasGoal",
        "observeNavigationState",
        "onDispose",
        "onStart",
        "sendBackEmptyPayload",
        "carouselPosition",
        "sendCardViewAnalytics",
        "updateNavigationCard",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final CARD_VIEW_ANALYTICS_TIMEOUT:J = 0xfa0L

.field public static final Companion:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$Companion;

.field private static final MAX_SPEEDOMETER_VALUE:I = 0x28

.field private static final MINIMUM_SPEEDOMETER_VALUE:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activeGoalController:Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private analyticsSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

.field private carouselNotificationSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private carouselUpdateSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentCardViewStart:J

.field private final deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private hasGoalSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private navigationStateSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->Companion:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$Companion;

    .line 48
    const-class v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceServiceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directionController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackingController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeGoalController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStorageManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistantCommandsController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    iput-object p4, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    iput-object p5, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->activeGoalController:Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;

    iput-object p6, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iput-object p7, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    iput-object p8, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 38
    new-instance p1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    invoke-direct {p1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    return-void
.end method

.method public static final synthetic access$getCarouselMask$p(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;
    .locals 0

    .line 24
    iget-object p0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$handleNewNotification(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleNewNotification(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V

    return-void
.end method

.method public static final synthetic access$observeCarouselNotification(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->observeCarouselNotification()V

    return-void
.end method

.method public static final synthetic access$sendCardViewAnalytics(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->sendCardViewAnalytics()V

    return-void
.end method

.method public static final synthetic access$setCarouselMask$p(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    return-void
.end method

.method private final handleClockNotification()V
    .locals 5

    .line 163
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Clock:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 166
    iget-object v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    .line 167
    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    invoke-interface {v3}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;->getClockPayload()Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    const/4 v4, 0x0

    .line 164
    invoke-virtual {v0, v1, v2, v3, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private final handleGoalNotification()V
    .locals 5

    .line 252
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->activeGoalController:Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;->getCurrentGoalPayload()Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    sget-object v2, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Goal:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 256
    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    .line 257
    check-cast v1, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    const/4 v4, 0x0

    .line 254
    invoke-virtual {v0, v2, v3, v1, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private final handleNavigationNotification()V
    .locals 5

    .line 245
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->getNavigationCarouselPayload()Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    move-result-object v1

    .line 247
    sget-object v2, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private final handleNewNotification(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->manageCardViewAnalytics(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V

    .line 88
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    .line 89
    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    sget-object p1, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->TAG:Ljava/lang/String;

    const-string v0, "Unknown notification"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :pswitch_1
    sget-object p1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Battery:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->sendBackEmptyPayload(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V

    goto :goto_0

    .line 98
    :pswitch_2
    sget-object p1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->CarbonDioxide:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->sendBackEmptyPayload(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleRideAverageSpeedNotification()V

    goto :goto_0

    .line 96
    :pswitch_4
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleClockNotification()V

    goto :goto_0

    .line 95
    :pswitch_5
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleRideCaloriesNotification()V

    goto :goto_0

    .line 94
    :pswitch_6
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleSpeedometerNotification()V

    goto :goto_0

    .line 93
    :pswitch_7
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleRideTimeNotification()V

    goto :goto_0

    .line 92
    :pswitch_8
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleRideDistanceNotification()V

    goto :goto_0

    .line 91
    :pswitch_9
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleGoalNotification()V

    goto :goto_0

    .line 90
    :pswitch_a
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleNavigationNotification()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final handleRideAverageSpeedNotification()V
    .locals 12

    .line 207
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    .line 209
    new-instance v2, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$handleRideAverageSpeedNotification$$inlined$let$lambda$1;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$handleRideAverageSpeedNotification$$inlined$let$lambda$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 215
    new-instance v10, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$avgSpeed()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v11

    :goto_0
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$curSpeed()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v11

    :goto_1
    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 218
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v6

    .line 219
    sget-object v7, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->EXCEPTION:Lbike/smarthalo/sdk/models/SHColour;

    .line 220
    sget-object v8, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->WHITE:Lbike/smarthalo/sdk/models/SHColour;

    .line 221
    sget-object v9, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->NAVIGATION_GREEN:Lbike/smarthalo/sdk/models/SHColour;

    move-object v3, v10

    .line 215
    invoke-direct/range {v3 .. v9}, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;-><init>(IIZLbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;)V

    .line 223
    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->AverageSpeed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    check-cast v10, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    invoke-virtual {v0, v1, v2, v10, v11}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_2
    return-void
.end method

.method private final handleRideCaloriesNotification()V
    .locals 5

    .line 196
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$burntCalories()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 201
    :goto_0
    new-instance v3, Lbike/smarthalo/sdk/commands/carousel/FitnessCommandPayload;

    double-to-int v1, v1

    invoke-direct {v3, v1}, Lbike/smarthalo/sdk/commands/carousel/FitnessCommandPayload;-><init>(I)V

    .line 202
    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Calories:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    check-cast v3, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method

.method private final handleRideDistanceNotification()V
    .locals 5

    .line 173
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$traveledDistance()D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 179
    :goto_0
    new-instance v2, Lbike/smarthalo/sdk/commands/carousel/RideDistancePayload;

    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lbike/smarthalo/sdk/commands/carousel/RideDistancePayload;-><init>(IZ)V

    .line 180
    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Distance:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    check-cast v2, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method

.method private final handleRideTimeNotification()V
    .locals 5

    .line 185
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v3}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v3

    invoke-virtual {v3}, Lbike/smarthalo/app/models/SHRide;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v3

    const-string v4, "trackingController.currentActiveRide.timestamp"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 190
    :goto_0
    new-instance v3, Lbike/smarthalo/sdk/commands/carousel/FitnessCommandPayload;

    long-to-int v2, v1

    invoke-direct {v3, v2}, Lbike/smarthalo/sdk/commands/carousel/FitnessCommandPayload;-><init>(I)V

    .line 191
    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Time:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    iget-object v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    check-cast v3, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_1
    return-void
.end method

.method private final handleSpeedometerNotification()V
    .locals 7

    .line 228
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 230
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;->getCurrentActiveRide()Lbike/smarthalo/app/models/SHRide;

    move-result-object v1

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHRide;->realmGet$curSpeed()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const/4 v3, 0x5

    int-to-double v3, v3

    const/4 v5, 0x0

    cmpl-double v6, v1, v3

    if-ltz v6, :cond_2

    .line 236
    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v3

    if-eqz v3, :cond_1

    double-to-int v3, v1

    goto :goto_1

    :cond_1
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3}, Lbike/smarthalo/app/helpers/SHConversionHelper;->kphToMphDisplay(Ljava/lang/Double;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v3

    :goto_1
    move v5, v3

    const/16 v3, 0x28

    int-to-double v3, v3

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    mul-double v1, v1, v3

    .line 237
    invoke-static {v1, v2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 239
    :goto_2
    new-instance v2, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;

    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v3}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v3

    invoke-direct {v2, v1, v5, v3}, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;-><init>(IIZ)V

    .line 240
    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Speed:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    iget-object v3, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    check-cast v2, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_3
    return-void
.end method

.method private final manageCardViewAnalytics(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V
    .locals 4

    .line 106
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    if-eq p1, v0, :cond_0

    .line 107
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->sendCardViewAnalytics()V

    .line 111
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    if-ne p1, v0, :cond_1

    iget-wide v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->currentCardViewStart:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 112
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->currentCardViewStart:J

    .line 115
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide/16 v0, 0xfa0

    .line 117
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object p1

    .line 118
    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$manageCardViewAnalytics$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$manageCardViewAnalytics$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final observeCarouselNotification()V
    .locals 2

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getBleNotificationController()Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;->observeCarousel()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeCarouselNotification$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeCarouselNotification$$inlined$let$lambda$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselNotificationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final observeConnectionState()V
    .locals 2

    .line 134
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    .line 136
    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeConnectionState$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeConnectionState$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final observeHasGoal()V
    .locals 2

    .line 149
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->activeGoalController:Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;

    .line 150
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;->observeHasActiveGoal()Lio/reactivex/Flowable;

    move-result-object v0

    .line 151
    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeHasGoal$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeHasGoal$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->hasGoalSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final observeNavigationState()V
    .locals 2

    .line 155
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    .line 156
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->observeIsNavigating()Lio/reactivex/Flowable;

    move-result-object v0

    .line 157
    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeNavigationState$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeNavigationState$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->navigationStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final sendBackEmptyPayload(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    new-instance v2, Lbike/smarthalo/sdk/commands/carousel/EmptyCommandPayload;

    invoke-direct {v2}, Lbike/smarthalo/sdk/commands/carousel/EmptyCommandPayload;-><init>()V

    check-cast v2, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private final sendCardViewAnalytics()V
    .locals 8

    .line 122
    iget-wide v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->currentCardViewStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->currentCardViewStart:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 126
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-static {v0, v4, v5}, Lbike/smarthalo/app/analytics/assistant/AnalyticsAssistant;->getCarouselEvent(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;J)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 128
    :cond_0
    iput-wide v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->currentCardViewStart:J

    :cond_1
    return-void
.end method


# virtual methods
.method public addNavigationMask()Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 274
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasNavigation:Z

    return-object v0
.end method

.method public final getActiveGoalController()Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 29
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->activeGoalController:Lbike/smarthalo/app/controllers/metricsControllers/ActiveGoalContract;

    return-object v0
.end method

.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 32
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public final getAnalyticsSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getAssistantCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 31
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->assistantCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/AssistantCommandsControllerContract;

    return-object v0
.end method

.method public getCarouselMask()Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 270
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselMask:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    return-object v0
.end method

.method public final getCarouselNotificationSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 36
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselNotificationSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getCarouselUpdateSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 37
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselUpdateSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getConnectionStateSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getCurrentCardViewStart()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->currentCardViewStart:J

    return-wide v0
.end method

.method public final getDeviceServiceController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    return-object v0
.end method

.method public final getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    return-object v0
.end method

.method public final getDirectionController()Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    return-object v0
.end method

.method public final getHasGoalSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 41
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->hasGoalSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getLatestMetricsCarouselPosition()Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-object v0
.end method

.method public final getNavigationStateSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 40
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->navigationStateSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getTrackingController()Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 28
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->trackingController:Lbike/smarthalo/app/controllers/controllerContracts/TrackingControllerContract;

    return-object v0
.end method

.method public final getUserStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    .line 61
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselNotificationSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 62
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselUpdateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->navigationStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 65
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->hasGoalSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->observeConnectionState()V

    .line 56
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->observeNavigationState()V

    .line 57
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->observeHasGoal()V

    return-void
.end method

.method public final setAnalyticsSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 44
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->analyticsSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setCarouselNotificationSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 36
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselNotificationSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setCarouselUpdateSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 37
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->carouselUpdateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setConnectionStateSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 35
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setCurrentCardViewStart(J)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->currentCardViewStart:J

    return-void
.end method

.method public final setHasGoalSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 41
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->hasGoalSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setLatestMetricsCarouselPosition(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V
    .locals 0
    .param p1    # Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 42
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    return-void
.end method

.method public final setNavigationStateSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 40
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->navigationStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public updateNavigationCard()V
    .locals 2

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->latestMetricsCarouselPosition:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    sget-object v1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->Navigation:Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    if-eq v0, v1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->handleNavigationNotification()V

    return-void
.end method
