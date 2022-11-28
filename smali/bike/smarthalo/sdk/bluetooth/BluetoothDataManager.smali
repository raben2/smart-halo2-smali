.class public Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothDataManager.java"


# static fields
.field public static CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String; = null

.field public static final PARCEL_UUID_SHSERVICE1:Landroid/os/ParcelUuid;

.field public static SHDESC:Ljava/lang/String; = "00002902-0000-1000-8000-00805f9b34fb"

.field public static SHLINKCTRL:Ljava/lang/String; = "92540001-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKPAYLOAD0:Ljava/lang/String; = "92540010-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKPAYLOAD1:Ljava/lang/String; = "92540011-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKPAYLOAD2:Ljava/lang/String; = "92540012-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKPAYLOAD3:Ljava/lang/String; = "92540013-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKUPCTRL:Ljava/lang/String; = "92540101-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKUPPAYLOAD0:Ljava/lang/String; = "92540110-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKUPPAYLOAD1:Ljava/lang/String; = "92540111-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKUPPAYLOAD2:Ljava/lang/String; = "92540112-d6ed-4617-a4b4-d749f57710ce"

.field public static SHLINKUPPAYLOAD3:Ljava/lang/String; = "92540113-d6ed-4617-a4b4-d749f57710ce"

.field public static SHSERVICE1:Ljava/lang/String; = "92540000-d6ed-4617-a4b4-d749f57710ce"

.field private static final TAG:Ljava/lang/String;

.field public static final UUID_SHLINKCTRL:Ljava/util/UUID;

.field public static final UUID_SHLINKPAYLOAD0:Ljava/util/UUID;

.field public static final UUID_SHLINKPAYLOAD1:Ljava/util/UUID;

.field public static final UUID_SHLINKPAYLOAD2:Ljava/util/UUID;

.field public static final UUID_SHLINKPAYLOAD3:Ljava/util/UUID;

.field public static final UUID_SHLINKUPCTRL:Ljava/util/UUID;

.field public static final UUID_SHLINKUPPAYLOAD0:Ljava/util/UUID;

.field public static final UUID_SHLINKUPPAYLOAD1:Ljava/util/UUID;

.field public static final UUID_SHLINKUPPAYLOAD2:Ljava/util/UUID;

.field public static final UUID_SHLINKUPPAYLOAD3:Ljava/util/UUID;

.field public static final UUID_SHSERVICE1:Ljava/util/UUID;


# instance fields
.field private bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

.field private cbBLETasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/bluetooth/BluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final cbTransceiveWriteTask:Landroid/bluetooth/BluetoothGattCallback;

.field private context:Landroid/content/Context;

.field private contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

.field private debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

.field private gatt:Landroid/bluetooth/BluetoothGatt;

.field private mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

.field mSHCharPayload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

.field mSHCharUpPayload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field private notifRecvPayloads:Ljava/io/ByteArrayOutputStream;

