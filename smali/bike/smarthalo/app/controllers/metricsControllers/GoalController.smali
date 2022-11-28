.class public final Lbike/smarthalo/app/controllers/metricsControllers/GoalController;
.super Ljava/lang/Object;
.source "GoalController.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/controllers/metricsControllers/GoalController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoalController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoalController.kt\nbike/smarthalo/app/controllers/metricsControllers/GoalController\n*L\n1#1,351:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 J2\u00020\u0001:\u0001JB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u0008\u0010.\u001a\u00020/H\u0002J\n\u00100\u001a\u0004\u0018\u00010\u0016H\u0016J\n\u00101\u001a\u0004\u0018\u000102H\u0016J\u0010\u00103\u001a\u00020/2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u00104\u001a\u00020/2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u000e\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\'H\u0016J\u0008\u00106\u001a\u00020/H\u0016J\u0008\u00107\u001a\u00020/H\u0016J\u0010\u00108\u001a\u00020/2\u0006\u00109\u001a\u00020(H\u0002J\u0008\u0010:\u001a\u00020/H\u0002J\u0010\u0010;\u001a\u00020/2\u0006\u0010<\u001a\u00020=H\u0016J\u0008\u0010>\u001a\u00020/H\u0016J\u0008\u0010?\u001a\u00020/H\u0002J\u0016\u0010@\u001a\u00020/2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020(0\'H\u0016J\u0010\u0010A\u001a\u00020/2\u0006\u0010B\u001a\u00020\u0016H\u0002J\u0008\u0010C\u001a\u00020/H\u0016J\u0010\u0010D\u001a\u00020/2\u0006\u0010E\u001a\u00020$H\u0002J\u0010\u0010F\u001a\u00020/2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010G\u001a\u00020/2\u0006\u0010H\u001a\u00020IH\u0016R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001eX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u000e\u0010#\u001a\u00020$X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-\u00a8\u0006K"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/metricsControllers/GoalController;",
        "Lbike/smarthalo/app/controllers/metricsControllers/GoalControllerContract;",
        "context",
        "Landroid/content/Context;",
        "fitnessCommandsController",
        "Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;",
        "fitnessStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
        "navigationStateController",
        "Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;",
        "userStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "uiCommandsController",
        "Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "getContext",
        "()Landroid/content/Context;",
        "currentGoal",
        "Lbike/smarthalo/app/models/SHGoal;",
        "getFitnessCommandsController",
        "()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;",
        "getFitnessStorageManager",
        "()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;",
        "goalProgressSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "hasActiveGoalSource",
        "Lio/reactivex/processors/FlowableProcessor;",
        "",
        "introAnimationSubscription",
        "getNavigationStateController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;",
        "nextGoalProgressAnalytic",
        "",
        "timeGoalSubscription",
        "trackingStateSource",
        "Lio/reactivex/Flowable;",
        "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
        "trackingStateSubscription",
        "getUiCommandsController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;",
        "getUserStorageManager",
        "()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "delayProgressOff",
        "",
        "getCurrentGoal",
        "getCurrentGoalPayload",
        "Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;",
        "handlePreTrackingSH1Goal",
        "handlePreTrackingSH1Speedometer",
        "observeHasActiveGoal",
        "onDispose",
        "onGoalChanged",
        "onNewTrackingState",
        "trackingState",
        "onPreTracking",
        "onRideFinished",
        "trimmedRideData",
        "Lbike/smarthalo/app/models/fitness/TrimmedRideData;",
        "onStart",
        "onTrackingInactive",
        "setTrackingStateSource",
        "setUpTimeGoalUpdate",
        "goal",
        "showCurrentGoalAnimation",
        "showSH1GoalProgress",
        "progress",
        "showSH1Speedometer",
        "updateGoalMetrics",
        "currentRide",
        "Lbike/smarthalo/app/models/SHRide;",
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
# The value of this static final field might be set in the static constructor
.field private static final BASE_GOAL_PROGRESS_ANALYTIC:I = 0x5

.field public static final Companion:Lbike/smarthalo/app/controllers/metricsControllers/GoalController$Companion;

# The value of this static final field might be set in the static constructor
.field private static final GOAL_PROGRESS_DISPLAY_DELAY:J = 0x7d0L

# The value of this static final field might be set in the static constructor
.field private static final GOAL_PROGRESS_REFRESH_PERIOD:I = 0x7d0

