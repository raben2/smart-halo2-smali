.class public Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "NotificationDrawerPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private connectionStateSubscription:Lio/reactivex/disposables/Disposable;

.field private deviceStateSubscription:Lio/reactivex/disposables/Disposable;

.field private directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private lowBatterySubscription:Lio/reactivex/disposables/Disposable;

.field private reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field private settingsSubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    .line 47
    iput-object p3, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 48
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->setUpCentralServiceConnection()V

    .line 49
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->setUpDirectionServiceConnection()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 31
    iget-object p0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 31
    iput-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;
    .locals 0

    .line 31
    iget-object p0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    return-object p0
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lio/reactivex/Flowable;Lio/reactivex/Flowable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->subscribeToConnectionState(Lio/reactivex/Flowable;Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->subscribeToDeviceState(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$400(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->subscribeToLowBatteryNotification(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$500(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearAllSubscriptions()V

    return-void
.end method

.method static synthetic access$600(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;
    .locals 0

    .line 31
    iget-object p0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    return-object p0
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;
    .locals 1

    .line 53
    new-instance v0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)V

    return-object v0
.end method

.method private clearAllSubscriptions()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearLowBatterySubscription()V

    .line 123
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearDeviceStateSubscription()V

    .line 124
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearConnectionStateSubscription()V

    .line 125
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearSettingsSubscription()V

    return-void
.end method

.method private clearConnectionStateSubscription()V
    .locals 1

    .line 182
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearDeviceStateSubscription()V
    .locals 1

    .line 175
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearLowBatterySubscription()V
    .locals 1

    .line 189
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->lowBatterySubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->lowBatterySubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearSettingsSubscription()V
    .locals 1

    .line 196
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->settingsSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->settingsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$subscribeToConnectionState$1(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lbike/smarthalo/app/models/DeviceOwnershipState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-boolean v0, p1, Lbike/smarthalo/app/models/DeviceOwnershipState;->isConnected:Z

    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->updateDeviceInformationView(Z)V

    .line 141
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    iget-boolean v1, p1, Lbike/smarthalo/app/models/DeviceOwnershipState;->isConnected:Z

    iget-boolean p1, p1, Lbike/smarthalo/app/models/DeviceOwnershipState;->hasDevice:Z

    invoke-interface {v0, v1, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->onConnectionStateChanged(ZZ)V

    return-void
.end method

.method public static synthetic lambda$subscribeToDeviceState$2(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lbike/smarthalo/app/models/DeviceState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->updateDeviceState(Lbike/smarthalo/app/models/DeviceState;)V

    return-void
.end method

.method public static synthetic lambda$subscribeToLowBatteryNotification$3(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->updateLowBatteryNotification(Z)V

    return-void
.end method

.method public static synthetic lambda$subscribeToSettingsUpdate$0(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;Lbike/smarthalo/app/models/SHSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->updateStatusBar(Lbike/smarthalo/app/models/SHSettings;)V

    return-void
.end method

.method private setUpCentralServiceConnection()V
    .locals 2

    .line 85
    new-instance v0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$1;-><init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private setUpDirectionServiceConnection()V
    .locals 2

    .line 108
    new-instance v0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter$2;-><init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getDirectionServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private subscribeToConnectionState(Lio/reactivex/Flowable;Lio/reactivex/Flowable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearConnectionStateSubscription()V

    .line 131
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc8

    .line 133
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 134
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 136
    invoke-virtual {p2, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p2

    .line 137
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p2

    sget-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$lVdOJkijlZ_wn6I14222IaWyC_U;

    .line 131
    invoke-static {p1, p2, v0}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance p2, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$aXqozfJBFtCg7_uzGCQ-kkgsVyg;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$aXqozfJBFtCg7_uzGCQ-kkgsVyg;-><init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V

    .line 139
    invoke-virtual {p1, p2}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->connectionStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private subscribeToDeviceState(Lio/reactivex/Flowable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/DeviceState;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearDeviceStateSubscription()V

    .line 150
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc8

    .line 151
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 152
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$WBRe6PB5zkRjzlrLTL6gcDMsiis;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$WBRe6PB5zkRjzlrLTL6gcDMsiis;-><init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V

    .line 153
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->deviceStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private subscribeToLowBatteryNotification(Lio/reactivex/Flowable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearLowBatterySubscription()V

    .line 168
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc8

    .line 169
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 170
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$EK9SQgUq6lR61pokxIHAZUqcZ2A;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$EK9SQgUq6lR61pokxIHAZUqcZ2A;-><init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V

    .line 171
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->lowBatterySubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private subscribeToSettingsUpdate()V
    .locals 2

    .line 75
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearSettingsSubscription()V

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->reactiveStorageContract:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;->getAndObserveUserSettings()Lio/reactivex/Flowable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$EFNGGHXUKQ8QI6HOLJIbRuopBbs;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$NotificationDrawerPresenter$EFNGGHXUKQ8QI6HOLJIbRuopBbs;-><init>(Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->settingsSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private updateDeviceInformationView(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation;)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 208
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getIsConnected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserAlpha()Z
    .locals 2

    .line 203
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->getAuthLevel()Lbike/smarthalo/app/models/AuthLevel;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/models/AuthLevel;->ALPHA:Lbike/smarthalo/app/models/AuthLevel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onViewPaused()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->clearAllSubscriptions()V

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 71
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method public onViewResumed()V
    .locals 3

    .line 58
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 59
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 60
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->subscribeToSettingsUpdate()V

    .line 62
    const-class v0, Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHServiceHelper;->isServiceRunning(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->isConnected()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;->onNavigationStateChanged(ZZ)V

    :cond_0
    return-void
.end method
