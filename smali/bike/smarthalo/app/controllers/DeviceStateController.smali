.class public Lbike/smarthalo/app/controllers/DeviceStateController;
.super Ljava/lang/Object;
.source "DeviceStateController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;


# static fields
.field public static final CONNECTION_SOURCE_DEBOUNCE_TIME:J = 0xc8L

.field public static final DEFAULT_OLED_BRIGHTNESS:I = 0x64

.field public static final DEFAULT_OLED_CONTRAST:I = 0x32

.field private static final TAG:Ljava/lang/String; = "DeviceStateController"


# instance fields
.field private activityCloudManager:Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;

.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

.field private bootloaderInfo:Lbike/smarthalo/app/models/BootloaderInfo;

.field private bootloaderInfoSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/BootloaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

.field private final connectionStateReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field private deviceConnectionActivitySubscription:Lio/reactivex/disposables/Disposable;

.field private deviceConnectionSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private deviceEventsSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private deviceServiceSubscription:Lio/reactivex/disposables/Disposable;

.field private deviceServiceUpdateReceiver:Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;

.field private deviceState:Lbike/smarthalo/app/models/DeviceState;

.field private deviceStateSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private deviceStateSubscription:Lio/reactivex/disposables/Disposable;

.field private jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

.field private lastConnectionStart:Ljava/lang/Long;

.field private final onBootloaderDetected:Landroid/content/BroadcastReceiver;

.field private onSmartHaloMovementSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation
.end field

.field private userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

.field private userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/services/JobServiceCreator;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;

    invoke-direct {v0}, Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceUpdateReceiver:Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;

    .line 75
    invoke-static {}, Lbike/smarthalo/app/models/BootloaderInfo;->getEmptyValue()Lbike/smarthalo/app/models/BootloaderInfo;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfo:Lbike/smarthalo/app/models/BootloaderInfo;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->lastConnectionStart:Ljava/lang/Long;

    .line 79
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceState:Lbike/smarthalo/app/models/DeviceState;

    .line 220
    new-instance v0, Lbike/smarthalo/app/controllers/DeviceStateController$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/DeviceStateController$1;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->onBootloaderDetected:Landroid/content/BroadcastReceiver;

    .line 231
    new-instance v0, Lbike/smarthalo/app/controllers/DeviceStateController$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/controllers/DeviceStateController$2;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionStateReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->context:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 111
    iput-object p3, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    .line 112
    iput-object p4, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    .line 113
    iput-object p5, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->activityCloudManager:Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;

    .line 114
    iput-object p6, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 115
    iput-object p7, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 116
    iput-object p8, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    .line 118
    invoke-interface {p2}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object p1

    sget-object p3, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    new-instance p3, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p3}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p3, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceEventsSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 123
    invoke-static {p2}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p3

    invoke-virtual {p3}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p3

    iput-object p3, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionSource:Lio/reactivex/processors/FlowableProcessor;

    .line 124
    iget-object p3, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p3, p1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 126
    invoke-static {p2}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSource:Lio/reactivex/processors/FlowableProcessor;

    .line 127
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-static {}, Lbike/smarthalo/app/models/DeviceState;->getEmptyValue()Lbike/smarthalo/app/models/DeviceState;

    move-result-object p3

    invoke-virtual {p1, p3}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 129
    invoke-static {}, Lio/reactivex/processors/PublishProcessor;->create()Lio/reactivex/processors/PublishProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/PublishProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->onSmartHaloMovementSource:Lio/reactivex/processors/FlowableProcessor;

    .line 131
    invoke-static {p2}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfoSource:Lio/reactivex/processors/FlowableProcessor;

    .line 132
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfoSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-static {}, Lbike/smarthalo/app/models/BootloaderInfo;->getEmptyValue()Lbike/smarthalo/app/models/BootloaderInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 134
    sget-object p1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/models/BootloaderInfo;
    .locals 0

    .line 54
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfo:Lbike/smarthalo/app/models/BootloaderInfo;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/app/models/BootloaderInfo;)Lbike/smarthalo/app/models/BootloaderInfo;
    .locals 0

    .line 54
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfo:Lbike/smarthalo/app/models/BootloaderInfo;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/controllers/DeviceStateController;)Lio/reactivex/processors/FlowableProcessor;
    .locals 0

    .line 54
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfoSource:Lio/reactivex/processors/FlowableProcessor;

    return-object p0
.end method

