.class public Lbike/smarthalo/sdk/SHDeviceService;
.super Landroid/app/Service;
.source "SHDeviceService.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;
.implements Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;
.implements Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;
.implements Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;
.implements Lbike/smarthalo/sdk/encryption/EncryptionContract;


# static fields
.field public static final AUTHENTICATION_TIME_OUT:J = 0x3a98L

.field public static final AUTH_FAILED:I = 0x0

.field public static final CONNECT_FAILED:I = 0x1

.field public static final DIRECT_CONNECTION_TIME_OUT:J = 0x61a8L

.field public static final FOREGROUND_NOTIF_ID:I = 0x191

.field public static final FORGET_DEVICE_FAILED:I = 0x3

.field public static final LOCK_SERIAL_ID:I = 0x2

.field public static final NOTIF_ID:I = 0x65

.field public static final ON_CLEANUP_SCAN_DELAY:J = 0x3e8L

.field public static final PCBA_SERIAL_ID:I = 0x1

.field private static final PERIPH_PUB_KEY_PAYLOAD_SIZE:I = 0x45

.field private static final PERIPH_PUB_KEY_SIZE:I = 0x41

.field public static final PRODUCT_SERIAL_ID:I = 0x0

.field public static final RESET_PASSWORD_FAILED:I = 0x2

.field public static final SCAN_RESTART_DELAY:I = 0x7530

.field public static final SH_MANUFACTURER_ID:I = 0x466

.field private static final SH_MANUFACTURER_ID_1:I = 0x66

.field private static final SH_MANUFACTURER_ID_2:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SHDeviceService"

.field public static final TRANSCEIVE_RETRY_COUNT:I = 0x2

.field public static final TRANSCEIVE_TASK_TIME_OUT:J = 0x1388L


# instance fields
.field private alarmCommandsController:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

.field private authenticationDisposable:Lio/reactivex/disposables/Disposable;

.field private bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

.field private final bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

.field private bluetoothSpeedMonitor:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

.field private carouselCommandsController:Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

.field private connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

.field private debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

.field private deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

.field private dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

.field private directConnectionDisposable:Lio/reactivex/disposables/Disposable;

.field private experimentalCommandsController:Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

.field private mAES:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

.field private final mBinder:Landroid/os/IBinder;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/sdk/models/BleDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mIsScanning:Z

.field private previousConnectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

.field private serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

.field private shScanCallback:Lbike/smarthalo/sdk/SHScanCallback;

.field private smartHaloOSCrashReporter:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;

.field private soundsCommandsController:Lbike/smarthalo/sdk/commands/SoundsCommandsController;

.field private stmDfuController:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

.field private stopScanDisposable:Lio/reactivex/disposables/Disposable;

.field private transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

.field private transceiveTimeoutDisposable:Lio/reactivex/disposables/Disposable;