# The value of this static final field might be set in the static constructor
.field private static final NUM_SECONDS_TO_CLEAR_COMPLETED_PROGRESS:I = 0x8

# The value of this static final field might be set in the static constructor
.field private static final NUM_SECONDS_TO_RESEND_PROGRESS:I = 0x1e


# instance fields
.field private final analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentGoal:Lbike/smarthalo/app/models/SHGoal;

.field private final fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private goalProgressSubscription:Lio/reactivex/disposables/Disposable;

.field private hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private introAnimationSubscription:Lio/reactivex/disposables/Disposable;

.field private final navigationStateController:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextGoalProgressAnalytic:I

.field private timeGoalSubscription:Lio/reactivex/disposables/Disposable;

.field private trackingStateSource:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;"
        }
    .end annotation
.end field

.field private trackingStateSubscription:Lio/reactivex/disposables/Disposable;

.field private final uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;
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

    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->Companion:Lbike/smarthalo/app/controllers/metricsControllers/GoalController$Companion;

    const-wide/16 v0, 0x7d0

    .line 59
    sput-wide v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->GOAL_PROGRESS_DISPLAY_DELAY:J

    const/16 v0, 0x7d0

    .line 60
    sput v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->GOAL_PROGRESS_REFRESH_PERIOD:I

    const/16 v0, 0x1e

    .line 61
    sput v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->NUM_SECONDS_TO_RESEND_PROGRESS:I

    const/16 v0, 0x8

    .line 62
    sput v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->NUM_SECONDS_TO_CLEAR_COMPLETED_PROGRESS:I

    const/4 v0, 0x5

    .line 63
    sput v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->BASE_GOAL_PROGRESS_ANALYTIC:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fitnessCommandsController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fitnessStorageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationStateController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStorageManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCommandsController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->context:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iput-object p4, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->navigationStateController:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    iput-object p5, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iput-object p6, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    iput-object p7, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 54
    sget p1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->BASE_GOAL_PROGRESS_ANALYTIC:I

    iput p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->nextGoalProgressAnalytic:I

    const/4 p1, 0x1

    .line 67
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->create(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    const-string p2, "ReplayProcessor.create<Boolean>(1).toSerialized()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;

    .line 68
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;

    if-nez p1, :cond_0

    const-string p2, "hasActiveGoalSource"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentGoal$p(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)Lbike/smarthalo/app/models/SHGoal;
    .locals 0

    .line 39
    iget-object p0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    return-object p0
.end method

.method public static final synthetic access$getHasActiveGoalSource$p(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)Lio/reactivex/processors/FlowableProcessor;
    .locals 1

    .line 39
    iget-object p0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;

    if-nez p0, :cond_0

    const-string v0, "hasActiveGoalSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$onNewTrackingState(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->onNewTrackingState(Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)V

    return-void
.end method

.method public static final synthetic access$setCurrentGoal$p(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/models/SHGoal;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    return-void
.end method

.method public static final synthetic access$setHasActiveGoalSource$p(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lio/reactivex/processors/FlowableProcessor;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;

    return-void
.end method

.method private final delayProgressOff()V
    .locals 4

    .line 295
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 297
    sget v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->NUM_SECONDS_TO_CLEAR_COMPLETED_PROGRESS:I

    int-to-long v0, v0

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long v0, v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 298
    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$delayProgressOff$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$delayProgressOff$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final handlePreTrackingSH1Goal(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 2

    .line 325
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$hasShownIntroAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->showCurrentGoalAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 328
    invoke-virtual {p1, v0}, Lbike/smarthalo/app/models/SHGoal;->realmSet$hasShownIntroAnimation(Z)V

    .line 329
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 330
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V

    .line 332
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->introAnimationSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide/16 v0, 0xbb8

    .line 334
    new-instance p1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$handlePreTrackingSH1Goal$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$handlePreTrackingSH1Goal$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 335
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->introAnimationSubscription:Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method private final handlePreTrackingSH1Speedometer(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 2

    .line 340
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$hasShownIntroAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 341
    invoke-virtual {p1, v0}, Lbike/smarthalo/app/models/SHGoal;->realmSet$hasShownIntroAnimation(Z)V

    .line 342
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 343
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V

    .line 345
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->introAnimationSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {p1}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide/16 v0, 0xbb8

    .line 347
    new-instance p1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$handlePreTrackingSH1Speedometer$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$handlePreTrackingSH1Speedometer$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getObservableTimer(JLjava/lang/Runnable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 348
    invoke-virtual {p1}, Lio/reactivex/Observable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->introAnimationSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private final onNewTrackingState(Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;)V
    .locals 1

    .line 161
    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->PreTracking:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    if-ne p1, v0, :cond_0

    .line 162
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->onPreTracking()V

    goto :goto_0

    .line 163
    :cond_0
    sget-object v0, Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;->Inactive:Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;

    if-ne p1, v0, :cond_1

    .line 164
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->onTrackingInactive()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final onPreTracking()V
    .locals 3

    .line 169
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getCurrentActiveGoal()Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 170
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    if-eqz v1, :cond_2

    .line 173
    iget-object v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->navigationStateController:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    invoke-interface {v2}, Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;->canShowGoalTrackingAnimation()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v2, :cond_2

    .line 175
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 176
    invoke-direct {p0, v1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->handlePreTrackingSH1Speedometer(Lbike/smarthalo/app/models/SHGoal;)V

    goto :goto_1

    .line 178
    :cond_1
    invoke-direct {p0, v1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->handlePreTrackingSH1Goal(Lbike/smarthalo/app/models/SHGoal;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private final onTrackingInactive()V
    .locals 3

    .line 185
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->introAnimationSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 186
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 187
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->timeGoalSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 189
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    if-eqz v0, :cond_2

    .line 190
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v1, v2, :cond_2

    .line 192
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;->removeSpeedometer()V

    goto :goto_1

    .line 195
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->removeProgress()V

    :cond_2
    :goto_1
    return-void
.end method

.method private final setUpTimeGoalUpdate(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 3

    .line 251
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, v0}, Lio/reactivex/Flowable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 252
    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$setUpTimeGoalUpdate$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/models/SHGoal;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->timeGoalSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final showSH1GoalProgress(I)V
    .locals 6

    .line 305
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->navigationStateController:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;->canShowGoalTrackingAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v1, :cond_2

    .line 308
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_1

    .line 311
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->showCurrentGoalAnimation()V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    .line 314
    sget p1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->NUM_SECONDS_TO_RESEND_PROGRESS:I

    int-to-long v2, p1

    const/16 p1, 0x3e8

    int-to-long v4, p1

    mul-long v2, v2, v4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3, p1}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 315
    new-instance v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1GoalProgress$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1GoalProgress$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)V

    check-cast v0, Lio/reactivex/functions/Consumer;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_1
    return-void
.end method

.method private final showSH1Speedometer(Lbike/smarthalo/app/models/SHGoal;)V
    .locals 7

    .line 278
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 279
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->navigationStateController:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;->canShowGoalTrackingAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lbike/smarthalo/sdk/models/DeviceModel;->SH1:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v1, v2, :cond_1

    .line 281
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v1}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    const-wide/16 v1, 0x0

    .line 284
    sget v3, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->NUM_SECONDS_TO_RESEND_PROGRESS:I

    int-to-long v3, v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    mul-long v3, v3, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4, v5}, Lio/reactivex/Observable;->interval(JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    .line 285
    new-instance v2, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;

    invoke-direct {v2, p0, p1, v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$showSH1Speedometer$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/SHUser;)V

    check-cast v2, Lio/reactivex/functions/Consumer;

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method


# virtual methods
.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 40
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentGoal()Lbike/smarthalo/app/models/SHGoal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 208
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    return-object v0
.end method

.method public getCurrentGoalPayload()Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isCompleted()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 86
    iget-boolean v2, v0, Lbike/smarthalo/app/models/SHGoal;->hasShownCompletionAnimation:Z

    if-eqz v2, :cond_0

    return-object v1

    .line 89
    :cond_0
    iput-boolean v3, v0, Lbike/smarthalo/app/models/SHGoal;->hasShownCompletionAnimation:Z

    .line 90
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->delayProgressOff()V

    .line 94
    :cond_1
    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$getCurrentGoalPayload$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$getCurrentGoalPayload$$inlined$let$lambda$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)V

    check-cast v1, Lkotlin/jvm/functions/Function3;

    .line 98
    new-instance v2, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$getCurrentGoalPayload$1$getDecimalGoalDescription$1;

    invoke-direct {v2, v1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$getCurrentGoalPayload$1$getDecimalGoalDescription$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v2, Lkotlin/jvm/functions/Function3;

    .line 109
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$previousProgress()D

    move-result-wide v4

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$progress()D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 110
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    move-object v10, v0

    goto/16 :goto_3

    .line 132
    :pswitch_1
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    const-string v1, "safeGoal.goal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const v4, 0x7f1103a8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto/16 :goto_3

    .line 116
    :pswitch_2
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    const-string v1, "safeGoal.goal"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const v4, 0x7f1103a5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto/16 :goto_3

    .line 119
    :pswitch_3
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v1

    const-wide v6, 0x408f400000000000L    # 1000.0

    if-eqz v1, :cond_2

    div-double/2addr v4, v6

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToMiles(Ljava/lang/Double;)D

    move-result-wide v4

    .line 122
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v0, v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHConversionHelper;->metersToMiles(Ljava/lang/Double;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_1
    const-string v1, "adjustedGoal"

    .line 125
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 127
    iget-object v4, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v4}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->isUserMetric()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f1103aa

    goto :goto_2

    :cond_4
    const v4, 0x7f1103ab

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v1, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    goto :goto_3

    :pswitch_4
    const/16 v2, 0x3c

    int-to-double v6, v2

    div-double/2addr v4, v6

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f1103b8

    .line 114
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v2, v0, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 135
    :goto_3
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getDisplayProgress(Lbike/smarthalo/app/models/SHGoal;)I

    move-result v0

    .line 136
    new-instance v1, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;

    .line 137
    sget-object v5, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->GOAL_COLOUR_ONE:Lbike/smarthalo/sdk/models/SHColour;

    .line 138
    sget-object v6, Lbike/smarthalo/app/controllers/controllerConstants/DeviceColours;->GOAL_COLOUR_TWO:Lbike/smarthalo/sdk/models/SHColour;

    .line 139
    sget v7, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->GOAL_PROGRESS_REFRESH_PERIOD:I

    .line 140
    iget-object v2, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    invoke-static {v2}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getDisplayProgress(Lbike/smarthalo/app/models/SHGoal;)I

    move-result v8

    const/16 v2, 0x64

    if-ge v0, v2, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_4
    move-object v4, v1

    .line 136
    invoke-direct/range {v4 .. v10}, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;-><init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIZLjava/lang/String;)V

    return-object v1

    :cond_6
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final getFitnessCommandsController()Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessCommandsController:Lbike/smarthalo/app/controllers/commandsControllers/commandsControllerContracts/FitnessCommandsControllerContract;

    return-object v0
.end method

.method public final getFitnessStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 42
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    return-object v0
.end method

.method public final getNavigationStateController()Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 43
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->navigationStateController:Lbike/smarthalo/app/controllers/controllerContracts/NavigationStateContract;

    return-object v0
.end method

.method public final getUiCommandsController()Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    return-object v0
.end method

.method public final getUserStorageManager()Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 44
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-object v0
.end method

.method public observeHasActiveGoal()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;

    if-nez v0, :cond_0

    const-string v1, "hasActiveGoalSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Lio/reactivex/Flowable;

    return-object v0
.end method

.method public onDispose()V
    .locals 1

    .line 149
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 150
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->introAnimationSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 151
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->timeGoalSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v0, 0x0

    .line 153
    check-cast v0, Lbike/smarthalo/app/models/SHGoal;

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    return-void
.end method

.method public onGoalChanged()V
    .locals 2

    .line 260
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getCurrentActiveGoal()Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 261
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;

    if-nez v0, :cond_0

    const-string v1, "hasActiveGoalSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->timeGoalSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 263
    sget v0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->BASE_GOAL_PROGRESS_ANALYTIC:I

    iput v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->nextGoalProgressAnalytic:I

    .line 264
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    if-nez v0, :cond_2

    .line 265
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->goalProgressSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_2
    return-void
.end method

.method public onRideFinished(Lbike/smarthalo/app/models/fitness/TrimmedRideData;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/models/fitness/TrimmedRideData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "trimmedRideData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    if-eqz v0, :cond_0

    .line 271
    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->trimGoal(Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/fitness/TrimmedRideData;)V

    .line 272
    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 273
    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    invoke-interface {p1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 72
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->getCurrentActiveGoal()Lbike/smarthalo/app/models/SHGoal;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 73
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->hasActiveGoalSource:Lio/reactivex/processors/FlowableProcessor;

    if-nez v0, :cond_0

    const-string v1, "hasActiveGoalSource"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->trackingStateSource:Lio/reactivex/Flowable;

    if-eqz v0, :cond_2

    new-instance v1, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$onStart$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController$onStart$1;-><init>(Lbike/smarthalo/app/controllers/metricsControllers/GoalController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->trackingStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setTrackingStateSource(Lio/reactivex/Flowable;)V
    .locals 1
    .param p1    # Lio/reactivex/Flowable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/controllers/metricsControllers/TrackingState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "trackingStateSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->trackingStateSource:Lio/reactivex/Flowable;

    return-void
.end method

.method public showCurrentGoalAnimation()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->getCurrentGoalPayload()Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->uiCommandsController:Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/controllers/controllerContracts/UICommandsControllerContract;->sendProgressAnimation(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;)V

    :cond_0
    return-void
.end method

.method public updateGoalMetrics(Lbike/smarthalo/app/models/SHRide;)V
    .locals 8
    .param p1    # Lbike/smarthalo/app/models/SHRide;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentRide"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    if-eqz v0, :cond_6

    .line 213
    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->updateGoalProgress(Lbike/smarthalo/app/models/SHGoal;Lbike/smarthalo/app/models/SHRide;)V

    .line 214
    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object p1

    const-string v3, "safeGoal.timestamp"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 216
    sget-wide v3, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->GOAL_PROGRESS_DISPLAY_DELAY:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    return-void

    .line 220
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 221
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->showSH1Speedometer(Lbike/smarthalo/app/models/SHGoal;)V

    goto/16 :goto_0

    .line 223
    :cond_1
    invoke-static {v0}, Lbike/smarthalo/app/helpers/SHFitnessHelper;->getDisplayProgress(Lbike/smarthalo/app/models/SHGoal;)I

    move-result p1

    .line 225
    iget v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->nextGoalProgressAnalytic:I

    if-lt p1, v1, :cond_2

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isCompleted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 226
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v2

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v3

    const-string v4, "safeGoal.goal"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    iget v5, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->nextGoalProgressAnalytic:I

    invoke-static {v2, v3, v4, v5}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getGoalProgressedEvent(IDI)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v2

    invoke-interface {v1, v2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 227
    iget v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->nextGoalProgressAnalytic:I

    sget v2, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->BASE_GOAL_PROGRESS_ANALYTIC:I

    add-int/2addr v1, v2

    iput v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->nextGoalProgressAnalytic:I

    .line 230
    :cond_2
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$nextProgress()I

    move-result v1

    const/4 v2, 0x1

    if-lt p1, v1, :cond_4

    .line 231
    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/models/SHGoal;->realmSet$nextProgress(I)V

    const/16 v1, 0x64

    if-lt p1, v1, :cond_3

    .line 232
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$isCompleted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 233
    invoke-virtual {v0, v2}, Lbike/smarthalo/app/models/SHGoal;->realmSet$isCompleted(Z)V

    .line 234
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result v3

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$goal()Ljava/lang/Double;

    move-result-object v4

    const-string v5, "safeGoal.goal"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$timestamp()Ljava/lang/Long;

    move-result-object v6

    const-string v7, "safeGoal.timestamp"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lbike/smarthalo/app/analytics/fitness/AnalyticsFitness;->getGoalCompletedEvent(IDJ)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v3

    invoke-interface {v1, v3}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 236
    :cond_3
    iget-object v1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->fitnessStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;

    invoke-interface {v1, v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/FitnessStorageContract;->updateUserGoal(Lbike/smarthalo/app/models/SHGoal;)V

    .line 237
    iput-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->currentGoal:Lbike/smarthalo/app/models/SHGoal;

    .line 238
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->showSH1GoalProgress(I)V

    .line 242
    :cond_4
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHGoal;->realmGet$type()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->timeGoalSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz p1, :cond_5

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p1

    if-ne p1, v2, :cond_6

    .line 243
    :cond_5
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/metricsControllers/GoalController;->setUpTimeGoalUpdate(Lbike/smarthalo/app/models/SHGoal;)V

    :cond_6
    :goto_0
    return-void
.end method
