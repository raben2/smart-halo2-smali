.class public Lbike/smarthalo/app/activities/ScanResultsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ScanResultsActivity.java"

# interfaces
.implements Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScanResultsActivity"


# instance fields
.field private final REQUEST_ENABLE_BLUETOOTH:I

.field analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private bluetoothOffContainer:Landroid/widget/RelativeLayout;

.field private connectedItemContainer:Landroid/widget/LinearLayout;

.field private connnectedDeviceDescription:Landroid/widget/TextView;

.field private currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

.field private deviceList:Landroid/widget/ListView;

.field private deviceListAdapter:Llayout/adapters/DeviceListAdapter;

.field private deviceListUpdateDisposable:Lio/reactivex/disposables/Disposable;

.field private deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

.field private final deviceServiceUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private isConnected:Z

.field private noDevicesContainer:Landroid/widget/FrameLayout;

.field private presenter:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private shouldConnectToCurrentDevice:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->shouldConnectToCurrentDevice:Ljava/lang/Boolean;

    .line 86
    iput-boolean v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    const/16 v0, 0x63

    .line 88
    iput v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->REQUEST_ENABLE_BLUETOOTH:I

    .line 235
    new-instance v0, Lbike/smarthalo/app/activities/ScanResultsActivity$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/ScanResultsActivity$1;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceServiceUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v0, Lbike/smarthalo/app/activities/ScanResultsActivity$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/ScanResultsActivity$2;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 280
    new-instance v0, Lbike/smarthalo/app/activities/ScanResultsActivity$3;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/ScanResultsActivity$3;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    iput-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/content/Intent;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->handleConnectionStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lbike/smarthalo/app/activities/ScanResultsActivity;)Z
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->isBluetoothAdapterOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->updateDeviceList()V

    return-void
.end method