.field private final notifySetupCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private final notifySetuplist:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHSERVICE1:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->PARCEL_UUID_SHSERVICE1:Landroid/os/ParcelUuid;

    .line 45
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHSERVICE1:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHSERVICE1:Ljava/util/UUID;

    .line 46
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKCTRL:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKCTRL:Ljava/util/UUID;

    .line 47
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKPAYLOAD0:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD0:Ljava/util/UUID;

    .line 48
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKPAYLOAD1:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD1:Ljava/util/UUID;

    .line 49
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKPAYLOAD2:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD2:Ljava/util/UUID;

    .line 50
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKPAYLOAD3:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD3:Ljava/util/UUID;

    .line 52
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKUPCTRL:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPCTRL:Ljava/util/UUID;

    .line 53
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKUPPAYLOAD0:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD0:Ljava/util/UUID;

    .line 54
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKUPPAYLOAD1:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD1:Ljava/util/UUID;

    .line 55
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKUPPAYLOAD2:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD2:Ljava/util/UUID;

    .line 56
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->SHLINKUPPAYLOAD3:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD3:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 58
    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 70
    const-class v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;Lbike/smarthalo/sdk/helpers/DebugLoggerContract;)V
    .locals 2

    .line 79
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifRecvPayloads:Ljava/io/ByteArrayOutputStream;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    .line 68
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    .line 256
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$1;-><init>(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetupCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 397
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$2;-><init>(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbTransceiveWriteTask:Landroid/bluetooth/BluetoothGattCallback;

    .line 80
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string v1, "Instantiating BluetoothDataManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->context:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    .line 83
    iput-object p4, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    .line 84
    iput-object p3, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)Ljava/util/Queue;
    .locals 0

    .line 30
    iget-object p0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic access$100(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 0

    .line 30
    iget-object p0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetupCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object p0
.end method

.method static synthetic access$200(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLandroid/bluetooth/BluetoothGattCallback;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLandroid/bluetooth/BluetoothGattCallback;)V

    return-void
.end method

.method static synthetic access$300(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;
    .locals 0

    .line 30
    iget-object p0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    return-object p0
.end method

.method private closeGatt()V
    .locals 4

    .line 102
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing gatt to device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$processNextTransceiveTask$0(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 345
    :cond_0
    iget p2, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->currentSendPayloadIndex:I

    if-nez p2, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->sentAt:J

    .line 348
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".  Attempt #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->retryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    invoke-interface {p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->startTransceiveTimeoutTimer()V

    .line 357
    :cond_1
    iget p2, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->currentSendPayloadIndex:I

    iget-object v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->sendPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p2, v0, :cond_2

    .line 358
    iget-object p2, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->sendPayloads:Ljava/util/List;

    iget v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->currentSendPayloadIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    .line 360
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 361
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->currentSendPayloadIndex:I

    if-le v0, v3, :cond_3

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    iget v4, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->currentSendPayloadIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->currentSendPayloadIndex:I

    .line 362
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v4, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbTransceiveWriteTask:Landroid/bluetooth/BluetoothGattCallback;

    invoke-direct {p0, v0, v3, p2, v4}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BLandroid/bluetooth/BluetoothGattCallback;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 366
    new-array p2, p2, [B

    iget v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->sendLen:I

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    iget v0, p1, Lbike/smarthalo/sdk/models/TransceiveTask;->crypted:I

    int-to-byte v0, v0

    aput-byte v0, p2, v2

    .line 367
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BLandroid/bluetooth/BluetoothGattCallback;)Z

    move-result v1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    .line 371
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string v1, "Write Failed!"

    invoke-interface {p2, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    invoke-interface {p2, p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->transceiveRetryOrRestart(Lbike/smarthalo/sdk/models/TransceiveTask;)V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$processTransceiveResult$1(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Landroid/bluetooth/BluetoothGattCharacteristic;Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 383
    :cond_0
    iget-object p3, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, p3, :cond_1

    .line 384
    iget-object p3, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->onNewTransceiveResult([BLbike/smarthalo/sdk/models/TransceiveTask;)V

    goto :goto_0

    .line 387
    :cond_1
    :try_start_0
    iget-object p2, p2, Lbike/smarthalo/sdk/models/TransceiveTask;->recvPayloads:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 390
    sget-object p1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string p2, "Error when processing transceive result payload, cleaning connection"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->cleanUpDeviceConnection()V

    :goto_0
    return-void
.end method

.method private processNewNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-ne p1, v0, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    .line 324
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->bleNotificationController:Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifRecvPayloads:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lbike/smarthalo/sdk/bluetooth/bleNotifications/BleNotificationContract;->onNewBleNotification([B[B)V

    .line 325
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifRecvPayloads:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 328
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifRecvPayloads:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private processTransceiveResult(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$_56X_P2pUvF7umeVddh2_54CCc8;

    invoke-direct {v1, p0, p1}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$_56X_P2pUvF7umeVddh2_54CCc8;-><init>(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->peekTransceiveQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    return-void
.end method

.method private setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLandroid/bluetooth/BluetoothGattCallback;)V
    .locals 1

    if-nez p1, :cond_0

    .line 287
    sget-object p1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string p2, "Bluetooth gatt is not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    sget-object p1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string p2, "No descriptors in bluetooth characteristic, cleaning connection"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->cleanUpDeviceConnection()V

    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {v0, p4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 300
    sget-object p3, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/lang/String;

    .line 301
    invoke-static {p3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p3

    .line 300
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object p2

    .line 302
    sget-object p3, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 303
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    return-void
.end method

.method private writeCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;[BLandroid/bluetooth/BluetoothGattCallback;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 270
    sget-object p1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string p2, "BluetoothAdapter not initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 275
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {v0, p4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-virtual {p2, p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 277
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 280
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_1
    return p1
.end method


# virtual methods
.method public cleanUpSequence()V
    .locals 1

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 309
    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 310
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifRecvPayloads:Ljava/io/ByteArrayOutputStream;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpPayload:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    .line 315
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 316
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 318
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->closeGatt()V

    return-void
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 110
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 212
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    const/4 v0, -0x1

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 213
    :cond_0
    invoke-direct {p0, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->processTransceiveResult(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 215
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eq p2, p1, :cond_2

    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpPayload:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 216
    :cond_2
    invoke-direct {p0, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->processNewNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_3
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 250
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 240
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    .line 115
    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 116
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bluetooth gatt new connection state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 120
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    sget-object p2, Lbike/smarthalo/sdk/models/DeviceConnectionState;->Connected:Lbike/smarthalo/sdk/models/DeviceConnectionState;

    invoke-interface {p1, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->onConnectionStateChanged(Lbike/smarthalo/sdk/models/DeviceConnectionState;)V

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 122
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->cleanUpDeviceConnection()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 231
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->cbBLETasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 9

    .line 128
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServicesDiscovered received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    .line 131
    sget-object p2, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHSERVICE1:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p2

    if-nez p2, :cond_0

    .line 134
    sget-object p1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string p2, "shGattService is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKCTRL:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 139
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD0:Ljava/util/UUID;

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 140
    sget-object v1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD1:Ljava/util/UUID;

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 141
    sget-object v2, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD2:Ljava/util/UUID;

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    .line 142
    sget-object v3, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKPAYLOAD3:Ljava/util/UUID;

    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    .line 144
    sget-object v4, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPCTRL:Ljava/util/UUID;

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    iput-object v4, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 145
    sget-object v4, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD0:Ljava/util/UUID;

    invoke-virtual {p2, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v4

    .line 146
    sget-object v5, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD1:Ljava/util/UUID;

    invoke-virtual {p2, v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v5

    .line 147
    sget-object v6, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD2:Ljava/util/UUID;

    invoke-virtual {p2, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 148
    sget-object v7, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->UUID_SHLINKUPPAYLOAD3:Ljava/util/UUID;

    invoke-virtual {p2, v7}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    .line 150
    iget-object v7, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz v7, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz p2, :cond_2

    iget-object v8, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-nez v8, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x1

    .line 165
    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 167
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    .line 169
    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 170
    iget-object v7, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v7, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 174
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v2, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 178
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-virtual {v3, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 182
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharPayload:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpPayload:Ljava/util/ArrayList;

    .line 187
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v0, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 188
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v4, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 191
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpPayload:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {v5, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 195
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpPayload:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-virtual {v6, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 199
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpPayload:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {p2, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 203
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharUpPayload:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetuplist:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->mSHCharCtrl:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->notifySetupCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-direct {p0, p1, p2, v8, v0}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLandroid/bluetooth/BluetoothGattCallback;)V

    goto :goto_1

    .line 160
    :cond_2
    :goto_0
    sget-object p1, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    const-string p2, "Error when discovering characteristics, cleaning connection"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->cleanUpDeviceConnection()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public processNextTransceiveTask()V
    .locals 2

    .line 340
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->contract:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    new-instance v1, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$bfDmaPV8FoQ0Mkvzb1PbGqqUg2I;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$bfDmaPV8FoQ0Mkvzb1PbGqqUg2I;-><init>(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)V

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->peekTransceiveQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V

    return-void
.end method

.method public setUpDeviceConnection(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 92
    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->debugLogger:Lbike/smarthalo/sdk/helpers/DebugLoggerContract;

    sget-object v2, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting connection with device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lbike/smarthalo/sdk/helpers/DebugLoggerContract;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v1, v0, p0}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->gatt:Landroid/bluetooth/BluetoothGatt;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method
