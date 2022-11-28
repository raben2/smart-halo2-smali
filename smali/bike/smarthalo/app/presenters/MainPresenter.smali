.class public Lbike/smarthalo/app/presenters/MainPresenter;
.super Lbike/smarthalo/app/presenters/BasePresenter;
.source "MainPresenter.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final FIRMWARE_UPDATE_POSTPONE_TIME_DELAY_MS:J = 0xf731400L

.field private static final NEW_FEATURE_DEMO_BASE_LOCALIZED_URL:Ljava/lang/String; = "https://mobile.smarthalo.bike/%1$s/features/android-%2$s/"

.field private static final NEW_FEATURE_DEMO_BASE_URL:Ljava/lang/String; = "https://mobile.smarthalo.bike/features/android-%1$s/"

.field private static final TAG:Ljava/lang/String; = "MainPresenter"


# instance fields
.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private dfuStateSubscription:Lio/reactivex/disposables/Disposable;

.field private directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private isNavigating:Z

.field private lifecycle:Landroidx/lifecycle/Lifecycle;

.field private lifecycleAwareServiceLauncher:Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

.field private navigationStateSubscription:Lio/reactivex/disposables/Disposable;

.field private newFeaturePageShownTimestamp:J

.field private okHttpClient:Lokhttp3/OkHttpClient;

.field private systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

.field view:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;

.field private websiteAvailabilityDisposable:Lio/reactivex/disposables/Disposable;

.field private websiteAvailabilityTask:Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;


