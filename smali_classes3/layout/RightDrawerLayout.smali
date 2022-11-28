.class public Llayout/RightDrawerLayout;
.super Landroid/widget/LinearLayout;
.source "RightDrawerLayout.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;


# static fields
.field public static final BETA_ACCESS_CLICK_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "RightDrawerLayout"


# instance fields
.field alarmState:Landroid/widget/ImageView;

.field private analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

.field assistantState:Landroid/widget/ImageView;

.field batteryFill:Landroid/widget/ImageView;

.field batteryLife:Landroid/widget/TextView;

.field batteryShell:Landroid/widget/ImageView;

.field connectionStatusLayout:Llayout/ConnectionStatusLayout;

.field debugModeCount:I

.field deviceBootloaderVersionDisplayText:Landroid/widget/TextView;

.field deviceFirmwareVersionDisplayText:Landroid/widget/TextView;

.field deviceNameDisplayText:Landroid/widget/TextView;

.field drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

.field drawerTopTitleTextView:Landroid/widget/TextView;

.field private firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

.field fitnessState:Landroid/widget/ImageView;

.field isDebugModeActive:Z

.field lightState:Landroid/widget/ImageView;

.field mContext:Landroid/content/Context;

.field private navState:Lbike/smarthalo/app/models/NavState;

.field navigationState:Landroid/widget/ImageView;

.field private notificationDrawerPresenter:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;

.field private notificationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private notificationsAdapter:Llayout/adapters/NotificationsAdapter;

.field notificationsListView:Landroid/widget/ListView;

.field private onBatteryClick:Landroid/view/View$OnClickListener;

.field private onClickHaloStatusBarListener:Landroid/view/View$OnClickListener;

.field private reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

.field shTemp:Landroid/widget/TextView;

.field topStatusBar:Landroid/widget/RelativeLayout;

.field private userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

.field userUpdateSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Llayout/RightDrawerLayout;->debugModeCount:I

    .line 94
    iput-boolean v0, p0, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    .line 415
    new-instance v1, Llayout/RightDrawerLayout$2;

    invoke-direct {v1, p0}, Llayout/RightDrawerLayout$2;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v1, p0, Llayout/RightDrawerLayout;->notificationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 436
    new-instance v1, Llayout/RightDrawerLayout$3;

    invoke-direct {v1, p0}, Llayout/RightDrawerLayout$3;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v1, p0, Llayout/RightDrawerLayout;->onBatteryClick:Landroid/view/View$OnClickListener;

    .line 458
    new-instance v1, Llayout/RightDrawerLayout$4;

    invoke-direct {v1, p0}, Llayout/RightDrawerLayout$4;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v1, p0, Llayout/RightDrawerLayout;->onClickHaloStatusBarListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, p1, v1, v0}, Llayout/RightDrawerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Llayout/RightDrawerLayout;->debugModeCount:I

    .line 94
    iput-boolean v0, p0, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    .line 415
    new-instance v1, Llayout/RightDrawerLayout$2;

    invoke-direct {v1, p0}, Llayout/RightDrawerLayout$2;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v1, p0, Llayout/RightDrawerLayout;->notificationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 436
    new-instance v1, Llayout/RightDrawerLayout$3;

    invoke-direct {v1, p0}, Llayout/RightDrawerLayout$3;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v1, p0, Llayout/RightDrawerLayout;->onBatteryClick:Landroid/view/View$OnClickListener;

    .line 458
    new-instance v1, Llayout/RightDrawerLayout$4;

    invoke-direct {v1, p0}, Llayout/RightDrawerLayout$4;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v1, p0, Llayout/RightDrawerLayout;->onClickHaloStatusBarListener:Landroid/view/View$OnClickListener;

    .line 110
    invoke-virtual {p0, p1, p2, v0}, Llayout/RightDrawerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Llayout/RightDrawerLayout;->debugModeCount:I

    .line 94
    iput-boolean v0, p0, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    .line 415
    new-instance v0, Llayout/RightDrawerLayout$2;

    invoke-direct {v0, p0}, Llayout/RightDrawerLayout$2;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v0, p0, Llayout/RightDrawerLayout;->notificationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 436
    new-instance v0, Llayout/RightDrawerLayout$3;

    invoke-direct {v0, p0}, Llayout/RightDrawerLayout$3;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v0, p0, Llayout/RightDrawerLayout;->onBatteryClick:Landroid/view/View$OnClickListener;

    .line 458
    new-instance v0, Llayout/RightDrawerLayout$4;

    invoke-direct {v0, p0}, Llayout/RightDrawerLayout$4;-><init>(Llayout/RightDrawerLayout;)V

    iput-object v0, p0, Llayout/RightDrawerLayout;->onClickHaloStatusBarListener:Landroid/view/View$OnClickListener;

    .line 115
    invoke-virtual {p0, p1, p2, p3}, Llayout/RightDrawerLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Llayout/RightDrawerLayout;)Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 0

    .line 60
    iget-object p0, p0, Llayout/RightDrawerLayout;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object p0
