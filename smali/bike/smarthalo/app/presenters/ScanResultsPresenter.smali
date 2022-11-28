.class public Lbike/smarthalo/app/presenters/ScanResultsPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "ScanResultsPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;


# instance fields
.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private dfuAvailabilitySubscription:Lio/reactivex/disposables/Disposable;

.field private view:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;

    .line 46
    new-instance p2, Lbike/smarthalo/app/presenters/ScanResultsPresenter$1;

    invoke-direct {p2, p0}, Lbike/smarthalo/app/presenters/ScanResultsPresenter$1;-><init>(Lbike/smarthalo/app/presenters/ScanResultsPresenter;)V

    invoke-static {p2, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/ScanResultsPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 36
    iget-object p0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 36
    iput-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->subscribeToDFUAvailability(Lio/reactivex/Flowable;)V

    return-void
.end method

.method public static buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;
    .locals 1

    .line 73
    new-instance v0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;-><init>(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;)V

    return-object v0
.end method

.method private clearDFUAvailabilitySubscription()V
    .locals 1

    .line 77
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->dfuAvailabilitySubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->dfuAvailabilitySubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$subscribeToDFUAvailability$0(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lbike/smarthalo/app/models/dfu/DfuAvailability;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Required:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq p1, v0, :cond_0

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredForTester:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-eq p1, v0, :cond_0

    sget-object v0, Lbike/smarthalo/app/models/dfu/DfuAvailability;->RequiredGolden:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne p1, v0, :cond_1

    .line 95
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;->onClose()V

    :cond_1
    return-void
.end method

.method private subscribeToDFUAvailability(Lio/reactivex/Flowable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuAvailability;",
            ">;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->clearDFUAvailabilitySubscription()V

    .line 88
    invoke-virtual {p1}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 89
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 90
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$ScanResultsPresenter$wD9fVRO0Y1FNJERUrXPtnhQ-C4E;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$ScanResultsPresenter$wD9fVRO0Y1FNJERUrXPtnhQ-C4E;-><init>(Lbike/smarthalo/app/presenters/ScanResultsPresenter;)V

    .line 91
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->dfuAvailabilitySubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public forgetDevice(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getIsConnected()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    new-instance v1, Lbike/smarthalo/app/presenters/ScanResultsPresenter$2;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/app/presenters/ScanResultsPresenter$2;-><init>(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->forgetDevice(Lbike/smarthalo/sdk/CmdCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;->onComplete(Z)V

    :goto_0
    return-void
.end method

.method public onNewDevices(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lbike/smarthalo/sdk/models/BleDevice;",
            ">;)",
            "Ljava/util/List<",
            "Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbike/smarthalo/sdk/models/BleDevice;

    .line 125
    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/BleDevice;->isDeviceOwned()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->context:Landroid/content/Context;

    const v8, 0x7f1100a7

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v10, v3, Lbike/smarthalo/sdk/models/BleDevice;->name:Ljava/lang/String;

    aput-object v10, v9, v6

    iget-object v6, v3, Lbike/smarthalo/sdk/models/BleDevice;->deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v6}, Lbike/smarthalo/sdk/models/DeviceModel;->getSimpleValue()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/BleDevice;->getShortenedDeviceId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v7

    invoke-virtual {v4, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    new-instance v5, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;

    sget-object v6, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;->OwnedDevice:Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;

    invoke-direct {v5, v4, v3, v6}, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;-><init>(Ljava/lang/String;Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_0
    iget-object v4, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->context:Landroid/content/Context;

    const v8, 0x7f1100a9

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v9, v3, Lbike/smarthalo/sdk/models/BleDevice;->deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v9}, Lbike/smarthalo/sdk/models/DeviceModel;->getSimpleValue()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/BleDevice;->getShortenedDeviceId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-virtual {v4, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 130
    new-instance v5, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;

    sget-object v6, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;->OpenDevice:Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;

    invoke-direct {v5, v4, v3, v6}, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;-><init>(Ljava/lang/String;Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_2

    .line 135
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->context:Landroid/content/Context;

    const v4, 0x7f1103bd

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v4, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;

    sget-object v5, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;->OpenDeviceTitle:Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;

    invoke-direct {v4, p1, v3, v5}, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;-><init>(Ljava/lang/String;Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 141
    iget-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->context:Landroid/content/Context;

    const v1, 0x7f110309

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;

    sget-object v4, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;->OwnedDeviceTitle:Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;

    invoke-direct {v1, p1, v3, v4}, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;-><init>(Ljava/lang/String;Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/PresentationModels/DeviceListItem$DeviceListItemType;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v2
.end method

.method public onViewPaused()V
    .locals 1

    .line 69
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method public onViewResumed()V
    .locals 1

    .line 64
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method