# direct methods
.method private constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V
    .locals 2

    .line 85
    invoke-direct {p0, p2}, Lbike/smarthalo/app/presenters/BasePresenter;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 53
    iput-wide v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->newFeaturePageShownTimestamp:J

    .line 87
    iput-object p3, p0, Lbike/smarthalo/app/presenters/MainPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;

    .line 88
    iput-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 89
    iput-object p4, p0, Lbike/smarthalo/app/presenters/MainPresenter;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 90
    iput-object p5, p0, Lbike/smarthalo/app/presenters/MainPresenter;->lifecycleAwareServiceLauncher:Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

    .line 91
    iput-object p6, p0, Lbike/smarthalo/app/presenters/MainPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 92
    iput-object p7, p0, Lbike/smarthalo/app/presenters/MainPresenter;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    .line 94
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 95
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->setUpCentralServiceConnection()V

    .line 96
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->setUpDirectionServiceConnection()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/presenters/MainPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->subscribeToNavigationState(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$100(Lbike/smarthalo/app/presenters/MainPresenter;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->toggleNavigationState(Z)V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/app/presenters/MainPresenter;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 50
    iget-object p0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$202(Lbike/smarthalo/app/presenters/MainPresenter;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 50
    iput-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$300(Lbike/smarthalo/app/presenters/MainPresenter;Lio/reactivex/Flowable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->subscribeToDFUState(Lio/reactivex/Flowable;)V

    return-void
.end method

.method static synthetic access$400(Lbike/smarthalo/app/presenters/MainPresenter;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->clearDFUStateSubscription()V

    return-void
.end method

.method public static buildPresenter(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;
    .locals 9

    .line 107
    new-instance v8, Lbike/smarthalo/app/presenters/MainPresenter;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lbike/smarthalo/app/presenters/MainPresenter;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;Lokhttp3/OkHttpClient;Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;Lbike/smarthalo/app/analytics/AnalyticsContract;Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;)V

    return-object v8
.end method

.method private checkForNewFeatureDemo()V
    .locals 3

    const-string v0, "LAST_DISPLAYED_FEATURE_DEMO_VERSION"

    .line 258
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.18.0"

    .line 261
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->getFeatureShowcaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->clearWebsiteAvailabilyDisposable()V

    .line 265
    new-instance v1, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;

    iget-object v2, p0, Lbike/smarthalo/app/presenters/MainPresenter;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v1, v0, v2}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;-><init>(Ljava/lang/String;Lokhttp3/OkHttpClient;)V

    .line 267
    invoke-virtual {v1}, Lbike/smarthalo/app/tasks/WebsiteAvailabilityTask;->getTaskObservable()Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$zdTaM-V4wFufJrVLBnyJK1V-9dQ;

    invoke-direct {v2, p0, v0}, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$zdTaM-V4wFufJrVLBnyJK1V-9dQ;-><init>(Lbike/smarthalo/app/presenters/MainPresenter;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->websiteAvailabilityDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private checkShouldDownloadCloudRides()V
    .locals 2

    const-string v0, "HAS_DOWNLOADED_PAST_RIDES"

    .line 238
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/JobServiceHelper;->createJobService(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private clearDFUStateSubscription()V
    .locals 1

    .line 224
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearNavigationStateSubscription()V
    .locals 1

    .line 231
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->navigationStateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 233
    iput-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->navigationStateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearWebsiteAvailabilyDisposable()V
    .locals 1

    .line 277
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->websiteAvailabilityDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 279
    iput-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->websiteAvailabilityDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private getFeatureShowcaseUrl()Ljava/lang/String;
    .locals 5

    const-string v0, "1.18.0"

    const/16 v1, 0x2e

    const/16 v2, 0x2d

    .line 253
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://mobile.smarthalo.bike/%1$s/features/android-%2$s/"

    const/4 v2, 0x2

    .line 254
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$checkForNewFeatureDemo$2(Lbike/smarthalo/app/presenters/MainPresenter;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 270
    iget-object p2, p0, Lbike/smarthalo/app/presenters/MainPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;

    invoke-interface {p2, p1}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;->loadNewFeaturePage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$eTQPOsESEiMke99VJHc0fVM0Uxg(Lbike/smarthalo/app/presenters/MainPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->toggleNavigationState(Z)V

    return-void
.end method

.method public static synthetic lambda$subscribeToDFUState$0(Lbike/smarthalo/app/presenters/MainPresenter;Lbike/smarthalo/app/models/dfu/DfuState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->shouldPromptFirmwareUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbike/smarthalo/app/models/dfu/DfuState;->availability:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    sget-object v1, Lbike/smarthalo/app/models/dfu/DfuAvailability;->Available:Lbike/smarthalo/app/models/dfu/DfuAvailability;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;

    invoke-interface {v1, p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;->onDFUStateChanged(Lbike/smarthalo/app/models/dfu/DfuState;Z)V

    return-void
.end method

.method static synthetic lambda$subscribeToNavigationState$1(Lbike/smarthalo/app/models/PresentationNavigationState;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-boolean p0, p0, Lbike/smarthalo/app/models/PresentationNavigationState;->isActive:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private setUpCentralServiceConnection()V
    .locals 2

    .line 184
    new-instance v0, Lbike/smarthalo/app/presenters/MainPresenter$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/MainPresenter$2;-><init>(Lbike/smarthalo/app/presenters/MainPresenter;)V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private setUpDirectionServiceConnection()V
    .locals 2

    .line 168
    new-instance v0, Lbike/smarthalo/app/presenters/MainPresenter$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/MainPresenter$1;-><init>(Lbike/smarthalo/app/presenters/MainPresenter;)V

    iget-object v1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getDirectionServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private shouldPromptFirmwareUpdate()Z
    .locals 6

    const-string v0, "POSTPONED_FIRMWARE_UPDATE_TIME"

    .line 354
    invoke-static {v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->getItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 357
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private subscribeToDFUState(Lio/reactivex/Flowable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/dfu/DfuState;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->clearDFUStateSubscription()V

    .line 205
    invoke-virtual {p1}, Lio/reactivex/Flowable;->distinctUntilChanged()Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    .line 206
    invoke-virtual {p1, v1, v2, v0}, Lio/reactivex/Flowable;->throttleLast(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 207
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$bsOzYlvyVMqp9406naLjcwDXxPM;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$bsOzYlvyVMqp9406naLjcwDXxPM;-><init>(Lbike/smarthalo/app/presenters/MainPresenter;)V

    .line 208
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->dfuStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private subscribeToNavigationState(Lio/reactivex/Flowable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Lbike/smarthalo/app/models/PresentationNavigationState;",
            ">;)V"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->clearNavigationStateSubscription()V

    .line 217
    sget-object v0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$FVjAWLGGgwaYP1AqFZFVR_4eG54;->INSTANCE:Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$FVjAWLGGgwaYP1AqFZFVR_4eG54;

    .line 218
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 219
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$eTQPOsESEiMke99VJHc0fVM0Uxg;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/presenters/-$$Lambda$MainPresenter$eTQPOsESEiMke99VJHc0fVM0Uxg;-><init>(Lbike/smarthalo/app/presenters/MainPresenter;)V

    .line 220
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->navigationStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private toggleNavigationState(Z)V
    .locals 1

    .line 247
    iput-boolean p1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->isNavigating:Z

    .line 248
    iget-object p1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;

    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->isNavigating:Z

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;->setUpTopBarNavigationVisuals(Z)V

    return-void
.end method


# virtual methods
.method public dontRemindLocationOff()V
    .locals 1

    .line 350
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->dontRemindLocationOn()V

    return-void
.end method

.method public dontRemindMeFitnessOff()V
    .locals 3

    .line 340
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->appStorageManager:Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;

    const-string v1, "DONT_REMIND_FITNESS_OFF"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/storageManagersContracts/AppStorageContract;->setBooleanItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public dontRemindMePowerSavingOn()V
    .locals 1

    .line 345
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->dontRemindPowerSaving()V

    return-void
.end method

.method public getIsNavigating()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->isNavigating:Z

    return v0
.end method

.method public getLatestDfuState()Lbike/smarthalo/app/models/dfu/DfuState;
    .locals 1

    .line 328
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getLatestDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    .line 329
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getLatestDfuState()Lbike/smarthalo/app/models/dfu/DfuState;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isFeatureShowCaseUrl(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "1.18.0"

    const-string v1, "https://mobile.smarthalo.bike/%1$s/features/android-%2$s/"

    const/4 v2, 0x2

    .line 319
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://mobile.smarthalo.bike/features/android-%1$s/"

    .line 320
    new-array v5, v3, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method public onNewFeaturePageShown()V
    .locals 2

    .line 301
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    const-string v1, "showcase_shown"

    invoke-static {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->newFeaturePageShownTimestamp:J

    return-void
.end method

.method public onViewCreated()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 141
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->checkForNewFeatureDemo()V

    .line 142
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->checkShouldDownloadCloudRides()V

    .line 143
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$devicePass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->isTester()Z

    move-result v0

    .line 146
    invoke-static {v1, v2, v3, v0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onViewDestroyed()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 164
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onViewPaused()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 130
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->clearWebsiteAvailabilyDisposable()V

    .line 131
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestConnectToKnownDevice(Landroid/content/Context;)V

    .line 133
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 134
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    .line 135
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->clearDFUStateSubscription()V

    .line 136
    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->clearNavigationStateSubscription()V

    return-void
.end method

.method public onViewResumed()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 112
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 113
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->directionServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    .line 115
    const-class v0, Lbike/smarthalo/app/navigation/SHDirectionService;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHServiceHelper;->isServiceRunning(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lbike/smarthalo/app/presenters/MainPresenter;->toggleNavigationState(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->shouldNotifyPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;->showPowerSavingPrompt()V

    .line 121
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->setHasViewedPowerSavingNotification()V

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->shouldNotifyLocationOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->view:Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$View;->showLocationOffPrompt()V

    .line 124
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->systemStatusManager:Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;

    invoke-interface {v0}, Lbike/smarthalo/app/controllers/systemStatus/SystemStatusManagerContract;->setHasViewedLocationNotification()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewStarted()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 157
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->lifecycleAwareServiceLauncher:Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    iget-object v2, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    invoke-static {v2}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->getActiveScanForKnownDeviceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 158
    iget-object v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->lifecycleAwareServiceLauncher:Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lbike/smarthalo/app/presenters/MainPresenter;->context:Landroid/content/Context;

    const-class v4, Lbike/smarthalo/app/services/SHCentralService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lbike/smarthalo/app/managers/LifecycleAwareServiceLauncher;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public postponeFirmwareUpdate()V
    .locals 4

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf731400

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "POSTPONED_FIRMWARE_UPDATE_TIME"

    .line 308
    invoke-static {v1, v0}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->setItemSync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHasSeenNewFeaturesPage()V
    .locals 6

    const-string v0, "LAST_DISPLAYED_FEATURE_DEMO_VERSION"

    const-string v1, "1.18.0"

    const/4 v2, 0x0

    .line 290
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/managers/storageManagers/AppStorageStaticManager;->setItemAsync(Ljava/lang/String;Ljava/lang/String;Lbike/smarthalo/app/managers/storageManagers/AppStorageManager$RealmAsyncTransactionInterface;)V

    .line 292
    iget-wide v0, p0, Lbike/smarthalo/app/presenters/MainPresenter;->newFeaturePageShownTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lbike/smarthalo/app/presenters/MainPresenter;->newFeaturePageShownTimestamp:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    .line 294
    iget-object v4, p0, Lbike/smarthalo/app/presenters/MainPresenter;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    invoke-direct {p0}, Lbike/smarthalo/app/presenters/MainPresenter;->getFeatureShowcaseUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lbike/smarthalo/app/analytics/admin/AnalyticsAdmin;->getShowCaseViewEvent(JLjava/lang/String;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v0

    invoke-interface {v4, v0}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 295
    iput-wide v2, p0, Lbike/smarthalo/app/presenters/MainPresenter;->newFeaturePageShownTimestamp:J

    :cond_0
    return-void
.end method

.method public setIsAssistingWithCalls(Z)V
    .locals 1

    const-string v0, "isAssistingCalls"

    .line 313
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->updateSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public toggleFitnessTracking(Z)V
    .locals 1

    const-string v0, "isAutoTracking"

    .line 335
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/app/presenters/MainPresenter;->updateSetting(Ljava/lang/String;Z)V

    return-void
.end method