.method static synthetic access$200(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 0

    .line 54
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-object p0
.end method

.method static synthetic access$202(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/DeviceConnectionState;)Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 0

    .line 54
    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-object p1
.end method

.method static synthetic access$300(Lbike/smarthalo/app/controllers/DeviceStateController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionSequence()V

    return-void
.end method

.method static synthetic access$400(Lbike/smarthalo/app/controllers/DeviceStateController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->disconnectionSequence()V

    return-void
.end method

.method static synthetic access$500(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;
    .locals 0

    .line 54
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    return-object p0
.end method

.method static synthetic access$600(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 0

    .line 54
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object p0
.end method

.method static synthetic access$700(Lbike/smarthalo/app/controllers/DeviceStateController;)Lbike/smarthalo/app/services/JobServiceCreator;
    .locals 0

    .line 54
    iget-object p0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    return-object p0
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/services/JobServiceCreator;)Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;
    .locals 10

    .line 97
    new-instance v9, Lbike/smarthalo/app/controllers/DeviceStateController;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lbike/smarthalo/app/controllers/DeviceStateController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/services/JobServiceCreator;)V

    return-object v9
.end method

.method private clearDeviceConnectionActivitySubscription()V
    .locals 1

    .line 145
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionActivitySubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionActivitySubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearDeviceServiceSubscription()V
    .locals 1

    .line 138
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearDeviceStateSubscription()V
    .locals 1

    .line 152
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 153
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private connectionSequence()V
    .locals 2

    .line 265
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionSource:Lio/reactivex/processors/FlowableProcessor;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 266
    invoke-static {}, Lbike/smarthalo/app/models/BootloaderInfo;->getEmptyValue()Lbike/smarthalo/app/models/BootloaderInfo;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfo:Lbike/smarthalo/app/models/BootloaderInfo;

    .line 267
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfoSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfo:Lbike/smarthalo/app/models/BootloaderInfo;

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->lastConnectionStart:Ljava/lang/Long;

    .line 270
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->updateDeviceName()V

    .line 271
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->updateDeviceState()V

    .line 272
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->setDefaultOledParams()V

    .line 273
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->manageDeviceInformationOnConnection()V

    .line 274
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->observeDeviceNotifications()V

    return-void
.end method

.method private disconnectionSequence()V
    .locals 2

    .line 278
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionSource:Lio/reactivex/processors/FlowableProcessor;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSource:Lio/reactivex/processors/FlowableProcessor;

    invoke-static {}, Lbike/smarthalo/app/models/DeviceState;->getEmptyValue()Lbike/smarthalo/app/models/DeviceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->lastConnectionStart:Ljava/lang/Long;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection;->getDisconnectionEvent(Ljava/lang/Long;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->lastConnectionStart:Ljava/lang/Long;

    .line 282
    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceState:Lbike/smarthalo/app/models/DeviceState;

    .line 283
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceEventsSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method static synthetic lambda$null$7(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 463
    sget-object p0, Lbike/smarthalo/app/controllers/DeviceStateController;->TAG:Ljava/lang/String;

    const-string v0, "Result"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$null$8(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 464
    sget-object p0, Lbike/smarthalo/app/controllers/DeviceStateController;->TAG:Ljava/lang/String;

    const-string v0, "Error"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$observeDeviceMovement$2(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$observeDeviceMovement$3(Lbike/smarthalo/app/controllers/DeviceStateController;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->onSmartHaloMovementSource:Lio/reactivex/processors/FlowableProcessor;

    new-instance v0, Lbike/smarthalo/app/models/Ping;

    invoke-direct {v0}, Lbike/smarthalo/app/models/Ping;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$observeDeviceService$0(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    .line 165
    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, v0, :cond_0

    .line 166
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionSequence()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$observeDeviceStateEvent$1(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/SHDeviceState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-static {p1}, Lbike/smarthalo/app/models/DeviceState;->fromSHDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState;)Lbike/smarthalo/app/models/DeviceState;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceState:Lbike/smarthalo/app/models/DeviceState;

    .line 206
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceState:Lbike/smarthalo/app/models/DeviceState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$observeFirstMovementOnConnection$5(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$observeFirstMovementOnConnection$6(Lbike/smarthalo/app/controllers/DeviceStateController;Ljava/lang/Boolean;)Lorg/reactivestreams/Publisher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 365
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->getAndObserveSmartHaloMovement()Lio/reactivex/Flowable;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lio/reactivex/Flowable;->take(J)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$sendDeviceConnectionActivity$9(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/DeviceInformation;Lbike/smarthalo/app/models/DeviceState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->clearDeviceStateSubscription()V

    .line 456
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 458
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->clearDeviceConnectionActivitySubscription()V

    .line 459
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->activityCloudManager:Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;

    iget-object v0, v0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    .line 460
    invoke-interface {v1, p1, v0, p2}, Lbike/smarthalo/app/managers/contracts/ActivityCloudManagerContract;->sendConnectionActivity(Lbike/smarthalo/sdk/models/DeviceInformation;Ljava/lang/String;Lbike/smarthalo/app/models/DeviceState;)Lio/reactivex/Single;

    move-result-object p1

    .line 461
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$fPFprL0iicU3SwzSKiGW5_fHrTQ;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$fPFprL0iicU3SwzSKiGW5_fHrTQ;

    sget-object v0, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$ctFDDEqY5MkIsQBDfn7ROYKedeg;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$ctFDDEqY5MkIsQBDfn7ROYKedeg;

    .line 462
    invoke-virtual {p1, p2, v0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionActivitySubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateDeviceState$4(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/SHDeviceState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-static {p1}, Lbike/smarthalo/app/models/DeviceState;->fromSHDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState;)Lbike/smarthalo/app/models/DeviceState;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceState:Lbike/smarthalo/app/models/DeviceState;

    .line 323
    iget-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSource:Lio/reactivex/processors/FlowableProcessor;

    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceState:Lbike/smarthalo/app/models/DeviceState;

    invoke-virtual {p1, v0}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private manageDeviceInformationOnConnection()V
    .locals 2

    .line 287
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/DeviceStateController;->sendDeviceConnectionActivity(Lbike/smarthalo/sdk/models/DeviceInformation;)V

    .line 292
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/DeviceStateController;->updateUserDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation;)V

    .line 293
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    invoke-static {v0}, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection;->getConnectionEvent(Lbike/smarthalo/sdk/models/DeviceModel;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {v1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    :cond_0
    return-void
.end method

.method private observeDeviceMovement(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;)V
    .locals 2
    .param p1    # Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 212
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceEventsSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 214
    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;->observerMovement()Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Zd08_Ue1Rhis4Js1h4cDaVsv2P8;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Zd08_Ue1Rhis4Js1h4cDaVsv2P8;

    .line 215
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$rVbAIWGE4han7vpOadTQI31jzT0;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$rVbAIWGE4han7vpOadTQI31jzT0;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    .line 216
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private observeDeviceNotifications()V
    .locals 1

    .line 192
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getBleNotificationController()Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;

    move-result-object v0

    .line 195
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/DeviceStateController;->observeDeviceStateEvent(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;)V

    .line 196
    invoke-direct {p0, v0}, Lbike/smarthalo/app/controllers/DeviceStateController;->observeDeviceMovement(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;)V

    :cond_0
    return-void
.end method

.method private observeDeviceService()V
    .locals 2

    .line 159
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->clearDeviceServiceSubscription()V

    .line 161
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 162
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->observeDeviceService()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$eY6QV1TXeFe9CCc9vuGiU9Zs3Gs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$eY6QV1TXeFe9CCc9vuGiU9Zs3Gs;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    .line 163
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private observeDeviceStateEvent(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;)V
    .locals 2
    .param p1    # Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 201
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceEventsSubscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 203
    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;->observeDeviceState()Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Q-L327JctUalcOK9jhE--EqzT08;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Q-L327JctUalcOK9jhE--EqzT08;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    .line 204
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 201
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private sendDeviceConnectionActivity(Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 3

    .line 449
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->clearDeviceStateSubscription()V

    .line 450
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->getAndObserveDeviceState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 451
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 452
    invoke-virtual {v0, v1, v2}, Lio/reactivex/Flowable;->skip(J)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$EhxhwnXkjGO4iTxx13mMcUlZ6ME;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$EhxhwnXkjGO4iTxx13mMcUlZ6ME;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/models/DeviceInformation;)V

    .line 453
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setDefaultOledParams()V
    .locals 3

    .line 298
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 300
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setOledBrightness(ILbike/smarthalo/sdk/CmdCallback;)V

    const/16 v1, 0x32

    .line 301
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setOledContrast(ILbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method

.method private updateDeviceState()V
    .locals 2

    .line 315
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Xikx0TE_7CBAd2HZBDHJOEx22fw;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$Xikx0TE_7CBAd2HZBDHJOEx22fw;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;)V

    :cond_0
    return-void
.end method

.method private updateUserDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 4

    .line 423
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v0

    .line 424
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 425
    iget-object v2, v0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v3

    .line 427
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    iget-object v0, v0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHUser;->realmSet$deviceId(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbike/smarthalo/app/models/SHUser;->setDeviceModel(Lbike/smarthalo/sdk/models/DeviceModel;)V

    .line 432
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->saveUser(Lbike/smarthalo/app/models/SHUser;)V

    .line 433
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v2, "deviceModel"

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v3

    invoke-static {v3}, Lbike/smarthalo/app/analytics/AnalyticsUserProperties;->getDeviceModelUserProperty(Lbike/smarthalo/sdk/models/DeviceModel;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendUserPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(I)V

    .line 437
    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    sget-object v2, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    .line 438
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->getSH2PairingEvent(Ljava/lang/Integer;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$id()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->deviceSerials:Lbike/smarthalo/sdk/models/DeviceSerials;

    .line 439
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->getSH1PairingEvent(Ljava/lang/Integer;Ljava/lang/String;Lbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;

    move-result-object v0

    .line 441
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->jobServiceCreator:Lbike/smarthalo/app/services/JobServiceCreator;

    const/16 v2, 0x9

    invoke-virtual {v0}, Lbike/smarthalo/app/api/requests/SHDeviceConnectionEvent;->asPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lbike/smarthalo/app/services/JobServiceCreator;->createJobService(ILandroid/os/PersistableBundle;)V

    .line 443
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v1

    invoke-static {v1}, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection;->getDevicePairedEvent(Lbike/smarthalo/sdk/models/DeviceModel;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 444
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/analytics/connection/AnalyticsConnection;->getDevicePairedEventString(Lbike/smarthalo/sdk/models/DeviceModel;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public forgetDevice(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    new-instance v1, Lbike/smarthalo/app/controllers/DeviceStateController$3;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/controllers/DeviceStateController$3;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->resetPasswordAndDisconnect(Lbike/smarthalo/sdk/CmdCallback;)V

    goto :goto_0

    .line 418
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail()V

    :goto_0
    return-void
.end method

.method public getAndObserveBootloaderInfo()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/BootloaderInfo;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfoSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public getAndObserveDeviceConnection()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceConnectionSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/processors/FlowableProcessor;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveDeviceState()Lio/reactivex/Flowable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/DeviceState;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSource:Lio/reactivex/processors/FlowableProcessor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/processors/FlowableProcessor;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public getAndObserveSmartHaloMovement()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->onSmartHaloMovementSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public getBootloaderInfo()Lbike/smarthalo/app/models/BootloaderInfo;
    .locals 1

    .line 369
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->bootloaderInfo:Lbike/smarthalo/app/models/BootloaderInfo;

    return-object v0
.end method

.method public getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;
    .locals 2

    .line 381
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 307
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getDeviceState()Lbike/smarthalo/app/models/DeviceState;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 343
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceState:Lbike/smarthalo/app/models/DeviceState;

    return-object v0
.end method

.method public getIsConnected()Z
    .locals 2

    .line 472
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public observeFirstMovementOnConnection()Lio/reactivex/Flowable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/Ping;",
            ">;"
        }
    .end annotation

    .line 363
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$6OBP4NW2FQglGLT__UP5tc4DPt0;->INSTANCE:Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$6OBP4NW2FQglGLT__UP5tc4DPt0;

    .line 364
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$1HTOFE3vvSrRrq2zT4oAboMQzrE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$DeviceStateController$1HTOFE3vvSrRrq2zT4oAboMQzrE;-><init>(Lbike/smarthalo/app/controllers/DeviceStateController;)V

    .line 365
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v0

    return-object v0
.end method

.method public onDispose()V
    .locals 2

    .line 182
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->onBootloaderDetected:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceUpdateReceiver:Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->clearDeviceServiceSubscription()V

    .line 187
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->clearDeviceConnectionActivitySubscription()V

    .line 188
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->clearDeviceStateSubscription()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 173
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->connectionStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "bike.smarthalo.sdk.BROADCAST_CONNECTION_STATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->onBootloaderDetected:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "bike.smarthalo.sdk.BROADCAST_SH_BL_ADDRESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceUpdateReceiver:Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;

    invoke-static {}, Lbike/smarthalo/app/receivers/SHDeviceServiceUpdateReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->observeDeviceService()V

    return-void
.end method

.method public refreshDeviceState()Lio/reactivex/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Lbike/smarthalo/app/models/DeviceState;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->getIsConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/DeviceStateController;->updateDeviceState()V

    .line 332
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceStateSource:Lio/reactivex/processors/FlowableProcessor;

    const-wide/16 v1, 0x1

    .line 333
    invoke-virtual {v0, v1, v2}, Lio/reactivex/processors/FlowableProcessor;->skip(J)Lio/reactivex/Flowable;

    move-result-object v0

    .line 334
    invoke-static {}, Lbike/smarthalo/app/models/DeviceState;->getEmptyValue()Lbike/smarthalo/app/models/DeviceState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->first(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0

    .line 336
    :cond_0
    invoke-static {}, Lbike/smarthalo/app/models/DeviceState;->getEmptyValue()Lbike/smarthalo/app/models/DeviceState;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public requestBootloader()V
    .locals 3

    .line 373
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 375
    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->requestBootloader(Lbike/smarthalo/sdk/CmdCallback;Z)V

    :cond_0
    return-void
.end method

.method public updateDeviceName()V
    .locals 3

    .line 255
    iget-object v0, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->userStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/UserStorageContract;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lbike/smarthalo/app/controllers/DeviceStateController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 259
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$firstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->config_name([BLbike/smarthalo/sdk/CmdCallback;)V

    :cond_0
    return-void
.end method
