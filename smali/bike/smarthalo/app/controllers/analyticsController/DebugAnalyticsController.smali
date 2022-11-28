.class public final Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;
.super Ljava/lang/Object;
.source "DebugAnalyticsController.kt"

# interfaces
.implements Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugAnalyticsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugAnalyticsController.kt\nbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,284:1\n37#2,2:285\n37#2,2:287\n*E\n*S KotlinDebug\n*F\n+ 1 DebugAnalyticsController.kt\nbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController\n*L\n252#1,2:285\n257#1,2:287\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 @2\u00020\u0001:\u0001@B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010,\u001a\u00020-H\u0002J\u0008\u0010.\u001a\u00020-H\u0002J\u0014\u0010/\u001a\u0004\u0018\u0001002\u0008\u0008\u0002\u00101\u001a\u00020\u0016H\u0002J\u0008\u00102\u001a\u00020%H\u0002J\u0014\u00103\u001a\u0004\u0018\u0001002\u0008\u0008\u0002\u00101\u001a\u00020\u0016H\u0002J\n\u00104\u001a\u0004\u0018\u00010%H\u0002J\u0008\u00105\u001a\u00020-H\u0002J\u0008\u00106\u001a\u00020-H\u0002J\u0008\u00107\u001a\u00020-H\u0002J\u0008\u00108\u001a\u00020-H\u0016J\u0010\u00109\u001a\u00020-2\u0006\u0010:\u001a\u00020;H\u0002J\u0008\u0010<\u001a\u00020-H\u0016J\u000e\u0010=\u001a\u00020-2\u0006\u0010>\u001a\u00020?R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012\"\u0004\u0008\u001c\u0010\u0014R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012\"\u0004\u0008\u001f\u0010\u0014R\u001c\u0010 \u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0012\"\u0004\u0008\"\u0010\u0014R>\u0010#\u001a&\u0012\u000c\u0012\n &*\u0004\u0018\u00010%0% &*\u0012\u0012\u000c\u0012\n &*\u0004\u0018\u00010%0%\u0018\u00010\'0$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006A"
    }
    d2 = {
        "Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;",
        "Lbike/smarthalo/app/controllers/analyticsController/InstabugControllerContract;",
        "context",
        "Landroid/content/Context;",
        "deviceStateController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;",
        "deviceServiceController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;",
        "userStorageManager",
        "Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;",
        "locationManager",
        "Lbike/smarthalo/app/managers/contracts/LocationManagerContract;",
        "directionController",
        "Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;",
        "(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;)V",
        "connectionStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "getConnectionStateSubscription",
        "()Lio/reactivex/disposables/Disposable;",
        "setConnectionStateSubscription",
        "(Lio/reactivex/disposables/Disposable;)V",
        "isDeviceConnected",
        "",
        "()Z",
        "setDeviceConnected",
        "(Z)V",
        "nonFatalCrashSubscription",
        "getNonFatalCrashSubscription",
        "setNonFatalCrashSubscription",
        "stmCrashSubscription",
        "getStmCrashSubscription",
        "setStmCrashSubscription",
        "stmLogSubscription",
        "getStmLogSubscription",
        "setStmLogSubscription",
        "stmLogs",
        "",
        "",
        "kotlin.jvm.PlatformType",
        "",
        "getStmLogs",
        "()Ljava/util/List;",
        "setStmLogs",
        "(Ljava/util/List;)V",
        "connectionSequence",
        "",
        "disconnectionSequence",
        "getBleLogsFile",
        "Ljava/io/File;",
        "shouldLimitSize",
        "getEnvironmentString",
        "getStmLogFile",
        "getUserAuthLevelString",
        "observeNonFatalCrashes",
        "observeStmCrashes",
        "observeStmLogNotifications",
        "onDispose",
        "onInstabugReportCreated",
        "report",
        "Lcom/instabug/library/model/Report;",
        "onStart",
        "sendSentryReport",
        "smartHaloOSCrash",
        "Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;",
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
.field public static final Companion:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;

# The value of this static final field might be set in the static constructor
.field private static final LOG_MAX_SIZE:I = 0x3e8

# The value of this static final field might be set in the static constructor
.field private static final SMARTHALO_OS_PLATFORM:Ljava/lang/String; = "smarthalo-os"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private final deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

.field private final directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

.field private isDeviceConnected:Z

.field private final locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

.field private nonFatalCrashSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private stmCrashSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private stmLogSubscription:Lio/reactivex/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private stmLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->Companion:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;

    .line 54
    const-class v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->TAG:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 55
    sput v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->LOG_MAX_SIZE:I

    const-string v0, "smarthalo-os"

    .line 56
    sput-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->SMARTHALO_OS_PLATFORM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/contracts/LocationManagerContract;Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lbike/smarthalo/app/managers/contracts/LocationManagerContract;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceServiceController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userStorageManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directionController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->context:Landroid/content/Context;

    iput-object p2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    iput-object p3, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    iput-object p4, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    iput-object p5, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    iput-object p6, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogs:Ljava/util/List;

    .line 60
    iget-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {p1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 61
    new-array p2, p2, [Lcom/instabug/library/invocation/InstabugInvocationEvent;

    const/4 p3, 0x0

    .line 62
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isDevelopmentBuildConfig()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->SHAKE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/instabug/library/invocation/InstabugInvocationEvent;->NONE:Lcom/instabug/library/invocation/InstabugInvocationEvent;

    :goto_0
    aput-object p1, p2, p3

    .line 61
    invoke-static {p2}, Lcom/instabug/bug/BugReporting;->setInvocationEvents([Lcom/instabug/library/invocation/InstabugInvocationEvent;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$connectionSequence(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->connectionSequence()V

    return-void
.end method

.method public static final synthetic access$disconnectionSequence(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->disconnectionSequence()V

    return-void
.end method

.method public static final synthetic access$getBleLogsFile(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Z)Ljava/io/File;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getBleLogsFile(Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceStateController$p(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .locals 0

    .line 37
    iget-object p0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    return-object p0
.end method

.method public static final synthetic access$getEnvironmentString(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getEnvironmentString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLOG_MAX_SIZE$cp()I
    .locals 1

    .line 37
    sget v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->LOG_MAX_SIZE:I

    return v0
.end method

.method public static final synthetic access$getSMARTHALO_OS_PLATFORM$cp()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->SMARTHALO_OS_PLATFORM:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getStmLogFile(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Z)Ljava/io/File;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getStmLogFile(Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUserAuthLevelString(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getUserAuthLevelString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onInstabugReportCreated(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Lcom/instabug/library/model/Report;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->onInstabugReportCreated(Lcom/instabug/library/model/Report;)V

    return-void
.end method

.method private final connectionSequence()V
    .locals 1

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->isDeviceConnected:Z

    .line 91
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->observeStmLogNotifications()V

    .line 92
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->observeStmCrashes()V

    .line 93
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->observeNonFatalCrashes()V

    return-void
.end method

.method private final disconnectionSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->isDeviceConnected:Z

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 99
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmCrashSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->nonFatalCrashSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final getBleLogsFile(Z)Ljava/io/File;
    .locals 5

    .line 257
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "ble-logs"

    const-string v3, ".txt"

    .line 258
    iget-object v4, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const-string v3, "safeDeviceService"

    .line 260
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getDebugLoggerData()Lbike/smarthalo/sdk/helpers/DebugLoggerDataContract;

    move-result-object v0

    const-string v3, "safeDeviceService.debugLoggerData"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lbike/smarthalo/sdk/helpers/DebugLoggerDataContract;->getLogs()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 262
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sget v3, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->LOG_MAX_SIZE:I

    if-le p1, v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    sget v3, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->LOG_MAX_SIZE:I

    sub-int/2addr p1, v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_0
    const-string p1, "adjustedLogs"

    .line 265
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    const/4 p1, 0x0

    .line 288
    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Ljava/lang/String;

    .line 265
    invoke-static {v2, p1}, Lbike/smarthalo/app/helpers/SHFileHelper;->writeStringToFile(Ljava/io/File;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    .line 257
    :cond_1
    check-cast v1, Ljava/io/File;

    goto :goto_0

    .line 288
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-object v1
.end method

.method static synthetic getBleLogsFile$default(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;ZILjava/lang/Object;)Ljava/io/File;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 256
    :cond_0
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getBleLogsFile(Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final getEnvironmentString()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ENV-prod"

    goto :goto_0

    :cond_0
    const-string v0, "ENV-dev"

    :goto_0
    return-object v0
.end method

.method private final getStmLogFile(Z)Ljava/io/File;
    .locals 3

    const-string v0, "stm-logs"

    const-string v1, ".txt"

    .line 246
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v1, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->LOG_MAX_SIZE:I

    if-le p1, v1, :cond_0

    iget-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->LOG_MAX_SIZE:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 250
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogs:Ljava/util/List;

    :goto_0
    const-string v1, "adjustedLogs"

    .line 252
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    const/4 v1, 0x0

    .line 286
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, [Ljava/lang/String;

    .line 252
    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/SHFileHelper;->writeStringToFile(Ljava/io/File;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 286
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic getStmLogFile$default(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;ZILjava/lang/Object;)Ljava/io/File;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 244
    :cond_0
    invoke-direct {p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getStmLogFile(Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private final getUserAuthLevelString()Ljava/lang/String;
    .locals 3

    .line 271
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getAuthLevel()Lbike/smarthalo/app/models/AuthLevel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lbike/smarthalo/app/models/AuthLevel;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "AUTH-alpha"

    move-object v1, v0

    goto :goto_0

    :pswitch_1
    const-string v0, "AUTH-beta"

    move-object v1, v0

    goto :goto_0

    :pswitch_2
    const-string v0, "AUTH-public"

    move-object v1, v0

    :cond_1
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final observeNonFatalCrashes()V
    .locals 2

    .line 104
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->nonFatalCrashSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 106
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "deviceService"

    .line 107
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getDebugLoggerData()Lbike/smarthalo/sdk/helpers/DebugLoggerDataContract;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Lbike/smarthalo/sdk/helpers/DebugLoggerDataContract;->observeNonFatalExceptions()Lio/reactivex/Flowable;

    move-result-object v0

    .line 110
    sget-object v1, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;->INSTANCE:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->nonFatalCrashSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private final observeStmCrashes()V
    .locals 2

    .line 130
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmCrashSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 132
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->observeSmartHaloOSCrash()Lio/reactivex/Flowable;

    move-result-object v0

    .line 135
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 136
    new-instance v1, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmCrashes$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmCrashes$$inlined$let$lambda$1;-><init>(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmCrashSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private final observeStmLogNotifications()V
    .locals 2

    .line 118
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "deviceService"

    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getBleNotificationController()Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;->observeStmLogs()Lio/reactivex/Flowable;

    move-result-object v0

    .line 124
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 125
    new-instance v1, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmLogNotifications$$inlined$let$lambda$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeStmLogNotifications$$inlined$let$lambda$1;-><init>(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private final onInstabugReportCreated(Lcom/instabug/library/model/Report;)V
    .locals 5

    const-string v0, "IsConnected"

    .line 142
    iget-boolean v1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->isDeviceConnected:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "nrfFirmware"

    .line 144
    iget-object v2, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nrfBootloader"

    .line 145
    iget-object v2, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicBootloaderVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stmFirmware"

    .line 146
    iget-object v2, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stmBootloader"

    .line 147
    iget-object v0, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->stmBootloaderVersion:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getDeviceState()Lbike/smarthalo/app/models/DeviceState;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "isCharging"

    .line 151
    iget-boolean v2, v0, Lbike/smarthalo/app/models/DeviceState;->isUSBPlugged:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "stateOfCharge"

    .line 152
    iget-object v2, v0, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "temperature"

    .line 153
    iget-object v0, v0, Lbike/smarthalo/app/models/DeviceState;->temperatureLevel:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "safeDeviceService"

    .line 158
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getBluetoothSpeedMetrics()Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "BleAverageSpeed"

    .line 159
    iget-wide v2, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskSpeed:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BleAverageTimeInQueue"

    .line 160
    iget-wide v2, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->averageTaskTimeSpentInQueue:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BleCommandsSinceLastConnection"

    .line 161
    iget-wide v2, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->itemsProcessedSinceReconnection:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BleLastTaskSpeed"

    .line 162
    iget-wide v2, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskSpeed:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BleLastTaskTimeInQueue"

    .line 163
    iget-wide v2, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->lastTaskTimeSpentInQueue:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "BleQueueSize"

    .line 164
    iget-wide v2, v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMetrics;->currentQueueSize:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/model/Report;->setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_2
    new-instance v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onInstabugReportCreated$setLocationKey$1;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onInstabugReportCreated$setLocationKey$1;-><init>(Lcom/instabug/library/model/Report;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    const-string v1, "Destination"

    .line 174
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v2}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->getDestination()Lbike/smarthalo/app/models/SHLocation;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Origin"

    .line 175
    iget-object v2, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->directionController:Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;

    invoke-interface {v2}, Lbike/smarthalo/app/controllers/controllerContracts/DirectionControllerContract;->getOrigin()Lbike/smarthalo/app/models/SHLocation;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->locationManager:Lbike/smarthalo/app/managers/contracts/LocationManagerContract;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lbike/smarthalo/app/managers/contracts/LocationManagerContract;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "Location"

    const-wide/16 v3, 0x0

    .line 177
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lbike/smarthalo/app/models/SHLocation;->buildSHLocation(Landroid/location/Location;Ljava/lang/Long;)Lbike/smarthalo/app/models/SHLocation;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 180
    :cond_3
    invoke-static {}, Lcom/instabug/library/Instabug;->resetTags()V

    .line 181
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getUserAuthLevelString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    new-array v3, v2, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-virtual {p1, v3}, Lcom/instabug/library/model/Report;->addTag([Ljava/lang/String;)V

    .line 182
    :cond_4
    new-array v0, v2, [Ljava/lang/String;

    invoke-direct {p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getEnvironmentString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-virtual {p1, v0}, Lcom/instabug/library/model/Report;->addTag([Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/instabug/library/Instabug;->clearFileAttachment()V

    const/4 v0, 0x0

    .line 189
    invoke-static {p0, v1, v2, v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getStmLogFile$default(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;ZILjava/lang/Object;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Lcom/instabug/library/model/Report;->addFileAttachment(Landroid/net/Uri;Ljava/lang/String;)V

    .line 190
    :cond_5
    invoke-static {p0, v1, v2, v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->getBleLogsFile$default(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;ZILjava/lang/Object;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/instabug/library/model/Report;->addFileAttachment(Landroid/net/Uri;Ljava/lang/String;)V

    .line 193
    :cond_6
    invoke-virtual {p1}, Lcom/instabug/library/model/Report;->getConsoleLog()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final getConnectionStateSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getNonFatalCrashSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 48
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->nonFatalCrashSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getStmCrashSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 49
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmCrashSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getStmLogSubscription()Lio/reactivex/disposables/Disposable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 47
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogSubscription:Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public final getStmLogs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogs:Ljava/util/List;

    return-object v0
.end method

.method public final isDeviceConnected()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->isDeviceConnected:Z

    return v0
.end method

.method public onDispose()V
    .locals 1

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 83
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmCrashSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 86
    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onDispose$1;->INSTANCE:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onDispose$1;

    check-cast v0, Lcom/instabug/library/model/Report$OnReportCreatedListener;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->onReportSubmitHandler(Lcom/instabug/library/model/Report$OnReportCreatedListener;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    .line 71
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 72
    new-instance v1, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onStart$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onStart$1;-><init>(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    .line 77
    new-instance v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onStart$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$onStart$2;-><init>(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;)V

    check-cast v0, Lcom/instabug/library/model/Report$OnReportCreatedListener;

    invoke-static {v0}, Lcom/instabug/library/Instabug;->onReportSubmitHandler(Lcom/instabug/library/model/Report$OnReportCreatedListener;)V

    return-void
.end method

.method public final sendSentryReport(Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;)V
    .locals 1
    .param p1    # Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "smartHaloOSCrash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$sendSentryReport$1;-><init>(Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrash;)V

    check-cast v0, Lio/sentry/ScopeCallback;

    invoke-static {v0}, Lio/sentry/Sentry;->withScope(Lio/sentry/ScopeCallback;)V

    return-void
.end method

.method public final setConnectionStateSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 46
    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setDeviceConnected(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->isDeviceConnected:Z

    return-void
.end method

.method public final setNonFatalCrashSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 48
    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->nonFatalCrashSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setStmCrashSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 49
    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmCrashSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setStmLogSubscription(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setStmLogs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->stmLogs:Ljava/util/List;

    return-void
.end method
