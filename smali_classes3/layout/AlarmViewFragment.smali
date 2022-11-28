.class public Llayout/AlarmViewFragment;
.super Llayout/StatusBarFragment;
.source "AlarmViewFragment.java"

# interfaces
.implements Llayout/StatusBarFragment$IHelpCardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/AlarmViewFragment$AlarmTriggerState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlarmViewFragment"

.field public static TAP_CODE_REQUEST:I = 0x1


# instance fields
.field private alarmToggledEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

.field private centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

.field private centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

.field private firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

.field private isConnected:Z

.field private subscriptions:Lio/reactivex/disposables/CompositeDisposable;

.field viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Llayout/StatusBarFragment;-><init>()V

    .line 330
    new-instance v0, Llayout/AlarmViewFragment$8;

    invoke-direct {v0, p0}, Llayout/AlarmViewFragment$8;-><init>(Llayout/AlarmViewFragment;)V

    iput-object v0, p0, Llayout/AlarmViewFragment;->alarmToggledEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    return-void
.end method

.method static synthetic access$000(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 51
    iget-object p0, p0, Llayout/AlarmViewFragment;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p0
.end method

.method static synthetic access$002(Llayout/AlarmViewFragment;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;
    .locals 0

    .line 51
    iput-object p1, p0, Llayout/AlarmViewFragment;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Llayout/AlarmViewFragment;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Llayout/AlarmViewFragment;->subscribeToIsDeviceConnected(Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V

    return-void
.end method

.method static synthetic access$200(Llayout/AlarmViewFragment;Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Llayout/AlarmViewFragment;->subscribeToAlarmTriggersUpdate(Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V

    return-void
.end method

.method static synthetic access$300(Llayout/AlarmViewFragment;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 0

    .line 51
    iget-object p0, p0, Llayout/AlarmViewFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-object p0
.end method

.method static synthetic access$400(Llayout/AlarmViewFragment;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Llayout/AlarmViewFragment;->cancelSeverityToggle(Z)V

    return-void
.end method

.method static synthetic access$500(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;
    .locals 0

    .line 51
    iget-object p0, p0, Llayout/AlarmViewFragment;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    return-object p0
.end method

.method static synthetic access$600(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;
    .locals 0

    .line 51
    iget-object p0, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    return-object p0
.end method

.method private cancelSeverityToggle(Z)V
    .locals 2

    .line 265
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 268
    new-instance v0, Llayout/AlarmViewFragment$6;

    invoke-direct {v0, p0, p1}, Llayout/AlarmViewFragment$6;-><init>(Llayout/AlarmViewFragment;Z)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private getSeverityListener()Llayout/SettingsSwitch$SettingButtonEventListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 147
    new-instance v0, Llayout/AlarmViewFragment$3;

    invoke-direct {v0, p0}, Llayout/AlarmViewFragment$3;-><init>(Llayout/AlarmViewFragment;)V

    return-object v0
.end method

.method public static synthetic lambda$U6-kwNTmUuWSCU_JfqXtiHAP0KQ(Llayout/AlarmViewFragment;Llayout/AlarmViewFragment$AlarmTriggerState;)V
    .locals 0

    invoke-direct {p0, p1}, Llayout/AlarmViewFragment;->updateRecapText(Llayout/AlarmViewFragment$AlarmTriggerState;)V

    return-void
.end method

.method public static synthetic lambda$subscribeToAlarmTriggersUpdate$1(Llayout/AlarmViewFragment;IZ)Llayout/AlarmViewFragment$AlarmTriggerState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 356
    new-instance v0, Llayout/AlarmViewFragment$AlarmTriggerState;

    invoke-direct {v0, p0, p1, p2}, Llayout/AlarmViewFragment$AlarmTriggerState;-><init>(Llayout/AlarmViewFragment;IZ)V

    return-object v0
.end method

.method public static synthetic lambda$subscribeToIsDeviceConnected$0(Llayout/AlarmViewFragment;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Llayout/AlarmViewFragment;->isConnected:Z

    return-void
.end method

.method private setRecapVisibility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->recapDescription:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->recapTile:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 395
    :cond_0
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->recapDescription:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->recapTile:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setUpCentralServiceConnection(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 129
    new-instance v0, Llayout/AlarmViewFragment$2;

    invoke-direct {v0, p0}, Llayout/AlarmViewFragment$2;-><init>(Llayout/AlarmViewFragment;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->getCentralServiceConnection(Landroid/content/ServiceConnection;Landroid/content/Context;)Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    move-result-object p1

    iput-object p1, p0, Llayout/AlarmViewFragment;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    return-void
.end method

.method private subscribeToAlarmTriggersUpdate(Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V
    .locals 3

    .line 351
    iget-object v0, p0, Llayout/AlarmViewFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 354
    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveAlarmTriggersCount()Lio/reactivex/Flowable;

    move-result-object v1

    .line 355
    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveIsDeviceConnected()Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v2, Llayout/-$$Lambda$AlarmViewFragment$iAmr7S5eoUbDudvOrGru1GaRTws;

    invoke-direct {v2, p0}, Llayout/-$$Lambda$AlarmViewFragment$iAmr7S5eoUbDudvOrGru1GaRTws;-><init>(Llayout/AlarmViewFragment;)V

    .line 353
    invoke-static {v1, p1, v2}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 357
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Llayout/-$$Lambda$AlarmViewFragment$U6-kwNTmUuWSCU_JfqXtiHAP0KQ;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$AlarmViewFragment$U6-kwNTmUuWSCU_JfqXtiHAP0KQ;-><init>(Llayout/AlarmViewFragment;)V

    .line 358
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 351
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private subscribeToIsDeviceConnected(Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;)V
    .locals 2

    .line 343
    iget-object v0, p0, Llayout/AlarmViewFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 345
    invoke-virtual {p1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->getAndObserveIsDeviceConnected()Lio/reactivex/Flowable;

    move-result-object p1

    .line 346
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object p1

    new-instance v1, Llayout/-$$Lambda$AlarmViewFragment$938-q_HEiJqSSySv-esQeqCaWSQ;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$AlarmViewFragment$938-q_HEiJqSSySv-esQeqCaWSQ;-><init>(Llayout/AlarmViewFragment;)V

    .line 347
    invoke-virtual {p1, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    .line 343
    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method private updateAlarmSettings()V
    .locals 1

    .line 206
    iget-object v0, p0, Llayout/AlarmViewFragment;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->updateAlarmSettings()V

    :cond_0
    return-void
.end method

.method private updateRecapText(Llayout/AlarmViewFragment$AlarmTriggerState;)V
    .locals 7

    .line 364
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 365
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Llayout/AlarmViewFragment$AlarmTriggerState;->triggersCount:I

    if-gez v0, :cond_0

    goto/16 :goto_2

    .line 369
    :cond_0
    iget-boolean v0, p1, Llayout/AlarmViewFragment$AlarmTriggerState;->isConnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 372
    iget v0, p1, Llayout/AlarmViewFragment$AlarmTriggerState;->triggersCount:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 373
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110043

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 374
    :cond_1
    iget v0, p1, Llayout/AlarmViewFragment$AlarmTriggerState;->triggersCount:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 375
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f110044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110042

    new-array v4, v2, [Ljava/lang/Object;

    iget p1, p1, Llayout/AlarmViewFragment$AlarmTriggerState;->triggersCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "#%06X"

    .line 380
    new-array v3, v2, [Ljava/lang/Object;

    const v4, 0xffffff

    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f06001c

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b><font color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font></b>"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 383
    iget-object v0, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->recapDescription:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110041

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    invoke-direct {p0, v2}, Llayout/AlarmViewFragment;->setRecapVisibility(Z)V

    goto :goto_1

    .line 386
    :cond_3
    invoke-direct {p0, v1}, Llayout/AlarmViewFragment;->setRecapVisibility(Z)V

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public inject(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V
    .locals 0

    .line 124
    iput-object p1, p0, Llayout/AlarmViewFragment;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    .line 125
    invoke-virtual {p0, p2}, Llayout/AlarmViewFragment;->setOnHelpCardVisibilityListener(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 313
    sget p3, Llayout/AlarmViewFragment;->TAP_CODE_REQUEST:I

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 314
    iget-object p1, p0, Llayout/AlarmViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object p2, Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;->Tapcode:Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;

    invoke-static {p2}, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;->getAlarmConfigEvent(Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object p2

    invoke-interface {p1, p2}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 315
    iget-object p1, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {p1}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->getAlarmTapCode()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-static {p1}, Lbike/smarthalo/app/helpers/StringHelper;->hasValue(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x5

    .line 320
    new-array p2, p2, [Landroid/widget/ImageView;

    iget-object p3, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p3, p3, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap1:Landroid/widget/ImageView;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    iget-object p3, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p3, p3, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap2:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aput-object p3, p2, v1

    const/4 p3, 0x2

    iget-object v1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap3:Landroid/widget/ImageView;

    aput-object v1, p2, p3

    const/4 p3, 0x3

    iget-object v1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap4:Landroid/widget/ImageView;

    aput-object v1, p2, p3

    const/4 p3, 0x4

    iget-object v1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v1, v1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap5:Landroid/widget/ImageView;

    aput-object v1, p2, p3

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 323
    :goto_0
    array-length p3, p2

    if-ge v0, p3, :cond_2

    .line 324
    aget-object p3, p2, v0

    .line 325
    aget-char v1, p1, v0

    const/16 v2, 0x53

    if-ne v1, v2, :cond_1

    const v1, 0x7f08025e

    goto :goto_1

    :cond_1
    const v1, 0x7f08025d

    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onAlarmTurnedOff()Z
    .locals 3

    .line 188
    iget-object v0, p0, Llayout/AlarmViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;->Setting:Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;->getAlarmConfigEvent(Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 190
    iget-boolean v0, p0, Llayout/AlarmViewFragment;->isConnected:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f110040

    .line 194
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 191
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {v0, v1}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->toggleIsAlarmOn(Z)V

    .line 200
    invoke-direct {p0}, Llayout/AlarmViewFragment;->updateAlarmSettings()V

    return v1
.end method

.method public onAlarmTurnedOn()Z
    .locals 6

    .line 279
    iget-object v0, p0, Llayout/AlarmViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;->Setting:Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;->getAlarmConfigEvent(Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 281
    iget-boolean v0, p0, Llayout/AlarmViewFragment;->isConnected:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f110040

    .line 285
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 282
    invoke-static {v0, v1, v3}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    return v2

    .line 289
    :cond_0
    iget-object v0, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {v0}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->getAlarmTapCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Llayout/AlarmViewFragment;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {v0, v2}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->toggleIsAlarmOn(Z)V

    .line 293
    invoke-direct {p0}, Llayout/AlarmViewFragment;->updateAlarmSettings()V

    return v1

    .line 297
    :cond_1
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11003e

    const v3, 0x7f11003d

    const v4, 0x7f11003c

    new-instance v5, Llayout/AlarmViewFragment$7;

    invoke-direct {v5, p0}, Llayout/AlarmViewFragment$7;-><init>(Llayout/AlarmViewFragment;)V

    .line 296
    invoke-static {v0, v1, v3, v4, v5}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    return v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    .line 78
    invoke-static {p1, p2, p3}, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    move-result-object p1

    iput-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    .line 79
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Llayout/AlarmViewFragment;)V

    .line 81
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object p1

    const-class p2, Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    iput-object p1, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    .line 82
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Llayout/AlarmViewFragment;->setUpCentralServiceConnection(Landroid/content/Context;)V

    .line 84
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->alarmStatusBar:Llayout/statusBar/StatusBarLayout;

    iget-object p2, p0, Llayout/AlarmViewFragment;->alarmToggledEventListener:Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;

    iget-object v0, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {v0}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->getIsAlarmOn()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p0}, Llayout/AlarmViewFragment;->initializeStatusBar(Llayout/statusBar/StatusBarLayout;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V

    const/4 p1, 0x5

    .line 86
    new-array p2, p1, [Landroid/widget/ImageView;

    iget-object v0, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap1:Landroid/widget/ImageView;

    aput-object v0, p2, p3

    iget-object v0, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap2:Landroid/widget/ImageView;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap3:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    iget-object v0, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap4:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v0, p2, v2

    iget-object v0, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object v0, v0, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->tap5:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v0, p2, v2

    .line 88
    iget-object v0, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {v0}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->getAlarmTapCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 92
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_2

    .line 93
    aget-object v0, p2, p3

    .line 94
    aget-char v2, p1, p3

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    const v2, 0x7f08025e

    goto :goto_1

    :cond_0
    const v2, 0x7f08025d

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    :goto_2
    array-length p1, p2

    if-ge p3, p1, :cond_2

    .line 98
    aget-object p1, p2, p3

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 103
    :cond_2
    iget-object p1, p0, Llayout/AlarmViewFragment;->viewModel:Lbike/smarthalo/app/ViewModels/AlarmViewModel;

    invoke-virtual {p1}, Lbike/smarthalo/app/ViewModels/AlarmViewModel;->getIsAlarmAggressive()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 106
    iget-object p2, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p2, p2, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->severitySwitch:Llayout/SettingsSwitch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {p2, p1}, Llayout/SettingsSwitch;->setIsLeft(Z)V

    .line 109
    :cond_3
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->changeTapcode:Landroid/widget/RelativeLayout;

    new-instance p2, Llayout/AlarmViewFragment$1;

    invoke-direct {p2, p0}, Llayout/AlarmViewFragment$1;-><init>(Llayout/AlarmViewFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    iget-object p1, p1, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->severitySwitch:Llayout/SettingsSwitch;

    invoke-direct {p0}, Llayout/AlarmViewFragment;->getSeverityListener()Llayout/SettingsSwitch$SettingButtonEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Llayout/SettingsSwitch;->setListeners(Llayout/SettingsSwitch$SettingButtonEventListener;)V

    .line 118
    new-instance p1, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Llayout/AlarmViewFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    .line 120
    iget-object p1, p0, Llayout/AlarmViewFragment;->binding:Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;

    invoke-virtual {p1}, Lbike/smarthalo/app/databinding/FragmentAlarmViewBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onHelpCardClicked()V
    .locals 2

    .line 402
    iget-object v0, p0, Llayout/AlarmViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "AlarmHelp"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 169
    invoke-super {p0}, Llayout/StatusBarFragment;->onPause()V

    .line 171
    iget-object v0, p0, Llayout/AlarmViewFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 172
    iget-object v0, p0, Llayout/AlarmViewFragment;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->stopServiceConnection()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 162
    invoke-super {p0}, Llayout/StatusBarFragment;->onResume()V

    .line 164
    iget-object v0, p0, Llayout/AlarmViewFragment;->centralServiceConnection:Lbike/smarthalo/app/services/AutoRebindingServiceConnection;

    invoke-virtual {v0}, Lbike/smarthalo/app/services/AutoRebindingServiceConnection;->startServiceConnection()V

    return-void
.end method

.method public onSeverityChanged(Z)V
    .locals 4

    .line 212
    iget-object v0, p0, Llayout/AlarmViewFragment;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;->Sensitivity:Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;

    invoke-static {v1}, Lbike/smarthalo/app/analytics/alarm/AnalyticsAlarm;->getAlarmConfigEvent(Lbike/smarthalo/app/analytics/alarm/AlarmConfigType;)Lbike/smarthalo/app/analytics/AnalyticsEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendAnalyticsEvent(Lbike/smarthalo/app/analytics/AnalyticsEvent;)V

    .line 214
    iget-boolean v0, p0, Llayout/AlarmViewFragment;->isConnected:Z

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Llayout/AlarmViewFragment$4;

    invoke-direct {v1, p0, p1}, Llayout/AlarmViewFragment$4;-><init>(Llayout/AlarmViewFragment;Z)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Llayout/AlarmViewFragment;->centralService:Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;

    if-eqz v0, :cond_1

    .line 231
    new-instance v1, Llayout/AlarmViewFragment$5;

    invoke-direct {v1, p0, p1}, Llayout/AlarmViewFragment$5;-><init>(Llayout/AlarmViewFragment;Z)V

    invoke-virtual {v0, p1, v1}, Lbike/smarthalo/app/services/ServiceBinders/SHCentralServiceBinder;->updateAlarmSeverity(ZLbike/smarthalo/app/models/AlarmUpdateCallback;)V

    :cond_1
    return-void
.end method

.method public prepareSetAlarm()V
    .locals 3

    .line 176
    iget-boolean v0, p0, Llayout/AlarmViewFragment;->isConnected:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lbike/smarthalo/app/activities/TapCodeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    sget v1, Llayout/AlarmViewFragment;->TAP_CODE_REQUEST:I

    invoke-virtual {p0, v0, v1}, Llayout/AlarmViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f11003f

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0}, Llayout/AlarmViewFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 180
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public setFirmwareUpdateContract(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;)V
    .locals 0

    .line 416
    iput-object p1, p0, Llayout/AlarmViewFragment;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    return-void
.end method