.method static synthetic access$1200(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->connectToNewDevice(Lbike/smarthalo/sdk/models/BleDevice;Z)V

    return-void
.end method

.method static synthetic access$1302(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 68
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1402(Lbike/smarthalo/app/activities/ScanResultsActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 68
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->shouldConnectToCurrentDevice:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 0

    .line 68
    iget-object p0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-object p0
.end method

.method static synthetic access$202(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/SHDeviceServiceBinder;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;
    .locals 0

    .line 68
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    return-object p1
.end method

.method static synthetic access$300(Lbike/smarthalo/app/activities/ScanResultsActivity;)Landroid/content/ServiceConnection;
    .locals 0

    .line 68
    iget-object p0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$400(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->setUpDeviceListUpdate()V

    return-void
.end method

.method static synthetic access$500(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->clearDeviceListUpdateDisposable()V

    return-void
.end method

.method static synthetic access$600(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->checkAndDisplayErrorMessages()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lbike/smarthalo/app/activities/ScanResultsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lbike/smarthalo/app/activities/ScanResultsActivity;)Lbike/smarthalo/sdk/models/BleDevice;
    .locals 0

    .line 68
    iget-object p0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    return-object p0
.end method

.method static synthetic access$802(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;)Lbike/smarthalo/sdk/models/BleDevice;
    .locals 0

    .line 68
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    return-object p1
.end method

.method static synthetic access$900(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->updateConnectionState()V

    return-void
.end method

.method private checkAndDisplayErrorMessages()V
    .locals 5

    const v0, 0x7f0a009f

    .line 139
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 140
    sget-object v1, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$qpcaPJGraW4GgOaYEClnGE8f4Hc;->INSTANCE:Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$qpcaPJGraW4GgOaYEClnGE8f4Hc;

    .line 142
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkStartServicePermissions(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_0

    .line 143
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->isBluetoothAdapterOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->noDevicesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothOffContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->noDevicesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothOffContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v2, 0x7f0a009e

    .line 151
    invoke-virtual {p0, v2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 153
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkStartServicePermissions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 154
    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$esZc-1VXWD8LHw64ATefbsUNQSo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$esZc-1VXWD8LHw64ATefbsUNQSo;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    const v3, 0x7f110078

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->isBluetoothAdapterOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$3PvWa608XbohU0lI0OWpTKQYm4o;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$3PvWa608XbohU0lI0OWpTKQYm4o;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    const v3, 0x7f110077

    .line 161
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :cond_2
    :goto_0
    new-instance v2, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$o7ZYZjBrjVNC0SjQ-JUsVKAp9aQ;

    invoke-direct {v2, v1}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$o7ZYZjBrjVNC0SjQ-JUsVKAp9aQ;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearDeviceListUpdateDisposable()V
    .locals 1

    .line 220
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListUpdateDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListUpdateDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListUpdateDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private connectToNewDevice(Lbike/smarthalo/sdk/models/BleDevice;Z)V
    .locals 0

    .line 311
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    const/4 p1, 0x1

    .line 312
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->shouldConnectToCurrentDevice:Ljava/lang/Boolean;

    .line 314
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 316
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;

    sget-object p2, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$7KtvVemsE5xCZ89clXz5EdHW0h8;->INSTANCE:Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$7KtvVemsE5xCZ89clXz5EdHW0h8;

    invoke-interface {p1, p2}, Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;->forgetDevice(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->forgetSavedDeviceAndDisconnect()V

    .line 321
    :goto_0
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void
.end method

.method private handleConnectionStateChanged(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_4

    const-string v0, "bike.smarthalo.sdk.EXTRA_CONNECTION_STATE"

    .line 416
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "bike.smarthalo.sdk.EXTRA_CONNECTION_STATE"

    .line 420
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    .line 422
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 423
    iput-boolean p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    .line 424
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz p1, :cond_1

    .line 425
    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    goto :goto_0

    .line 427
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1, v0, v1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 430
    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->hideProgressDialog()V

    .line 431
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 434
    invoke-static {p0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestStartScanning(Landroid/content/Context;)V

    goto :goto_1

    .line 435
    :cond_2
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, v0, :cond_3

    .line 436
    iput-boolean v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    .line 437
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->onDeviceDisconnected()V

    goto :goto_1

    .line 439
    :cond_3
    iput-boolean v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    .line 442
    :goto_1
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->updateConnectionState()V

    .line 443
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->updateDeviceList()V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .line 304
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->progressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private initListeners()V
    .locals 2

    .line 179
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connectedItemContainer:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0103

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 181
    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$cHOkd8wD6nSDTVBYew-Y9XUkIEo;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$cHOkd8wD6nSDTVBYew-Y9XUkIEo;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$FM6hJQcUGLydAGLRgDHrIUI6Z0o;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$FM6hJQcUGLydAGLRgDHrIUI6Z0o;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private isBluetoothAdapterOn()Z
    .locals 2

    const-string v0, "bluetooth"

    .line 169
    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method static synthetic lambda$checkAndDisplayErrorMessages$2()V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$checkAndDisplayErrorMessages$3(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 2

    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/permissions/PermissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$checkAndDisplayErrorMessages$4(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 2

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x63

    .line 159
    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic lambda$checkAndDisplayErrorMessages$5(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$connectToNewDevice$9(Z)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$initListeners$6(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/view/View;)V
    .locals 2

    .line 182
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lbike/smarthalo/app/activities/ForgetDeviceActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_DEVICE_NAME"

    .line 183
    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    iget-object v1, v1, Lbike/smarthalo/sdk/models/BleDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x18

    .line 184
    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$initListeners$7(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 187
    invoke-virtual {p0, p3}, Lbike/smarthalo/app/activities/ScanResultsActivity;->onDeviceItemsClicked(I)V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lbike/smarthalo/app/activities/ScanResultsActivity;Landroid/view/View;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-static {p0, p1}, Llayout/customControls/DeviceIdAlertDialog;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreate$1(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/permissions/PermissionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$setUpDeviceListUpdate$8(Lbike/smarthalo/app/activities/ScanResultsActivity;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->updateDeviceList()V

    return-void
.end method

.method public static synthetic lambda$updateConnectionState$10(Lbike/smarthalo/app/activities/ScanResultsActivity;)V
    .locals 5

    .line 468
    iget-boolean v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connectedItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 473
    :cond_0
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connnectedDeviceDescription:Landroid/widget/TextView;

    const v2, 0x7f1100a7

    .line 477
    invoke-virtual {p0, v2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lbike/smarthalo/app/models/SHUser;->realmGet$firstName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    iget-object v4, v4, Lbike/smarthalo/sdk/models/BleDevice;->deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    .line 479
    invoke-virtual {v4}, Lbike/smarthalo/sdk/models/DeviceModel;->getSimpleValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    .line 480
    invoke-virtual {v4}, Lbike/smarthalo/sdk/models/BleDevice;->getShortenedDeviceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 476
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connnectedDeviceDescription:Landroid/widget/TextView;

    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/BleDevice;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 488
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connectedItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private onDeviceDisconnected()V
    .locals 4

    .line 447
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->shouldConnectToCurrentDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 450
    new-instance v1, Lbike/smarthalo/app/activities/ScanResultsActivity$8;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/ScanResultsActivity$8;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setUpDeviceListUpdate()V
    .locals 3

    .line 227
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->clearDeviceListUpdateDisposable()V

    .line 229
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    .line 230
    invoke-static {v1, v2, v0}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 231
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$dIQ80Z1Gsb9wMh272mw4uEVaNbE;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$dIQ80Z1Gsb9wMh272mw4uEVaNbE;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    .line 232
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListUpdateDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private startConnection(Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/SHUser;)V
    .locals 4

    .line 350
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 351
    iget-boolean v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    const v2, 0x7f120005

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHUser;->hasDeviceID()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 355
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f110343

    .line 356
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11034a

    new-instance v2, Lbike/smarthalo/app/activities/ScanResultsActivity$5;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity$5;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;)V

    .line 357
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110231

    new-instance v2, Lbike/smarthalo/app/activities/ScanResultsActivity$4;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity$4;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;)V

    .line 363
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 372
    :cond_0
    iget-boolean v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHUser;->hasDeviceID()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1102b8

    .line 377
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110099

    new-instance v2, Lbike/smarthalo/app/activities/ScanResultsActivity$7;

    invoke-direct {v2, p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity$7;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;Lbike/smarthalo/sdk/models/BleDevice;)V

    .line 378
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f11007d

    new-instance v1, Lbike/smarthalo/app/activities/ScanResultsActivity$6;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/activities/ScanResultsActivity$6;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    .line 391
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void

    .line 399
    :cond_1
    iget-boolean v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lbike/smarthalo/app/models/SHUser;->realmGet$deviceId()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 404
    :cond_2
    iget-object p2, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    iget-object v0, p1, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->setMyDevice(Ljava/lang/String;Ljava/lang/String;)Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    move-result-object p1

    invoke-virtual {p1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->connect()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 406
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    :cond_3
    const p1, 0x7f11009c

    .line 408
    invoke-static {p1, v1, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    goto :goto_0

    :cond_4
    const p1, 0x7f1103b9

    .line 411
    invoke-static {p1, v1, p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showToast(IILandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private updateConnectionState()V
    .locals 2

    .line 461
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->isConnected:Z

    .line 467
    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$uRJSQpubKPCTlQlYbsjMl4izRN4;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$uRJSQpubKPCTlQlYbsjMl4izRN4;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateDeviceList()V
    .locals 4

    .line 495
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    if-eqz v0, :cond_2

    .line 496
    sget-object v0, Lbike/smarthalo/app/activities/ScanResultsActivity;->TAG:Ljava/lang/String;

    const-string v1, "Updated device list"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;

    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;->onNewDevices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListAdapter:Llayout/adapters/DeviceListAdapter;

    invoke-virtual {v1, v0}, Llayout/adapters/DeviceListAdapter;->replaceDeviceList(Ljava/util/List;)V

    .line 500
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-gtz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceService:Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v0

    sget-object v3, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->noDevicesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothOffContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 501
    :cond_1
    :goto_0
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->noDevicesContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothOffContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 540
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x18

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    .line 542
    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->currentDevice:Lbike/smarthalo/sdk/models/BleDevice;

    .line 543
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->updateConnectionState()V

    :cond_0
    return-void
.end method

.method public onClose()V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 97
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002a

    .line 98
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->setContentView(I)V

    const p1, 0x7f11030a

    .line 99
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 100
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    .line 101
    invoke-static {p0}, Lbike/smarthalo/app/dependencyManagement/InjectionHelper;->getCoreComponent(Landroid/content/Context;)Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;->inject(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    const p1, 0x7f0a013e

    .line 103
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    const p1, 0x7f0a00a0

    .line 104
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothOffContainer:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a03b5

    .line 105
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->noDevicesContainer:Landroid/widget/FrameLayout;

    .line 107
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    const v1, 0x7f0d0116

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connectedItemContainer:Landroid/widget/LinearLayout;

    .line 108
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connectedItemContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a013b

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connnectedDeviceDescription:Landroid/widget/TextView;

    .line 109
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->connectedItemContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a013c

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$A4nKXPOReaq9CdlHDMvbLigjFww;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$A4nKXPOReaq9CdlHDMvbLigjFww;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance p1, Llayout/adapters/DeviceListAdapter;

    invoke-direct {p1, p0}, Llayout/adapters/DeviceListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListAdapter:Llayout/adapters/DeviceListAdapter;

    .line 116
    iget-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListAdapter:Llayout/adapters/DeviceListAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->initListeners()V

    .line 120
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkStartServicePermissions(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f110076

    const v0, 0x7f110314

    const v1, 0x7f11007d

    .line 121
    new-instance v2, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$sWVanrC76Iv5IbJ2DLMpQMuMsx4;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/activities/-$$Lambda$ScanResultsActivity$sWVanrC76Iv5IbJ2DLMpQMuMsx4;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    invoke-static {p0, p1, v0, v1, v2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    .line 130
    :cond_0
    invoke-static {p0, p0}, Lbike/smarthalo/app/presenters/ScanResultsPresenter;->buildPresenter(Landroid/content/Context;Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$View;)Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 514
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0005

    .line 515
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDeviceItemsClicked(I)V
    .locals 2

    .line 328
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 336
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListAdapter:Llayout/adapters/DeviceListAdapter;

    invoke-virtual {v0}, Llayout/adapters/DeviceListAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 337
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceListAdapter:Llayout/adapters/DeviceListAdapter;

    invoke-virtual {v0, p1}, Llayout/adapters/DeviceListAdapter;->getDevice(I)Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;

    move-result-object p1

    .line 338
    iget-object v0, p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->bleDevice:Lbike/smarthalo/sdk/models/BleDevice;

    if-eqz v0, :cond_2

    .line 339
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "new_smarthalo_selected"

    invoke-static {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsHelper;->sendAnalyticsEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lbike/smarthalo/app/managers/storageManagers/UserStorageStaticManager;->getUser()Lbike/smarthalo/app/models/SHUser;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 343
    iget-object p1, p1, Lbike/smarthalo/app/models/PresentationModels/DeviceListItem;->bleDevice:Lbike/smarthalo/sdk/models/BleDevice;

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->startConnection(Lbike/smarthalo/sdk/models/BleDevice;Lbike/smarthalo/app/models/SHUser;)V

    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 521
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a043c

    if-ne p1, v0, :cond_0

    const p1, 0x7f11034e

    const v0, 0x7f11034d

    const v1, 0x7f11034c

    .line 524
    new-instance v2, Lbike/smarthalo/app/activities/ScanResultsActivity$9;

    invoke-direct {v2, p0}, Lbike/smarthalo/app/activities/ScanResultsActivity$9;-><init>(Lbike/smarthalo/app/activities/ScanResultsActivity;)V

    invoke-static {p0, p1, v0, v1, v2}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showConfirmationDialog(Landroid/content/Context;IIILbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 207
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 208
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;->onViewPaused()V

    .line 209
    invoke-static {p0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestConnectToKnownDevice(Landroid/content/Context;)V

    .line 211
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->hideProgressDialog()V

    .line 212
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->clearDeviceListUpdateDisposable()V

    .line 213
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 215
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceServiceUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 192
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 193
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->presenter:Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;

    invoke-interface {v0}, Lbike/smarthalo/app/presenters/presenterContracts/ScanResultsContract$Presenter;->onViewResumed()V

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lbike/smarthalo/app/activities/ScanResultsActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 196
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->deviceServiceUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lbike/smarthalo/sdk/SHDeviceService;->getDeviceServiceUpdateIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/app/activities/ScanResultsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    invoke-direct {p0}, Lbike/smarthalo/app/activities/ScanResultsActivity;->checkAndDisplayErrorMessages()V

    .line 201
    invoke-static {p0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestStartScanning(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lbike/smarthalo/app/activities/ScanResultsActivity;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    const-string v1, "DeviceConnection"

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    return-void
.end method
