.class public Lbike/smarthalo/app/presenters/TapcodePresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "TapcodePresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private connectionSubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;

    .line 38
    new-instance p2, Lbike/smarthalo/app/presenters/TapcodePresenter$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/TapcodePresenter$1;-><init>(Lbike/smarthalo/app/presenters/TapcodePresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/TapcodePresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 27
    iput-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/TapcodePresenter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->subscribeToConnectionUpdates()V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/TapcodePresenter;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->clearConnectionSubscription()V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$Presenter;
    .locals 1

    .line 92
    new-instance v0, Lbike/smarthalo/app/presenters/TapcodePresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/TapcodePresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;)V

    return-object v0
.end method

.method private clearConnectionSubscription()V
    .locals 1

    .line 84
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getAlarmTapCode()Ljava/lang/String;
    .locals 1

    .line 100
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/SettingsStorageStaticManager;->getUserSettings()Lbike/smarthalo/app/models/SHSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHSettings;->realmGet$alarmCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$setTapCode$1(Lbike/smarthalo/app/presenters/TapcodePresenter;Ljava/lang/String;Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V
    .locals 1

    .line 109
    sget-object v0, Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;->Success:Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;

    if-ne p2, v0, :cond_2

    .line 110
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p2

    .line 112
    invoke-virtual {p0, p2}, Lbike/smarthalo/app/presenters/TapcodePresenter;->canUpdateSetting(Lbike/smarthalo/app/models/SHUser;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 113
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->getAlarmTapCode()Ljava/lang/String;

    move-result-object p2

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "alarmCode"

    .line 115
    invoke-virtual {p0, p2, p1}, Lbike/smarthalo/app/presenters/TapcodePresenter;->updateSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;

    const/4 p2, 0x1

    const v0, 0x7f110051

    invoke-interface {p1, p2, v0}, Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;->onFinish(ZI)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->onError()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->onError()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$subscribeToConnectionUpdates$0(Lbike/smarthalo/app/presenters/TapcodePresenter;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;

    const/4 v0, 0x0

    const v1, 0x7f11003f

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;->onFinish(ZI)V

    :cond_0
    return-void
.end method

.method private onError()V
    .locals 3

    .line 96
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;

    const/4 v1, 0x0

    const v2, 0x7f11004e

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/TapcodeContract$View;->onFinish(ZI)V

    return-void
.end method

.method private subscribeToConnectionUpdates()V
    .locals 4

    .line 68
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->clearConnectionSubscription()V

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 72
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveIsDeviceConnected()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 74
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$nbe5guBVJ2_L_X_qW5kZKqQ4POU;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$nbe5guBVJ2_L_X_qW5kZKqQ4POU;-><init>(Lbike/smarthalo/app/presenters/TapcodePresenter;)V

    .line 75
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public onViewPaused()V
    .locals 1

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 64
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->clearConnectionSubscription()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 58
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method

.method public setTapCode(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getIsConnected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lbike/smarthalo/app/presenters/TapcodePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$soKJbYfx6P9tsEpuMs0ypLPqcmM;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/presenters/-$$Lambda$TapcodePresenter$soKJbYfx6P9tsEpuMs0ypLPqcmM;-><init>(Lbike/smarthalo/app/presenters/TapcodePresenter;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->updateAlarmTapCode(Ljava/lang/String;Lbike/smarthalo/app/models/AlarmUpdateCallback;)V

    goto :goto_0

    .line 126
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/TapcodePresenter;->onError()V

    :goto_0
    return-void
.end method