.field private uiCommandsController:Lbike/smarthalo/sdk/commands/UICommandsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    new-instance v0, Lbike/smarthalo/sdk/SHDeviceServiceBinder;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/SHDeviceServiceBinder;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBinder:Landroid/os/IBinder;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    invoke-direct {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothSpeedMonitor:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    .line 127
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    .line 128
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->previousConnectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mIsScanning:Z

    .line 1077
    new-instance v0, Lbike/smarthalo/sdk/SHDeviceService$6;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/SHDeviceService$6;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->onAuthenticationError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;
    .locals 0

    .line 97
    iget-object p0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    return-object p0
.end method

.method static synthetic access$1000(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/helpers/DebugLoggerContract;
    .locals 0

    .line 97
    iget-object p0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    return-object p0
.end method

.method static synthetic access$1100(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    return-object p0
.end method

.method static synthetic access$1200(Lbike/smarthalo/sdk/SHDeviceService;)Z
    .locals 0

    .line 97
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->shouldStopSelfSetNotification()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lbike/smarthalo/sdk/SHDeviceService;Z)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->lookForKnownDevice(Z)V

    return-void
.end method

.method static synthetic access$1400(Lbike/smarthalo/sdk/SHDeviceService;)Ljava/util/ArrayList;
    .locals 0

    .line 97
    iget-object p0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastDeviceListUpdated()V

    return-void
.end method

.method static synthetic access$200(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    return-object p0
.end method

.method static synthetic access$302(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;)Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;
    .locals 0

    .line 97
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mAES:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->authenticateWithDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lbike/smarthalo/sdk/SHDeviceService;)Lbike/smarthalo/sdk/commands/DeviceCommandsController;
    .locals 0

    .line 97
    iget-object p0, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    return-object p0
.end method

.method static synthetic access$700(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->onAuthenticationError()V

    return-void
.end method

.method static synthetic access$800(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/SHDeviceService;->auth_setPassword(Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method static synthetic access$900(Lbike/smarthalo/sdk/SHDeviceService;ILjava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastError(ILjava/lang/String;)V

    return-void
.end method

.method private auth_setPassword(Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 7

    .line 802
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 806
    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setPassword:[B

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 807
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 809
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    sget-object v3, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-virtual {v2, v3}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 810
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 811
    invoke-static {v1}, Lbike/smarthalo/sdk/encryption/SHEncryptionHelper;->get_CRC_CCITT_16_Checksum([B)I

    move-result p1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 812
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 p1, p1, 0xff

    .line 813
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 816
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "auth_setPassword"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 817
    new-instance v6, Lbike/smarthalo/sdk/SHDeviceService$4;

    invoke-direct {v6, p0, p2}, Lbike/smarthalo/sdk/SHDeviceService$4;-><init>(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/CmdCallback;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lbike/smarthalo/sdk/SHDeviceService;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 835
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    .line 836
    invoke-virtual {p2, p1}, Lbike/smarthalo/sdk/CmdCallback;->onErr(B)V

    :goto_0
    return-void
.end method

.method private authenticateWithDevice(Ljava/lang/String;)V
    .locals 1

    .line 662
    new-instance v0, Lbike/smarthalo/sdk/SHDeviceService$2;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/sdk/SHDeviceService$2;-><init>(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->sendAuthenticationCommand(Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method private broadcastConnectionState()V
    .locals 5

    .line 1115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bike.smarthalo.sdk.BROADCAST_CONNECTION_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v1

    .line 1117
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->getPreviousConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v2

    .line 1119
    sget-object v3, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-virtual {v3}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "bike.smarthalo.sdk.EXTRA_DEVICE_NAME"

    .line 1120
    iget-object v4, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v4, v4, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "bike.smarthalo.sdk.EXTRA_DEVICE_ADDRESS"

    .line 1121
    iget-object v4, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v4, v4, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "bike.smarthalo.sdk.EXTRA_DEVICE_ID"

    .line 1122
    iget-object v4, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v4, v4, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v3, "bike.smarthalo.sdk.EXTRA_CONNECTION_STATE"

    .line 1125
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "bike.smarthalo.sdk.EXTRA_PREVIOUS_CONNECTION_STATE"

    .line 1126
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1127
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastDeviceListUpdated()V
    .locals 2

    .line 1370
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bike.smarthalo.sdk.BROADCAST_DEVICE_LIST_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private broadcastError(ILjava/lang/String;)V
    .locals 1

    .line 873
    new-instance p2, Landroid/content/Intent;

    const-string v0, "bike.smarthalo.sdk.BROADCAST_ERROR"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "bike.smarthalo.sdk.EXTRA_ERROR_CODE"

    .line 874
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    invoke-virtual {p0, p2}, Lbike/smarthalo/sdk/SHDeviceService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private clearAuthenticationTimeout()V
    .locals 1

    .line 1023
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->authenticationDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->authenticationDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1025
    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->authenticationDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearDirectConnectionTimeout()V
    .locals 1

    .line 1016
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->directConnectionDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->directConnectionDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1018
    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->directConnectionDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearNotifications()V
    .locals 2

    const-string v0, "notification"

    .line 314
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x65

    .line 315
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private clearStopScanDisposable()V
    .locals 1

    .line 1030
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->stopScanDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->stopScanDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1032
    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->stopScanDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private clearTransceiveTimeout()V
    .locals 1

    .line 1009
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveTimeoutDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveTimeoutDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    .line 1011
    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveTimeoutDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private connectToSavedDevice(Z)Z
    .locals 5

    .line 932
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x191

    .line 933
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v2, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    .line 935
    invoke-static {p0, v2, v1}, Lbike/smarthalo/sdk/SHNotificationManager;->getForegroundServiceNotification(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v2

    .line 933
    invoke-virtual {p0, v0, v2}, Lbike/smarthalo/sdk/SHDeviceService;->startForeground(ILandroid/app/Notification;)V

    .line 939
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 940
    :goto_0
    iget-object v3, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_2

    .line 941
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    .line 943
    invoke-virtual {v3}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidForConnection()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 944
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v3

    sget-object v4, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne v3, v4, :cond_2

    .line 945
    iget-object v3, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v3, v3, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-direct {p0, v3}, Lbike/smarthalo/sdk/SHDeviceService;->getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 949
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopPendingIntentScan()V

    .line 952
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startDirectConnectionTimeout()V

    .line 953
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {v2, v3}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->setUpDeviceConnection(Landroid/bluetooth/BluetoothDevice;)Z

    .line 954
    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v4, "NAME_KEY"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 962
    :cond_2
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    .line 966
    invoke-virtual {p0, v1}, Lbike/smarthalo/sdk/SHDeviceService;->stopForeground(Z)V

    .line 967
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopSelf()V

    :cond_3
    return v2
.end method

.method private getBluetoothDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 883
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 892
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getDeviceServiceUpdateIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "bike.smarthalo.sdk.BROADCAST_CONNECTION_STATE"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "bike.smarthalo.sdk.BROADCAST_ERROR"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "bike.smarthalo.sdk.BROADCAST_DEVICE_LIST_UPDATED"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "bike.smarthalo.sdk.BROADCAST_CONNECTED_STOPPING_SCAN"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasJustChangedToThisState(Landroid/content/Intent;Lbike/smarthalo/sdk/models/DeviceConnectionState;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "bike.smarthalo.sdk.EXTRA_CONNECTION_STATE"

    .line 178
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "bike.smarthalo.sdk.EXTRA_PREVIOUS_CONNECTION_STATE"

    .line 179
    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "bike.smarthalo.sdk.EXTRA_CONNECTION_STATE"

    .line 183
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    const-string v2, "bike.smarthalo.sdk.EXTRA_PREVIOUS_CONNECTION_STATE"

    .line 184
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne v1, p1, :cond_1

    if-eq v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private initializeBluetooth()V
    .locals 1

    .line 491
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    const-string v0, "bluetooth"

    .line 492
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 495
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$cleanUpDeviceConnection$0(Lbike/smarthalo/sdk/SHDeviceService;Z)V
    .locals 3

    .line 436
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v2, "CLEANING UP DEVICE CONNECTION"

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->clearQueue()V

    .line 439
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothSpeedMonitor:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->clearMetrics()V

    .line 441
    invoke-static {p0}, Lbike/smarthalo/sdk/ContextHelper;->getMainLooperHandler(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 443
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearTransceiveTimeout()V

    .line 444
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearAuthenticationTimeout()V

    .line 445
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopPendingIntentScan()V

    .line 446
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->stmDfuController:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;->cancelDfuFlow()V

    .line 448
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cleanUpSequence()V

    .line 450
    iput-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mAES:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    .line 452
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 453
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->onConnectionStateChanged(Lbike/smarthalo/sdk/models/DeviceConnectionState;)V

    .line 454
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->clearDeviceInformation()V

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->stopForeground(Z)V

    if-eqz p1, :cond_0

    .line 459
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->launchReconnection()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$hasEnteredBootloader$2(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 2

    .line 478
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v1, v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lbike/smarthalo/sdk/bluetooth/BootloaderScanner;->startPendingIntentScan(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startScan()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$launchReconnection$1(Lbike/smarthalo/sdk/SHDeviceService;)V
    .locals 1

    .line 466
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startPendingIntentScan()V

    goto :goto_0

    .line 469
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startScan()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onNewTransceiveResult$3(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 0

    .line 531
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothSpeedMonitor:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    invoke-virtual {p1, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->updateQueueSize(I)V

    if-lez p2, :cond_0

    .line 533
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->processNextTransceiveTask()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onTransceiveTimeout$8(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1002
    iget-object p2, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIME OUT for task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-virtual {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->transceiveRetryOrRestart(Lbike/smarthalo/sdk/models/TransceiveTask;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startAuthenticationTimeout$7(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 986
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->onAuthenticationTimeout()V

    return-void
.end method

.method public static synthetic lambda$startDirectConnectionTimeout$6(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 978
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->onDirectConnectionTimeout()V

    return-void
.end method

.method public static synthetic lambda$startTransceiveTimeoutTimer$4(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 553
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->onTransceiveTimeout()V

    return-void
.end method

.method public static synthetic lambda$stopScanDelayed$9(Lbike/smarthalo/sdk/SHDeviceService;Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1207
    iget-boolean p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mIsScanning:Z

    if-eqz p1, :cond_1

    .line 1208
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object p1

    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, v0, :cond_0

    .line 1209
    new-instance p1, Landroid/content/Intent;

    const-string v0, "bike.smarthalo.sdk.BROADCAST_CONNECTED_STOPPING_SCAN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .line 1213
    :cond_0
    sget-object p1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v0, "restarting scan"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    .line 1216
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startScan()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$transceive$5(Lbike/smarthalo/sdk/SHDeviceService;I)V
    .locals 1

    .line 609
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothSpeedMonitor:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->updateQueueSize(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 611
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->processNextTransceiveTask()V

    :cond_0
    return-void
.end method

.method private launchReconnection()V
    .locals 3

    .line 465
    new-instance v0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$qZdqN76gNYobwgM6pwTArvtBTlE;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$qZdqN76gNYobwgM6pwTArvtBTlE;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    const-wide/16 v1, 0x3e8

    invoke-static {p0, v1, v2, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method private loginUser(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "bike.smarthalo.sdk.EXTRA_PASSWORD"

    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v1, "bike.smarthalo.sdk.EXTRA_PASSWORD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->setPassword(Ljava/lang/String;)V

    :cond_0
    const-string v0, "bike.smarthalo.sdk.EXTRA_DEVICE_ID"

    .line 253
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v1, "bike.smarthalo.sdk.EXTRA_DEVICE_ID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->setId(Ljava/lang/String;)V

    :cond_1
    const-string v0, "bike.smarthalo.sdk.EXTRA_IS_TESTER"

    .line 257
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v1, "bike.smarthalo.sdk.EXTRA_IS_TESTER"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->setIsTester(Z)V

    :cond_2
    return-void
.end method

.method private logout()V
    .locals 1

    .line 1154
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->logout()V

    const/4 v0, 0x0

    .line 1156
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection(Z)V

    .line 1157
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopSelf()V

    return-void
.end method

.method private lookForKnownDevice(Z)V
    .locals 1

    .line 263
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    .line 267
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v0, v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v0, v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 273
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    .line 274
    invoke-virtual {p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidAddress()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startPendingIntentScan()V

    goto :goto_1

    .line 275
    :cond_1
    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startScan()V

    :cond_2
    :goto_1
    return-void
.end method

.method private onAuthenticationError()V
    .locals 2

    const-string v0, "authFailed"

    const/4 v1, 0x0

    .line 779
    invoke-direct {p0, v1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastError(ILjava/lang/String;)V

    .line 780
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->resetLocalStorageAndDisconnect()V

    return-void
.end method

.method private onAuthenticationError(Ljava/lang/String;)V
    .locals 2

    .line 705
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 706
    invoke-direct {p0, v0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastError(ILjava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    return-void
.end method

.method private onAuthenticationTimeout()V
    .locals 3

    .line 990
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v2, "Authentication time out, restarting connection process"

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    return-void
.end method

.method private onBleConnectedToDevice()V
    .locals 0

    .line 749
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearDirectConnectionTimeout()V

    .line 750
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startAuthenticationTimeout()V

    return-void
.end method

.method private onDirectConnectionTimeout()V
    .locals 3

    .line 995
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v2, "Direct connection time out, cleaning connection"

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    return-void
.end method

.method private onSuccessfulAuthentication()V
    .locals 4

    .line 754
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v0, v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    const/4 v1, 0x0

    .line 756
    invoke-static {p0, v0, v1}, Lbike/smarthalo/sdk/SHNotificationManager;->getForegroundServiceNotification(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x191

    .line 754
    invoke-virtual {p0, v1, v0}, Lbike/smarthalo/sdk/SHDeviceService;->startForeground(ILandroid/app/Notification;)V

    .line 759
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v0, v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->removeDeviceWithIdFromList(Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v2, "Successful authentication, Clearing AUTHENTICATION timeout"

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearAuthenticationTimeout()V

    .line 763
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    .line 764
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v2, "DEVICE_VERSION_KEY"

    invoke-virtual {v0}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v3

    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/DeviceModel;->getSimpleValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {v0}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->updateDeviceDate(Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    .line 773
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p0, v0}, Lbike/smarthalo/sdk/bluetooth/BootloaderScanner;->stopScan(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    .line 775
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkBuildConfigHelper;->launchParentServiceOnAuthentication(Landroid/content/Context;)V

    return-void
.end method

.method private onTransceiveTimeout()V
    .locals 2

    .line 1000
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    new-instance v1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$p8UGci62ozhpAzaOPNIgeI9mcg4;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$p8UGci62ozhpAzaOPNIgeI9mcg4;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    invoke-virtual {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->peekQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    return-void
.end method

.method private pruneDeviceListDelayed()V
    .locals 3

    .line 1245
    new-instance v0, Lbike/smarthalo/sdk/SHDeviceService$7;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/SHDeviceService$7;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    const-wide/16 v1, 0x2710

    invoke-static {p0, v1, v2, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    return-void
.end method

.method private removeDeviceWithIdFromList(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1357
    :goto_0
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1358
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/sdk/models/BleDevice;

    iget-object v1, v1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1359
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1360
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastDeviceListUpdated()V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private sendAuthenticationCommand(Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    .line 719
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 720
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_authenticate:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 721
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 722
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "sendAuthenticationCommand"

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 723
    new-instance v7, Lbike/smarthalo/sdk/SHDeviceService$3;

    invoke-direct {v7, p0, p2}, Lbike/smarthalo/sdk/SHDeviceService$3;-><init>(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/CmdCallback;)V

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lbike/smarthalo/sdk/SHDeviceService;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "auth_authenticate:catch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastError(ILjava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    .line 744
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setNotification(Lbike/smarthalo/sdk/SHNotificationManager$NotifType;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    if-nez v0, :cond_0

    .line 289
    invoke-static {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->getInstance(Landroid/content/Context;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    .line 292
    :cond_0
    invoke-static {p1, p0}, Lbike/smarthalo/sdk/SHNotificationManager;->getServiceStopNotification(Lbike/smarthalo/sdk/SHNotificationManager$NotifType;Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 294
    invoke-static {p1, p0}, Lbike/smarthalo/sdk/SHNotificationManager;->showNotification(Landroid/app/Notification;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private shouldStopSelfSetNotification()Z
    .locals 2

    .line 299
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->hasRequiredFeatures(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 301
    sget-object v0, Lbike/smarthalo/sdk/SHNotificationManager$NotifType;->NO_FEATURE:Lbike/smarthalo/sdk/SHNotificationManager$NotifType;

    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->setNotification(Lbike/smarthalo/sdk/SHNotificationManager$NotifType;)V

    return v1

    .line 305
    :cond_0
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkStartServicePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 309
    :cond_1
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->initializeBluetooth()V

    const/4 v0, 0x0

    return v0
.end method

.method private startPendingIntentScan()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1223
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting pending intent scan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v3, v3, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v1, v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lbike/smarthalo/sdk/SHPendingIntentScanHelper;->startPendingIntentScan(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startScan()V
    .locals 5

    .line 1164
    iget-boolean v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mIsScanning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 1166
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "Starting active ble scan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1174
    :cond_0
    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v2, 0x1

    .line 1175
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 1176
    invoke-virtual {v1, v3, v4}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v1

    .line 1177
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v1

    .line 1179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    :try_start_0
    iget-object v4, p0, Lbike/smarthalo/sdk/SHDeviceService;->shScanCallback:Lbike/smarthalo/sdk/SHScanCallback;

    invoke-virtual {v0, v3, v1, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1187
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    .line 1190
    :goto_0
    iput-boolean v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->mIsScanning:Z

    .line 1192
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->pruneDeviceListDelayed()V

    .line 1193
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScanDelayed()V

    :cond_1
    return-void
.end method

.method private stopPendingIntentScan()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 1231
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 1233
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    invoke-static {p0}, Lbike/smarthalo/sdk/SHPendingIntentScanHelper;->getScanIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private stopScanDelayed()V
    .locals 3

    .line 1201
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearStopScanDisposable()V

    .line 1203
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    .line 1204
    invoke-static {v1, v2, v0}, Lio/reactivex/Single;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Single;

    move-result-object v0

    .line 1205
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$t64vSrpXS4AOU1NYt8q8yms_NGI;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$t64vSrpXS4AOU1NYt8q8yms_NGI;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    .line 1206
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->stopScanDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private stopServiceSequence()V
    .locals 2

    .line 415
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    .line 416
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->clearQueue()V

    .line 417
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->dispose()V

    .line 418
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cleanUpSequence()V

    .line 419
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearStopScanDisposable()V

    .line 420
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    invoke-interface {v0}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->dispose()V

    .line 421
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->smartHaloOSCrashReporter:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;->dispose()V

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "bike.smarthalo.sdk.DEVICE_SERVICE_DESTROYED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->sendBroadcast(Landroid/content/Intent;)V

    .line 425
    :try_start_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public areTouchInputsSupported()Ljava/lang/Boolean;
    .locals 2

    .line 506
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v0, v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->lastKnownFirmwareVersion:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v0, v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->lastKnownFirmwareVersion:Ljava/lang/String;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_7:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    .line 508
    invoke-static {v1}, Lbike/smarthalo/sdk/firmware/NordicFirmwareHelper;->getProtocolString(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/firmware/FirmwareVersionHelper;->isFirmwareVersionSufficient(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public cleanUpDeviceConnection()V
    .locals 1

    const/4 v0, 0x1

    .line 431
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection(Z)V

    return-void
.end method

.method public cleanUpDeviceConnection(Z)V
    .locals 1

    .line 435
    new-instance v0, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$iN_bBMF4sLjZCNwZXD2XHBR1mvY;

    invoke-direct {v0, p0, p1}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$iN_bBMF4sLjZCNwZXD2XHBR1mvY;-><init>(Lbike/smarthalo/sdk/SHDeviceService;Z)V

    invoke-static {p0, v0}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public exchangeKeys()V
    .locals 7

    .line 618
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getPeriphPubKey:[B

    const-string v3, "cmd_getPeriphPubKey"

    new-instance v6, Lbike/smarthalo/sdk/SHDeviceService$1;

    invoke-direct {v6, p0}, Lbike/smarthalo/sdk/SHDeviceService$1;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lbike/smarthalo/sdk/SHDeviceService;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public getAlarmCommandsController()Lbike/smarthalo/sdk/commands/AlarmCommandsController;
    .locals 1

    .line 365
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->alarmCommandsController:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    return-object v0
.end method

.method public getBleDeviceFromId(Ljava/lang/String;)Lbike/smarthalo/sdk/models/BleDevice;
    .locals 3

    .line 1140
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbike/smarthalo/sdk/models/BleDevice;

    .line 1141
    iget-object v2, v1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBleNotificationSourceController()Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;
    .locals 1

    .line 377
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

    return-object v0
.end method

.method public getBluetoothSpeedMonitor()Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;
    .locals 1

    .line 388
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothSpeedMonitor:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    return-object v0
.end method

.method public getCarouselCommandsController()Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;
    .locals 1

    .line 390
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->carouselCommandsController:Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

    return-object v0
.end method

.method public getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 1

    .line 1103
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-object v0
.end method

.method public getDebugLogger()Lbike/smarthalo/sdk/helpers/DebugLoggerContract;
    .locals 1

    .line 392
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    return-object v0
.end method

.method public getDeviceCommandsController()Lbike/smarthalo/sdk/commands/DeviceCommandsController;
    .locals 1

    .line 373
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    return-object v0
.end method

.method public getDeviceList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/sdk/models/BleDevice;",
            ">;"
        }
    .end annotation

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1135
    new-instance v1, Lbike/smarthalo/sdk/bluetooth/DeviceComparator;

    invoke-direct {v1}, Lbike/smarthalo/sdk/bluetooth/DeviceComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public getEncryptionKey()Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;
    .locals 1

    .line 1376
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mAES:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    return-object v0
.end method

.method public getExperimentalCommandsController()Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;
    .locals 1

    .line 369
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->experimentalCommandsController:Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    return-object v0
.end method

.method public getPreviousConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;
    .locals 1

    .line 1107
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->previousConnectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    return-object v0
.end method

.method public getServiceStorage()Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;
    .locals 1

    .line 385
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    return-object v0
.end method

.method public getSmartHaloOSCrashReporter()Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporterContract;
    .locals 1

    .line 394
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->smartHaloOSCrashReporter:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;

    return-object v0
.end method

.method public getSoundsCommandsController()Lbike/smarthalo/sdk/commands/SoundsCommandsController;
    .locals 1

    .line 361
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->soundsCommandsController:Lbike/smarthalo/sdk/commands/SoundsCommandsController;

    return-object v0
.end method

.method public getStmDfuController()Lbike/smarthalo/sdk/bluetooth/StmDfuController;
    .locals 1

    .line 381
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->stmDfuController:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    return-object v0
.end method

.method public getUICommandsController()Lbike/smarthalo/sdk/commands/UICommandsController;
    .locals 1

    .line 357
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->uiCommandsController:Lbike/smarthalo/sdk/commands/UICommandsController;

    return-object v0
.end method

.method public handleDeviceFound(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;IZLbike/smarthalo/sdk/models/DeviceModel;)V
    .locals 2

    if-eqz p1, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1299
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 1305
    :cond_1
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidId()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    iget-object v1, v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1306
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidAddress()Z

    move-result p1

    if-nez p1, :cond_2

    if-nez p5, :cond_2

    .line 1307
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string p4, "ADDRESS_KEY"

    invoke-virtual {p1, p4, v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 1312
    new-instance p1, Landroid/content/Intent;

    const-string p4, "bike.smarthalo.sdk.BROADCAST_SH_BL_ADDRESS"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p4, "bike.smarthalo.sdk.EXTRA_BOOTLOADER_ADDRESS"

    .line 1313
    invoke-virtual {p1, p4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p4, "bike.smarthalo.sdk.EXTRA_DEVICE_ID"

    .line 1314
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "bike.smarthalo.sdk.EXTRA_DEVICE_NAME"

    .line 1315
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1316
    invoke-virtual {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1317
    :cond_3
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, p2, :cond_4

    const/4 p1, 0x0

    .line 1318
    invoke-direct {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->connectToSavedDevice(Z)Z

    :cond_4
    :goto_0
    return-void

    .line 1324
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const-string p1, "Device"

    .line 1326
    :goto_1
    new-instance p3, Lbike/smarthalo/sdk/models/BleDevice;

    invoke-direct {p3}, Lbike/smarthalo/sdk/models/BleDevice;-><init>()V

    .line 1328
    iput-object p1, p3, Lbike/smarthalo/sdk/models/BleDevice;->name:Ljava/lang/String;

    .line 1329
    iput-object v0, p3, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    .line 1330
    iput-object p2, p3, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    .line 1331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p3, Lbike/smarthalo/sdk/models/BleDevice;->timestamp:Ljava/lang/Long;

    .line 1332
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p3, Lbike/smarthalo/sdk/models/BleDevice;->rssi:Ljava/lang/Integer;

    .line 1333
    iput-object p6, p3, Lbike/smarthalo/sdk/models/BleDevice;->deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    .line 1335
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1336
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_8

    .line 1338
    iget-object p2, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1341
    :cond_7
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mDeviceList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    :cond_8
    :goto_2
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastDeviceListUpdated()V

    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public hasEnteredBootloader(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection(Z)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xc8

    .line 477
    new-instance p1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$qHURayQlnNWdQQrGu5B5ps3oZVo;

    invoke-direct {p1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$qHURayQlnNWdQQrGu5B5ps3oZVo;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    invoke-static {p0, v0, v1, p1}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThreadDelayed(Landroid/content/Context;JLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public manualConnect()Z
    .locals 1

    .line 913
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cleanUpSequence()V

    :cond_0
    const/4 v0, 0x0

    .line 916
    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->connectToSavedDevice(Z)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 284
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method public onConnectionStateChanged(Lbike/smarthalo/sdk/models/DeviceConnectionState;)V
    .locals 4

    .line 841
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Connected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne p1, v0, :cond_2

    :cond_1
    return-void

    .line 847
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON CONNECTION STATE changed from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-virtual {v3}, Lbike/smarthalo/sdk/models/DeviceConnectionState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceConnectionState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->previousConnectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    .line 849
    iput-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    .line 851
    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService$8;->$SwitchMap$bike$smarthalo$sdk$models$DeviceConnectionState:[I

    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceConnectionState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 860
    :pswitch_0
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->onSuccessfulAuthentication()V

    goto :goto_0

    .line 856
    :pswitch_1
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearDirectConnectionTimeout()V

    .line 857
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->onBleConnectedToDevice()V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x1

    .line 853
    invoke-virtual {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->stopForeground(Z)V

    .line 864
    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastConnectionState()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()V
    .locals 3

    .line 324
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 325
    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "Device Service created"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->getInstance(Landroid/content/Context;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    .line 329
    new-instance v0, Lbike/smarthalo/sdk/SHScanCallback;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/SHScanCallback;-><init>(Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->shScanCallback:Lbike/smarthalo/sdk/SHScanCallback;

    .line 331
    new-instance v0, Lbike/smarthalo/sdk/helpers/DebugLogger;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-direct {v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLogger;-><init>(Lbike/smarthalo/sdk/serviceStorage/CurrentDeviceContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    .line 332
    new-instance v0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    invoke-direct {v0, p0, p0, p0}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    .line 333
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    invoke-direct {v0, v1, p0, v2}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationController;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/encryption/EncryptionContract;Lbike/smarthalo/sdk/helpers/DebugLoggerContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

    .line 334
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    invoke-direct {v0, p0, p0, v1, v2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;Lbike/smarthalo/sdk/helpers/DebugLoggerContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    .line 335
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    invoke-direct {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    .line 336
    new-instance v0, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;-><init>(Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationSourceContract;Lbike/smarthalo/sdk/helpers/DebugLoggerContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->smartHaloOSCrashReporter:Lbike/smarthalo/sdk/stmUtils/SmartHaloOSCrashReporter;

    .line 338
    invoke-static {p0}, Lbike/smarthalo/sdk/SHNotificationManager;->initializeNotificationChannel(Landroid/content/Context;)V

    .line 340
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->shouldStopSelfSetNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopSelf()V

    return-void

    .line 345
    :cond_0
    new-instance v0, Lbike/smarthalo/sdk/commands/UICommandsController;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    invoke-direct {v0, p0, p0, v1}, Lbike/smarthalo/sdk/commands/UICommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->uiCommandsController:Lbike/smarthalo/sdk/commands/UICommandsController;

    .line 346
    new-instance v0, Lbike/smarthalo/sdk/commands/SoundsCommandsController;

    invoke-direct {v0, p0, p0}, Lbike/smarthalo/sdk/commands/SoundsCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->soundsCommandsController:Lbike/smarthalo/sdk/commands/SoundsCommandsController;

    .line 347
    new-instance v0, Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->deviceCommandsController:Lbike/smarthalo/sdk/commands/DeviceCommandsController;

    invoke-direct {v0, p0, p0, v1}, Lbike/smarthalo/sdk/commands/AlarmCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->alarmCommandsController:Lbike/smarthalo/sdk/commands/AlarmCommandsController;

    .line 348
    new-instance v0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->uiCommandsController:Lbike/smarthalo/sdk/commands/UICommandsController;

    invoke-direct {v0, p0, v1, p0}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/ExperimentalUICommandsContract;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->experimentalCommandsController:Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;

    .line 349
    new-instance v0, Lbike/smarthalo/sdk/commands/DFUCommandsController;

    invoke-direct {v0, p0, p0}, Lbike/smarthalo/sdk/commands/DFUCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    .line 350
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->dfuCommandsController:Lbike/smarthalo/sdk/commands/DFUCommandsController;

    iget-object v2, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/sdk/bluetooth/StmDfuController;-><init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/helpers/DebugLoggerContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->stmDfuController:Lbike/smarthalo/sdk/bluetooth/StmDfuController;

    .line 351
    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

    invoke-direct {v0, p0, p0}, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->carouselCommandsController:Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;

    .line 353
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothActionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/sdk/SHDeviceService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 398
    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "Device service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopServiceSequence()V

    .line 401
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onNewTransceiveResult([BLbike/smarthalo/sdk/models/TransceiveTask;)V
    .locals 4

    .line 513
    iget-object v0, p2, Lbike/smarthalo/sdk/models/TransceiveTask;->recvPayloads:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->mAES:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    invoke-static {p1, v0, v1}, Lbike/smarthalo/sdk/encryption/SHEncryptionHelper;->decryptBlePacket([B[BLbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;)[B

    move-result-object p1

    if-eqz p1, :cond_2

    .line 515
    array-length v0, p1

    if-lez v0, :cond_2

    .line 516
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearTransceiveTimeout()V

    const/4 v0, 0x0

    .line 517
    aget-byte v0, p1, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 518
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Denied Command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->reportNonFatalException(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getStringPayload([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p2, Lbike/smarthalo/sdk/models/TransceiveTask;->cb:Lbike/smarthalo/sdk/models/TransceiveCallback;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p2, Lbike/smarthalo/sdk/models/TransceiveTask;->cb:Lbike/smarthalo/sdk/models/TransceiveCallback;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/models/TransceiveCallback;->onData([B)V

    .line 528
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lbike/smarthalo/sdk/models/TransceiveTask;->receivedDataAt:J

    .line 529
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothSpeedMonitor:Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;

    invoke-virtual {p1, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothSpeedMonitor;->updateSpeedMetrics(Lbike/smarthalo/sdk/models/TransceiveTask;)V

    .line 530
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    new-instance p2, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$BXwFzBo8jhx59-e65HLQZqA1444;

    invoke-direct {p2, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$BXwFzBo8jhx59-e65HLQZqA1444;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    invoke-virtual {p1, p2}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->pollQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    goto :goto_0

    .line 537
    :cond_2
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "Encryption error when processing transceive result"

    invoke-interface {p1, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0, p2}, Lbike/smarthalo/sdk/SHDeviceService;->transceiveRetryOrRestart(Lbike/smarthalo/sdk/models/TransceiveTask;)V

    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 215
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->hasRequiredFeatures(Landroid/content/Context;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_8

    .line 216
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkStartServicePermissions(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    return p3

    .line 228
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "bike.smarthalo.sdk.ACTION_START_SCAN"

    .line 230
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->startScan()V

    goto :goto_0

    :cond_2
    const-string v0, "bike.smarthalo.sdk.ACTION_CONNECT_TO_KNOWN_DEVICE"

    .line 232
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 233
    invoke-direct {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->lookForKnownDevice(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "bike.smarthalo.sdk.ACTION_ACTIVE_SCAN_FOR_KNOWN_DEVICE"

    .line 234
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    invoke-direct {p0, p3}, Lbike/smarthalo/sdk/SHDeviceService;->lookForKnownDevice(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "bike.smarthalo.sdk.ACTION_LOGIN"

    .line 236
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 237
    invoke-direct {p0, p1}, Lbike/smarthalo/sdk/SHDeviceService;->loginUser(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string p1, "bike.smarthalo.sdk.ACTION_STOP_SCAN"

    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 239
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopScan()V

    goto :goto_0

    :cond_6
    const-string p1, "bike.smarthalo.sdk.ACTION_CONNECT_TO_DISCOVERED_DEVICE"

    .line 240
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 241
    invoke-direct {p0, p3}, Lbike/smarthalo/sdk/SHDeviceService;->connectToSavedDevice(Z)Z

    .line 244
    :cond_7
    :goto_0
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->initializeBluetooth()V

    return p3

    .line 217
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopSelf()V

    return p3
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3

    .line 406
    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskRemoved:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->getConnectionState()Lbike/smarthalo/sdk/models/DeviceConnectionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Authenticated:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-eq v0, v1, :cond_0

    .line 408
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->stopServiceSequence()V

    .line 411
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method public peekTransceiveQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V
    .locals 1
    .param p1    # Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 544
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    invoke-virtual {v0, p1}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->peekQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    return-void
.end method

.method public resetLocalStorageAndDisconnect()V
    .locals 2

    .line 784
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->forgetSavedDevice()V

    .line 785
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const-string v1, "forgetSavedDevice"

    .line 789
    invoke-direct {p0, v0, v1}, Lbike/smarthalo/sdk/SHDeviceService;->broadcastError(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public resetPasswordAndDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 1037
    invoke-virtual {p0, v0}, Lbike/smarthalo/sdk/SHDeviceService;->resetPasswordAndDisconnect(Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public resetPasswordAndDisconnect(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 2

    const-string v0, ""

    .line 1046
    new-instance v1, Lbike/smarthalo/sdk/SHDeviceService$5;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/SHDeviceService$5;-><init>(Lbike/smarthalo/sdk/SHDeviceService;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-direct {p0, v0, v1}, Lbike/smarthalo/sdk/SHDeviceService;->auth_setPassword(Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public saveLastKnownFirmwareVersions(Ljava/lang/String;)V
    .locals 2

    .line 502
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v1, "LAST_KNOWN_FIRMWARE_VERSION_KEY"

    invoke-virtual {v0, v1, p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMyDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 908
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v1, "ADDRESS_KEY"

    invoke-virtual {v0, v1, p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->serviceStorageController:Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    const-string v0, "ID_KEY"

    invoke-virtual {p1, v0, p2}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startAuthenticationTimeout()V
    .locals 2

    .line 982
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearAuthenticationTimeout()V

    const-wide/16 v0, 0x3a98

    .line 985
    invoke-static {v0, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getTimerOnMainThread(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$CrsJ9pNauOggTphJM7C04g-mtdc;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$CrsJ9pNauOggTphJM7C04g-mtdc;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    .line 986
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->authenticationDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startDirectConnectionTimeout()V
    .locals 2

    .line 974
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearDirectConnectionTimeout()V

    const-wide/16 v0, 0x61a8

    .line 977
    invoke-static {v0, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getTimerOnMainThread(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$JJme4ctodE0yXIOlUlBN7qpDYIc;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$JJme4ctodE0yXIOlUlBN7qpDYIc;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    .line 978
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->directConnectionDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public startTransceiveTimeoutTimer()V
    .locals 2

    .line 549
    invoke-direct {p0}, Lbike/smarthalo/sdk/SHDeviceService;->clearTransceiveTimeout()V

    const-wide/16 v0, 0x1388

    .line 552
    invoke-static {v0, v1}, Lbike/smarthalo/sdk/ObservableTimerHelper;->getTimerOnMainThread(J)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$V8EHHzVHa6jKWb356hBXSLO8QH0;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$V8EHHzVHa6jKWb356hBXSLO8QH0;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    .line 553
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveTimeoutDisposable:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public stopScan()V
    .locals 2

    .line 1271
    iget-boolean v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mIsScanning:Z

    if-eqz v0, :cond_1

    .line 1272
    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "Stopping active ble scan"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1279
    iget-object v1, p0, Lbike/smarthalo/sdk/SHDeviceService;->shScanCallback:Lbike/smarthalo/sdk/SHScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_0
    const/4 v0, 0x0

    .line 1283
    iput-boolean v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->mIsScanning:Z

    :cond_1
    return-void
.end method

.method public transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 573
    invoke-virtual/range {v0 .. v6}, Lbike/smarthalo/sdk/SHDeviceService;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V
    .locals 3

    .line 577
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Disconnected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->connectionState:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    sget-object v1, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Connected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    if-ne v0, v1, :cond_0

    if-nez p5, :cond_0

    goto/16 :goto_1

    .line 583
    :cond_0
    iget-object p5, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getStringPayload([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p5, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    new-instance p5, Lbike/smarthalo/sdk/models/TransceiveTask;

    invoke-direct {p5}, Lbike/smarthalo/sdk/models/TransceiveTask;-><init>()V

    .line 585
    iput-object p6, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->cb:Lbike/smarthalo/sdk/models/TransceiveCallback;

    if-eqz p2, :cond_1

    .line 586
    iget-object p2, p0, Lbike/smarthalo/sdk/SHDeviceService;->mAES:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    if-eqz p2, :cond_1

    const/4 p6, 0x1

    .line 587
    iput p6, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->crypted:I

    .line 588
    invoke-virtual {p2, p6, p1}, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->crypt(I[B)[B

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    .line 592
    sget-object p1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    const-string p2, "Encrypted transceive payload is null, cleaning connection"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    return-void

    .line 597
    :cond_2
    iput-object p3, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    .line 598
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p2, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->recvPayloads:Ljava/io/ByteArrayOutputStream;

    .line 599
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->sendPayloads:Ljava/util/List;

    .line 600
    array-length p2, p1

    iput p2, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->sendLen:I

    .line 601
    iput-boolean p4, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->allowRetry:Z

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->createdAt:J

    const/4 p2, 0x0

    .line 604
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_3

    .line 605
    iget-object p3, p5, Lbike/smarthalo/sdk/models/TransceiveTask;->sendPayloads:Ljava/util/List;

    add-int/lit8 p4, p2, 0x14

    invoke-static {p1, p2, p4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p2, p4

    goto :goto_0

    .line 608
    :cond_3
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->transceiveQueueManager:Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;

    new-instance p2, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$aQ7f3P5c6Vmh5ZTiRy-bS5F-sYE;

    invoke-direct {p2, p0}, Lbike/smarthalo/sdk/-$$Lambda$SHDeviceService$aQ7f3P5c6Vmh5ZTiRy-bS5F-sYE;-><init>(Lbike/smarthalo/sdk/SHDeviceService;)V

    invoke-virtual {p1, p5, p2}, Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager;->addItem(Lbike/smarthalo/sdk/models/TransceiveTask;Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetSizeCallback;)V

    return-void

    .line 579
    :cond_4
    :goto_1
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object p2, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " cannot be added to command queue.  Not authenticated"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public transceiveRetryOrRestart(Lbike/smarthalo/sdk/models/TransceiveTask;)V
    .locals 4
    .param p1    # Lbike/smarthalo/sdk/models/TransceiveTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 558
    iget-boolean v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->allowRetry:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->retryCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 559
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RETRYING TRANSCEIVE TASK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 561
    iput v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->currentSendPayloadIndex:I

    .line 562
    iget v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->retryCount:I

    .line 563
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->recvPayloads:Ljava/io/ByteArrayOutputStream;

    .line 565
    iget-object p1, p0, Lbike/smarthalo/sdk/SHDeviceService;->bluetoothDataManager:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->processNextTransceiveTask()V

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/SHDeviceService;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/SHDeviceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRANSCEIVE TIME OUT FOR TASK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", RESTARTING SERVICE"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lbike/smarthalo/sdk/SHDeviceService;->cleanUpDeviceConnection()V

    :goto_0
    return-void
.end method
