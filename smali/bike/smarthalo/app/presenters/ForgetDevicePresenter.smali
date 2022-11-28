.class public Lbike/smarthalo/app/presenters/ForgetDevicePresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "ForgetDevicePresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private connectionSubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;

    .line 36
    new-instance p2, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$1;-><init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 26
    iput-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->subscribeToConnectionUpdates()V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->unsubscribeFromConnectionUpdates()V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$Presenter;
    .locals 1

    .line 82
    new-instance v0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;)V

    return-object v0
.end method

.method public static synthetic lambda$subscribeToConnectionUpdates$0(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lbike/smarthalo/app/presenters/presenterContracts/ForgetDeviceContract$View;->onConnectionStateChanged(Z)V

    return-void
.end method

.method private subscribeToConnectionUpdates()V
    .locals 4

    .line 65
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveIsDeviceConnected()Lio/reactivex/Flowable;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 68
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Flowable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 69
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$wUI-rDVHCSk_gARyS58SfSez6II;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$wUI-rDVHCSk_gARyS58SfSez6II;-><init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V

    .line 70
    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private unsubscribeFromConnectionUpdates()V
    .locals 1

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->connectionSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method


# virtual methods
.method public forgetDevice(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getIsConnected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->unsubscribeFromConnectionUpdates()V

    .line 88
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    new-instance v1, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;-><init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->forgetDevice(Lbike/smarthalo/sdk/CmdCallback;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->subscribeToConnectionUpdates()V

    const/4 v0, 0x0

    .line 104
    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;->onComplete(Z)V

    :goto_0
    return-void
.end method

.method public onViewPaused()V
    .locals 1

    .line 60
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 61
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->unsubscribeFromConnectionUpdates()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 55
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method
