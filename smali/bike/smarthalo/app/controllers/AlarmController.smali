.class public Lbike/smarthalo/app/controllers/AlarmController;
.super Ljava/lang/Object;
.source "AlarmController.java"

# interfaces
.implements Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;


# instance fields
.field private alarmTriggersCountSource:Lio/reactivex/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/processors/FlowableProcessor<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private context:Landroid/content/Context;

.field private deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

.field private deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController;->context:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lbike/smarthalo/app/controllers/AlarmController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    .line 46
    iput-object p3, p0, Lbike/smarthalo/app/controllers/AlarmController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 47
    iput-object p4, p0, Lbike/smarthalo/app/controllers/AlarmController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const/4 p1, 0x1

    .line 49
    invoke-static {p1}, Lio/reactivex/processors/ReplayProcessor;->createWithSize(I)Lio/reactivex/processors/ReplayProcessor;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/processors/ReplayProcessor;->toSerialized()Lio/reactivex/processors/FlowableProcessor;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController;->alarmTriggersCountSource:Lio/reactivex/processors/FlowableProcessor;

    .line 50
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController;->alarmTriggersCountSource:Lio/reactivex/processors/FlowableProcessor;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static buildController(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)Lbike/smarthalo/app/controllers/controllerContracts/AlarmControllerContract;
    .locals 1

    .line 58
    new-instance v0, Lbike/smarthalo/app/controllers/AlarmController;

    invoke-direct {v0, p0, p1, p2, p3}, Lbike/smarthalo/app/controllers/AlarmController;-><init>(Landroid/content/Context;Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;Lbike/smarthalo/app/analytics/AnalyticsContract;)V

    return-object v0
.end method

.method private clearConnectionSubscription()V
    .locals 1

    .line 72
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private fetchAlarmReport()V
    .locals 2

    .line 92
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IxVgD6vBOusb3R8-0p-eWZ404VU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IxVgD6vBOusb3R8-0p-eWZ404VU;-><init>(Lbike/smarthalo/app/controllers/AlarmController;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getAlarmReport(Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$fetchAlarmReport$1(Lbike/smarthalo/app/controllers/AlarmController;Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;)V
    .locals 2

    .line 96
    iget-boolean v0, p1, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->hasValue:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->alarmTriggersCountSource:Lio/reactivex/processors/FlowableProcessor;

    iget v1, p1, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->triggerCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/processors/FlowableProcessor;->onNext(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    iget v1, p1, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->triggerCount:I

    invoke-static {v1}, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;->getAlarmSoundedEvent(I)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 99
    iget-boolean p1, p1, Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport;->isArmed:Z

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lbike/smarthalo/app/controllers/AlarmController;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v0, "Alarm_Armed"

    invoke-interface {p1, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$observeConnectionState$0(Lbike/smarthalo/app/controllers/AlarmController;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AlarmController;->fetchAlarmReport()V

    const/4 p1, 0x0

    .line 86
    invoke-virtual {p0, p1, p1, p1, p1}, Lbike/smarthalo/app/controllers/AlarmController;->updateAlarmState(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V

    :cond_0
    return-void
.end method

.method private observeConnectionState()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AlarmController;->clearConnectionSubscription()V

    .line 81
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->deviceStateController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;

    .line 82
    invoke-interface {v0}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceStateControllerContract;->getAndObserveDeviceConnection()Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IbsdeFQ9iO5XDKIgpED05mfzHeA;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/controllers/-$$Lambda$AlarmController$IbsdeFQ9iO5XDKIgpED05mfzHeA;-><init>(Lbike/smarthalo/app/controllers/AlarmController;)V

    .line 83
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public getAndObserveAlarmTriggersCount()Lio/reactivex/Flowable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lbike/smarthalo/app/controllers/AlarmController;->alarmTriggersCountSource:Lio/reactivex/processors/FlowableProcessor;

    return-object v0
.end method

.method public onDispose()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AlarmController;->clearConnectionSubscription()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lbike/smarthalo/app/controllers/AlarmController;->observeConnectionState()V

    return-void
.end method

.method public updateAlarmState(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V
    .locals 11

    .line 108
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lbike/smarthalo/app/controllers/AlarmController;->deviceServiceController:Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;

    invoke-interface {v1}, Lbike/smarthalo/app/controllers/controllerContracts/DeviceServiceControllerContract;->getDeviceService()Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    if-eqz p3, :cond_1

    .line 113
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmAggressive()Z

    move-result p1

    :goto_1
    move v9, p1

    if-eqz p2, :cond_2

    .line 114
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmArmed()Z

    move-result p1

    :goto_2
    move v8, p1

    .line 117
    new-instance p1, Lbike/smarthalo/app/controllers/AlarmController$1;

    move-object v2, p1

    move-object v3, p0

    move-object v4, p4

    move-object v6, p3

    move-object v7, v1

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lbike/smarthalo/app/controllers/AlarmController$1;-><init>(Lbike/smarthalo/app/controllers/AlarmController;Lbike/smarthalo/app/models/AlarmUpdateCallback;Ljava/lang/String;Ljava/lang/Boolean;Lbike/smarthalo/sdk/SHDeviceServiceBinder;ZZLjava/lang/Boolean;)V

    invoke-virtual {v1, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->get_alarm_seed(Lbike/smarthalo/sdk/CmdCallback;)V

    :cond_3
    return-void
.end method
