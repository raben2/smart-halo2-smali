.class public final Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;
.super Ljava/lang/Object;
.source "SystemStatusController.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0002\u0014\u0017\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u001b\u001a\u00020\u001cH\u0002J\u0008\u0010\u001d\u001a\u00020\u001cH\u0016J\u0008\u0010\u001e\u001a\u00020\u001cH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020 H\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0015R\u0010\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0018R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\""
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;",
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusContract;",
        "context",
        "Landroid/content/Context;",
        "deviceStateController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;",
        "analyticsController",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "systemStatusManager",
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V",
        "getAnalyticsController",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "connectionStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getContext",
        "()Landroid/content/Context;",
        "getDeviceStateController",
        "()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;",
        "locationStateReceiver",
        "bike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1",
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;",
        "powerSaveReceiver",
        "bike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1",
        "Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1;",
        "getSystemStatusManager",
        "()Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;",
        "observeConnectionState",
        "",
        "onDispose",
        "onStart",
        "sendLocationNotification",
        "",
        "sendPowerSavingNotification",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final analyticsController:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final locationStateReceiver:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;

.field private final powerSaveReceiver:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1;

.field private final systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemStatusManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->analyticsController:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iput-object p4, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    .line 30
    new-instance p1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1;-><init>(Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;)V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->powerSaveReceiver:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1;

    .line 36
    new-instance p1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;

    invoke-direct {p1, p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;-><init>(Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;)V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->locationStateReceiver:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;

    return-void
.end method

.method public static final synthetic access$sendLocationNotification(Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->sendLocationNotification()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$sendPowerSavingNotification(Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->sendPowerSavingNotification()Z

    move-result p0

    return p0
.end method

.method private final observeConnectionState()V
    .locals 2

    .line 56
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    .line 60
    sget-object v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$observeConnectionState$1;->INSTANCE:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$observeConnectionState$1;

    check-cast v1, Lio/reactivex/functions/Predicate;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 61
    new-instance v1, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$observeConnectionState$2;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$observeConnectionState$2;-><init>(Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private final sendLocationNotification()Z
    .locals 10

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getIsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->shouldNotifyLocationOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    const-class v2, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "REQUEST_CODE_EXTRA"

    const/16 v2, 0x82

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 77
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 85
    iget-object v4, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    const v5, 0x7f110282

    const v6, 0x7f11027d

    const/16 v8, 0x82

    const-string v9, "sh_app_notification"

    .line 84
    invoke-static/range {v4 .. v9}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildAndSendDefaultNotification(Landroid/content/Context;IILandroid/app/PendingIntent;ILjava/lang/String;)V

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->setHasViewedLocationNotification()V

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->analyticsController:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "LocationNotification_Sent"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final sendPowerSavingNotification()Z
    .locals 10

    .line 103
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getIsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->shouldNotifyPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    const-class v2, Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "REQUEST_CODE_EXTRA"

    const/16 v2, 0x83

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    const/high16 v3, 0x8000000

    .line 106
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 114
    iget-object v4, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    const v5, 0x7f11033d

    const v6, 0x7f110338

    const/16 v8, 0x83

    const-string v9, "sh_app_notification"

    .line 113
    invoke-static/range {v4 .. v9}, Lbike/smarthalo/app/helpers/SHNotificationHelper;->buildAndSendDefaultNotification(Landroid/content/Context;IILandroid/app/PendingIntent;ILjava/lang/String;)V

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->setHasViewedPowerSavingNotification()V

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->analyticsController:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "PowerSavingNotification_Sent"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final getAnalyticsController()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->analyticsController:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 24
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getDeviceStateController()Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 25
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    return-object v0
.end method

.method public final getSystemStatusManager()Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 27
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    return-object v0
.end method

.method public onDispose()V
    .locals 2

    .line 51
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->powerSaveReceiver:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->powerSaveReceiver:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$powerSaveReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->locationStateReceiver:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController$locationStateReceiver$1;

    check-cast v1, Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 47
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusController;->observeConnectionState()V

    return-void
.end method