.end method

.method static synthetic access$100(Llayout/RightDrawerLayout;)Llayout/adapters/NotificationsAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Llayout/RightDrawerLayout;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Llayout/RightDrawerLayout;->openDFU()V

    return-void
.end method

.method static synthetic access$300(Llayout/RightDrawerLayout;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Llayout/RightDrawerLayout;->checkEmailConfirmationAndShowScanActivity()V

    return-void
.end method

.method private checkEmailConfirmationAndShowScanActivity()V
    .locals 2

    .line 473
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-direct {p0, v0}, Llayout/RightDrawerLayout;->startScanResultActivity(Lbike/smarthalo/app/models/SHUser;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-direct {p0}, Llayout/RightDrawerLayout;->clearUserUpdateSubscription()V

    .line 483
    iget-object v0, p0, Llayout/RightDrawerLayout;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 484
    invoke-interface {v0}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->getUser()Lio/reactivex/Single;

    move-result-object v0

    .line 485
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 486
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Llayout/-$$Lambda$RightDrawerLayout$QvGpy5ZdFEkVAFC_9_IsJRB53G4;

    invoke-direct {v1, p0}, Llayout/-$$Lambda$RightDrawerLayout$QvGpy5ZdFEkVAFC_9_IsJRB53G4;-><init>(Llayout/RightDrawerLayout;)V

    .line 487
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Llayout/RightDrawerLayout;->userUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :goto_0
    return-void
.end method

.method private clearUserUpdateSubscription()V
    .locals 1

    .line 466
    iget-object v0, p0, Llayout/RightDrawerLayout;->userUpdateSubscription:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 468
    iput-object v0, p0, Llayout/RightDrawerLayout;->userUpdateSubscription:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$checkEmailConfirmationAndShowScanActivity$1(Llayout/RightDrawerLayout;Lbike/smarthalo/app/models/GenericResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 488
    invoke-virtual {p1}, Lbike/smarthalo/app/models/GenericResponse;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast v0, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$isConfirmed()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Lbike/smarthalo/app/models/SHUser;

    invoke-direct {p0, p1}, Llayout/RightDrawerLayout;->startScanResultActivity(Lbike/smarthalo/app/models/SHUser;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Llayout/-$$Lambda$RightDrawerLayout$7VpHp4zFaQ6eAtbXf9g_dCEeja0;

    invoke-direct {v2, p0, p1}, Llayout/-$$Lambda$RightDrawerLayout$7VpHp4zFaQ6eAtbXf9g_dCEeja0;-><init>(Llayout/RightDrawerLayout;Lbike/smarthalo/app/models/GenericResponse;)V

    .line 492
    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->presentEmailConfirmAlert(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$0(Llayout/RightDrawerLayout;Lbike/smarthalo/app/models/GenericResponse;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 495
    iget-object p2, p0, Llayout/RightDrawerLayout;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    iget-object p1, p1, Lbike/smarthalo/app/models/GenericResponse;->value:Ljava/lang/Object;

    check-cast p1, Lbike/smarthalo/app/models/SHUser;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$email()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Llayout/RightDrawerLayout$5;

    invoke-direct {p3, p0}, Llayout/RightDrawerLayout$5;-><init>(Llayout/RightDrawerLayout;)V

    invoke-interface {p2, p1, p3}, Lbike/smarthalo/app/managers/contracts/IUserCloudManager;->resendConfirmation(Ljava/lang/String;Lbike/smarthalo/app/api/RequestCallback;)V

    return-void
.end method

.method private openDFU()V
    .locals 1

    .line 552
    iget-object v0, p0, Llayout/RightDrawerLayout;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    if-eqz v0, :cond_0

    .line 553
    invoke-interface {v0}, Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;->onFirmwareUpdateClick()V

    :cond_0
    return-void
.end method

.method private setBatteryLevelIndicator(Lbike/smarthalo/app/models/DeviceState;)V
    .locals 4

    .line 224
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 226
    iget-object v1, p1, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    .line 229
    iget-object v2, p1, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const p1, 0x7f0602ae

    goto :goto_0

    .line 231
    :cond_0
    iget-object v2, p1, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_1

    const p1, 0x7f06001c

    goto :goto_0

    .line 233
    :cond_1
    iget-object p1, p1, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v2, 0x3c

    if-ge p1, v2, :cond_2

    const p1, 0x7f0600ea

    goto :goto_0

    :cond_2
    const p1, 0x7f060046

    .line 239
    :goto_0
    iget-object v2, p0, Llayout/RightDrawerLayout;->batteryFill:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    mul-float v1, v1, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v1, p1

    float-to-int p1, v1

    const/4 v1, 0x3

    add-int/2addr p1, v1

    .line 242
    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result p1

    .line 243
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x5

    const v3, 0x7f0a0092

    .line 245
    invoke-virtual {v2, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p1, 0x6

    .line 246
    invoke-virtual {v2, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0x8

    .line 247
    invoke-virtual {v2, p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p1, 0x1

    .line 249
    invoke-static {v0, p1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result p1

    .line 250
    invoke-static {v0, v1}, Lbike/smarthalo/app/helpers/SHDisplayHelper;->getPxFromDp(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v2, p1, p1, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 251
    iget-object p1, p0, Llayout/RightDrawerLayout;->batteryFill:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object p1, p0, Llayout/RightDrawerLayout;->batteryFill:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    :cond_3
    return-void
.end method

.method private startScanResultActivity(Lbike/smarthalo/app/models/SHUser;)V
    .locals 2

    .line 504
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "pairing_screen_accessed"

    .line 507
    invoke-static {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 510
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 513
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 514
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateAlarmIcon(Lbike/smarthalo/app/models/SHSettings;)V
    .locals 1

    .line 376
    iget-object v0, p0, Llayout/RightDrawerLayout;->alarmState:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 377
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAlarmArmed()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080063

    goto :goto_0

    :cond_0
    const p1, 0x7f080064

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private updateAssistantIcon(Lbike/smarthalo/app/models/SHSettings;)V
    .locals 1

    .line 370
    iget-object v0, p0, Llayout/RightDrawerLayout;->assistantState:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAssistingGlobal()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f080080

    goto :goto_0

    :cond_0
    const p1, 0x7f08007e

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private updateFitnessIcon(Lbike/smarthalo/app/models/SHSettings;)V
    .locals 1

    .line 354
    iget-object v0, p0, Llayout/RightDrawerLayout;->fitnessState:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 355
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isAutoTracking()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0800f1

    goto :goto_0

    :cond_0
    const p1, 0x7f0800ef

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private updateLayout()V
    .locals 0

    .line 558
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->requestLayout()V

    .line 559
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->invalidate()V

    return-void
.end method

.method private updateLightIcon(Lbike/smarthalo/app/models/SHSettings;)V
    .locals 1

    .line 360
    iget-object v0, p0, Llayout/RightDrawerLayout;->lightState:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightNightMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Llayout/RightDrawerLayout;->lightState:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHSettings;->realmGet$isLightBlinking()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0801c6

    goto :goto_0

    :cond_0
    const p1, 0x7f0801ca

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 364
    :cond_1
    iget-object p1, p0, Llayout/RightDrawerLayout;->lightState:Landroid/widget/ImageView;

    const v0, 0x7f080240

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addFirmwareUpdateSubscriber(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    .line 327
    iget-object v0, p0, Llayout/RightDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const p2, 0x7f0d0113

    .line 119
    invoke-static {p1, p2, p0}, Llayout/RightDrawerLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 120
    iput-object p1, p0, Llayout/RightDrawerLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public initDrawerListener()V
    .locals 2

    .line 162
    iget-object v0, p0, Llayout/RightDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    new-instance v1, Llayout/RightDrawerLayout$1;

    invoke-direct {v1, p0}, Llayout/RightDrawerLayout$1;-><init>(Llayout/RightDrawerLayout;)V

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    return-void
.end method

.method public inject(Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;Lbike/smarthalo/app/managers/contracts/IUserCloudManager;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 0

    .line 333
    iput-object p1, p0, Llayout/RightDrawerLayout;->firmwareUpdateContract:Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    .line 334
    iput-object p2, p0, Llayout/RightDrawerLayout;->reactiveStorageManager:Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;

    .line 335
    iput-object p3, p0, Llayout/RightDrawerLayout;->userCloudManager:Lbike/smarthalo/app/managers/contracts/IUserCloudManager;

    .line 336
    iput-object p4, p0, Llayout/RightDrawerLayout;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 338
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lbike/smarthalo/app/presenters/NotificationDrawerPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$View;Lbike/smarthalo/app/managers/contracts/ReactiveStorageContract;)Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Llayout/RightDrawerLayout;->notificationDrawerPresenter:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;

    return-void
.end method

.method public isDrawerOpen()Z
    .locals 1

    .line 382
    iget-object v0, p0, Llayout/RightDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f0a0158

    .line 275
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    iput-object p1, p0, Llayout/RightDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 276
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->initDrawerListener()V

    const/4 p1, 0x0

    .line 277
    invoke-virtual {p0, p1, p1}, Llayout/RightDrawerLayout;->onConnectionStateChanged(ZZ)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 289
    iget-object v0, p0, Llayout/RightDrawerLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {v0, p1}, Llayout/ConnectionStatusLayout;->onActivityPaused(Landroid/app/Activity;)V

    .line 290
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationDrawerPresenter:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;->onViewPaused()V

    .line 291
    invoke-direct {p0}, Llayout/RightDrawerLayout;->clearUserUpdateSubscription()V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 284
    iget-object v0, p0, Llayout/RightDrawerLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    invoke-virtual {v0, p1}, Llayout/ConnectionStatusLayout;->onActivityResumed(Landroid/app/Activity;)V

    .line 285
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationDrawerPresenter:Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/NotificationDrawerContract$Presenter;->onViewResumed()V

    return-void
.end method

.method public onConnectionStateChanged(ZZ)V
    .locals 3

    .line 520
    invoke-virtual {p0, p1, p2}, Llayout/RightDrawerLayout;->updateConnectToSmartHaloNotification(ZZ)V

    if-eqz p1, :cond_2

    .line 523
    iget-boolean p1, p0, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 524
    iget-object p1, p0, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    :cond_0
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 528
    iget-object v0, p0, Llayout/RightDrawerLayout;->deviceNameDisplayText:Landroid/widget/TextView;

    invoke-virtual {p0}, Llayout/RightDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lbike/smarthalo/app/models/SHUser;->realmGet$firstName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    :cond_1
    iget-object p1, p0, Llayout/RightDrawerLayout;->navState:Lbike/smarthalo/app/models/NavState;

    sget-object p2, Lbike/smarthalo/app/models/NavState;->NavDisconnected:Lbike/smarthalo/app/models/NavState;

    if-ne p1, p2, :cond_3

    .line 532
    iget-object p1, p0, Llayout/RightDrawerLayout;->navigationState:Landroid/widget/ImageView;

    const p2, 0x7f0801e4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 533
    sget-object p1, Lbike/smarthalo/app/models/NavState;->NavOn:Lbike/smarthalo/app/models/NavState;

    iput-object p1, p0, Llayout/RightDrawerLayout;->navState:Lbike/smarthalo/app/models/NavState;

    goto :goto_0

    .line 536
    :cond_2
    iget-object p1, p0, Llayout/RightDrawerLayout;->deviceNameDisplayText:Landroid/widget/TextView;

    const p2, 0x7f1102c7

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 538
    iget-object p1, p0, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    sget-object p2, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareUpdate:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {p1, p2}, Llayout/adapters/NotificationsAdapter;->safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z

    .line 541
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    sget-object p2, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->DebugMenu:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {p1, p2}, Llayout/adapters/NotificationsAdapter;->safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z

    .line 543
    iget-object p1, p0, Llayout/RightDrawerLayout;->navState:Lbike/smarthalo/app/models/NavState;

    sget-object p2, Lbike/smarthalo/app/models/NavState;->NavOn:Lbike/smarthalo/app/models/NavState;

    if-ne p1, p2, :cond_3

    .line 544
    iget-object p1, p0, Llayout/RightDrawerLayout;->navigationState:Landroid/widget/ImageView;

    const p2, 0x7f0801e2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    sget-object p1, Lbike/smarthalo/app/models/NavState;->NavDisconnected:Lbike/smarthalo/app/models/NavState;

    iput-object p1, p0, Llayout/RightDrawerLayout;->navState:Lbike/smarthalo/app/models/NavState;

    .line 548
    :cond_3
    :goto_0
    invoke-direct {p0}, Llayout/RightDrawerLayout;->updateLayout()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 127
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    const v0, 0x7f0a0159

    .line 129
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->drawerTopTitleTextView:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Llayout/RightDrawerLayout;->drawerTopTitleTextView:Landroid/widget/TextView;

    const v1, 0x7f1102cb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0067

    .line 131
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a03c0

    .line 134
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->notificationsListView:Landroid/widget/ListView;

    const v0, 0x7f0a0568

    .line 136
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Llayout/RightDrawerLayout;->topStatusBar:Landroid/widget/RelativeLayout;

    .line 137
    iget-object v0, p0, Llayout/RightDrawerLayout;->topStatusBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Llayout/RightDrawerLayout;->onClickHaloStatusBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Llayout/RightDrawerLayout;->topStatusBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a013f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->deviceNameDisplayText:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Llayout/RightDrawerLayout;->topStatusBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0197

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->deviceFirmwareVersionDisplayText:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Llayout/RightDrawerLayout;->topStatusBar:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00a3

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->deviceBootloaderVersionDisplayText:Landroid/widget/TextView;

    .line 142
    new-instance v0, Llayout/adapters/NotificationsAdapter;

    invoke-virtual {p0}, Llayout/RightDrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Llayout/adapters/NotificationsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    .line 143
    iget-object v0, p0, Llayout/RightDrawerLayout;->notificationsListView:Landroid/widget/ListView;

    iget-object v1, p0, Llayout/RightDrawerLayout;->notificationItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    iget-object v0, p0, Llayout/RightDrawerLayout;->notificationsListView:Landroid/widget/ListView;

    iget-object v1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a0104

    .line 146
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llayout/ConnectionStatusLayout;

    iput-object v0, p0, Llayout/RightDrawerLayout;->connectionStatusLayout:Llayout/ConnectionStatusLayout;

    const v0, 0x7f0a03a0

    .line 148
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->navigationState:Landroid/widget/ImageView;

    const v0, 0x7f0a035c

    .line 149
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->lightState:Landroid/widget/ImageView;

    const v0, 0x7f0a004c

    .line 150
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->alarmState:Landroid/widget/ImageView;

    const v0, 0x7f0a006d

    .line 151
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->assistantState:Landroid/widget/ImageView;

    const v0, 0x7f0a0585

    .line 152
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->fitnessState:Landroid/widget/ImageView;

    const v0, 0x7f0a008f

    .line 153
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 154
    iget-object v1, p0, Llayout/RightDrawerLayout;->onBatteryClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0092

    .line 155
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->batteryShell:Landroid/widget/ImageView;

    const v0, 0x7f0a0090

    .line 156
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->batteryFill:Landroid/widget/ImageView;

    const v0, 0x7f0a0091

    .line 157
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->batteryLife:Landroid/widget/TextView;

    const v0, 0x7f0a0499

    .line 158
    invoke-virtual {p0, v0}, Llayout/RightDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    return-void
.end method

.method public onNavigationStateChanged(ZZ)V
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 188
    sget-object p1, Lbike/smarthalo/app/models/NavState;->NavOn:Lbike/smarthalo/app/models/NavState;

    goto :goto_0

    :cond_0
    sget-object p1, Lbike/smarthalo/app/models/NavState;->NavDisconnected:Lbike/smarthalo/app/models/NavState;

    :goto_0
    iput-object p1, p0, Llayout/RightDrawerLayout;->navState:Lbike/smarthalo/app/models/NavState;

    .line 189
    iget-object p1, p0, Llayout/RightDrawerLayout;->navigationState:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const p2, 0x7f0801e4

    goto :goto_1

    :cond_1
    const p2, 0x7f0801e2

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 191
    :cond_2
    sget-object p1, Lbike/smarthalo/app/models/NavState;->NavOff:Lbike/smarthalo/app/models/NavState;

    iput-object p1, p0, Llayout/RightDrawerLayout;->navState:Lbike/smarthalo/app/models/NavState;

    .line 192
    iget-object p1, p0, Llayout/RightDrawerLayout;->navigationState:Landroid/widget/ImageView;

    const p2, 0x7f0801e1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method

.method public open()V
    .locals 1

    .line 321
    iget-object v0, p0, Llayout/RightDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeDfuTransferNotification()V
    .locals 2

    .line 412
    iget-object v0, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareTransferInProgress:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {v0, v1}, Llayout/adapters/NotificationsAdapter;->safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z

    return-void
.end method

.method public removeFirmwareNotification()V
    .locals 2

    .line 395
    iget-object v0, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareUpdate:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {v0, v1}, Llayout/adapters/NotificationsAdapter;->safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z

    return-void
.end method

.method public setDfuTransferNotification(ILjava/lang/String;)V
    .locals 6

    .line 399
    iget-boolean v0, p0, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    if-nez v0, :cond_0

    invoke-static {}, Lbike/smarthalo/app/helpers/SHBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    invoke-virtual {p0}, Llayout/RightDrawerLayout;->removeDfuTransferNotification()V

    .line 401
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification;

    const v1, 0x7f11012c

    const v2, 0x7f0800e9

    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareTransferInProgress:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " v"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " - "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lbike/smarthalo/app/models/PresentationModels/Notification;-><init>(IILbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;Ljava/lang/String;)V

    .line 407
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    invoke-virtual {p1, v0}, Llayout/adapters/NotificationsAdapter;->addUniqueNotification(Lbike/smarthalo/app/models/PresentationModels/Notification;)V

    :cond_1
    return-void
.end method

.method public setFirmwareAvailable()V
    .locals 4

    .line 386
    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification;

    sget-object v1, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->FirmwareUpdate:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    const v2, 0x7f11012b

    const v3, 0x7f0800e9

    invoke-direct {v0, v2, v3, v1}, Lbike/smarthalo/app/models/PresentationModels/Notification;-><init>(IILbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)V

    .line 391
    iget-object v1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    invoke-virtual {v1, v0}, Llayout/adapters/NotificationsAdapter;->addUniqueNotification(Lbike/smarthalo/app/models/PresentationModels/Notification;)V

    return-void
.end method

.method public toggleDrawerLock(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 564
    iget-object p1, p0, Llayout/RightDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    goto :goto_0

    .line 566
    :cond_0
    iget-object p1, p0, Llayout/RightDrawerLayout;->drawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :goto_0
    return-void
.end method

.method public updateConnectToSmartHaloNotification(ZZ)V
    .locals 3

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    new-instance p2, Lbike/smarthalo/app/models/PresentationModels/Notification;

    const v0, 0x7f1102b9

    const v1, 0x7f080244

    sget-object v2, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->ConnectToYourSmartHalo:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-direct {p2, v0, v1, v2}, Lbike/smarthalo/app/models/PresentationModels/Notification;-><init>(IILbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)V

    invoke-virtual {p1, p2}, Llayout/adapters/NotificationsAdapter;->addUniqueNotification(Lbike/smarthalo/app/models/PresentationModels/Notification;)V

    goto :goto_1

    .line 296
    :cond_1
    :goto_0
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    sget-object p2, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->ConnectToYourSmartHalo:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {p1, p2}, Llayout/adapters/NotificationsAdapter;->safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z

    :goto_1
    return-void
.end method

.method public updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 258
    iget-object v0, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    sget-object v1, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(STM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->stmFirmwareVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(FW "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->hardwareVersion:Lbike/smarthalo/sdk/models/HardwareVersion;

    sget-object v2, Lbike/smarthalo/sdk/models/HardwareVersion;->V2:Lbike/smarthalo/sdk/models/HardwareVersion;

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(Nordic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(BL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicBootloaderVersion:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 266
    iget-object v1, p0, Llayout/RightDrawerLayout;->deviceFirmwareVersionDisplayText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v0, p0, Llayout/RightDrawerLayout;->deviceBootloaderVersionDisplayText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 269
    :cond_2
    iget-object p1, p0, Llayout/RightDrawerLayout;->deviceFirmwareVersionDisplayText:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object p1, p0, Llayout/RightDrawerLayout;->deviceBootloaderVersionDisplayText:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public updateDeviceState(Lbike/smarthalo/app/models/DeviceState;)V
    .locals 5

    .line 197
    iget-object v0, p1, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryLife:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryLife:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryShell:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryFill:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryFill:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    invoke-direct {p0, p1}, Llayout/RightDrawerLayout;->setBatteryLevelIndicator(Lbike/smarthalo/app/models/DeviceState;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryFill:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryShell:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Llayout/RightDrawerLayout;->batteryLife:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    :goto_0
    iget-object v0, p1, Lbike/smarthalo/app/models/DeviceState;->temperatureLevel:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lbike/smarthalo/app/models/DeviceState;->temperatureLevel:Ljava/lang/Double;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "C"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-boolean p1, p0, Llayout/RightDrawerLayout;->isDebugModeActive:Z

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 216
    :cond_1
    iget-object p1, p0, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 219
    :cond_2
    iget-object p1, p0, Llayout/RightDrawerLayout;->shTemp:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public updateLowBatteryNotification(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    new-instance v0, Lbike/smarthalo/app/models/PresentationModels/Notification;

    const v1, 0x7f1102d1

    const v2, 0x7f0801f0

    sget-object v3, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->LowBattery:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-direct {v0, v1, v2, v3}, Lbike/smarthalo/app/models/PresentationModels/Notification;-><init>(IILbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)V

    invoke-virtual {p1, v0}, Llayout/adapters/NotificationsAdapter;->addUniqueNotification(Lbike/smarthalo/app/models/PresentationModels/Notification;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object p1, p0, Llayout/RightDrawerLayout;->notificationsAdapter:Llayout/adapters/NotificationsAdapter;

    sget-object v0, Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;->LowBattery:Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;

    invoke-virtual {p1, v0}, Llayout/adapters/NotificationsAdapter;->safeRemoveNotification(Lbike/smarthalo/app/models/PresentationModels/Notification$NotificationType;)Z

    :goto_0
    return-void
.end method

.method public updateStatusBar(Lbike/smarthalo/app/models/SHSettings;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Llayout/RightDrawerLayout;->updateAlarmIcon(Lbike/smarthalo/app/models/SHSettings;)V

    .line 348
    invoke-direct {p0, p1}, Llayout/RightDrawerLayout;->updateAssistantIcon(Lbike/smarthalo/app/models/SHSettings;)V

    .line 349
    invoke-direct {p0, p1}, Llayout/RightDrawerLayout;->updateLightIcon(Lbike/smarthalo/app/models/SHSettings;)V

    .line 350
    invoke-direct {p0, p1}, Llayout/RightDrawerLayout;->updateFitnessIcon(Lbike/smarthalo/app/models/SHSettings;)V

    return-void
.end method
