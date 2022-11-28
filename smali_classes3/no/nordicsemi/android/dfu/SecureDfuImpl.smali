.class Lno/nordicsemi/android/dfu/SecureDfuImpl;
.super Lno/nordicsemi/android/dfu/BaseCustomDfuImpl;
.source "SecureDfuImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;,
        Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;,
        Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;
    }
.end annotation


# static fields
.field static final DEFAULT_DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

.field static final DEFAULT_DFU_PACKET_UUID:Ljava/util/UUID;

.field static final DEFAULT_DFU_SERVICE_UUID:Ljava/util/UUID;

.field static DFU_CONTROL_POINT_UUID:Ljava/util/UUID; = null

.field static DFU_PACKET_UUID:Ljava/util/UUID; = null

.field static DFU_SERVICE_UUID:Ljava/util/UUID; = null

.field private static final DFU_STATUS_SUCCESS:I = 0x1

.field private static final MAX_ATTEMPTS:I = 0x3

.field private static final OBJECT_COMMAND:I = 0x1

.field private static final OBJECT_DATA:I = 0x2

.field private static final OP_CODE_CALCULATE_CHECKSUM:[B

.field private static final OP_CODE_CALCULATE_CHECKSUM_KEY:I = 0x3

.field private static final OP_CODE_CREATE_COMMAND:[B

.field private static final OP_CODE_CREATE_DATA:[B

.field private static final OP_CODE_CREATE_KEY:I = 0x1

.field private static final OP_CODE_EXECUTE:[B

.field private static final OP_CODE_EXECUTE_KEY:I = 0x4

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

.field private static final OP_CODE_PACKET_RECEIPT_NOTIF_REQ_KEY:I = 0x2

.field private static final OP_CODE_RESPONSE_CODE_KEY:I = 0x60

.field private static final OP_CODE_SELECT_OBJECT:[B

.field private static final OP_CODE_SELECT_OBJECT_KEY:I = 0x6


# instance fields
.field private final mBluetoothCallback:Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;

.field private mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private mPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field private prepareObjectDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0xfe5900001000L

    const-wide v3, -0x7fffff7fa064cb05L    # -2.724079460785E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DEFAULT_DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 55
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x60477c77cf2515b0L    # -7.141884749109775E-156

    const-wide v3, -0x7136fffe0ceab0a0L

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DEFAULT_DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    .line 56
    new-instance v0, Ljava/util/UUID;

    const-wide v3, -0x7136fffd0ceab0a0L

    invoke-direct {v0, v3, v4, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DEFAULT_DFU_PACKET_UUID:Ljava/util/UUID;

    .line 58
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DEFAULT_DFU_SERVICE_UUID:Ljava/util/UUID;

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_SERVICE_UUID:Ljava/util/UUID;

    .line 59
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DEFAULT_DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    .line 60
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DEFAULT_DFU_PACKET_UUID:Ljava/util/UUID;

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_PACKET_UUID:Ljava/util/UUID;

    const/4 v0, 0x6

    .line 75
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CREATE_COMMAND:[B

    .line 76
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CREATE_DATA:[B

    const/4 v0, 0x3

    .line 77
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    const/4 v1, 0x1

    .line 78
    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    sput-object v2, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CALCULATE_CHECKSUM:[B

    .line 79
    new-array v0, v1, [B

    const/4 v1, 0x4

    aput-byte v1, v0, v3

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_EXECUTE:[B

    const/4 v0, 0x2

    .line 80
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_SELECT_OBJECT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Intent;Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lno/nordicsemi/android/dfu/DfuBaseService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 154
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/BaseCustomDfuImpl;-><init>(Landroid/content/Intent;Lno/nordicsemi/android/dfu/DfuBaseService;)V

    .line 87
    new-instance p1, Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;

    invoke-direct {p1, p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;-><init>(Lno/nordicsemi/android/dfu/SecureDfuImpl;)V

    iput-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mBluetoothCallback:Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;

    return-void
.end method

.method private getStatusCode([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    const/16 v0, 0x60

    if-eqz p1, :cond_1

    .line 736
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    aget-byte v3, p1, v1

    if-ne v3, p2, :cond_1

    const/4 v3, 0x2

    aget-byte v4, p1, v3

    if-eq v4, v1, :cond_0

    aget-byte v1, p1, v3

    if-eq v1, v3, :cond_0

    aget-byte v1, p1, v3

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    aget-byte v1, p1, v3

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 747
    :cond_0
    aget-byte p1, p1, v3

    return p1

    .line 746
    :cond_1
    new-instance v1, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;

    const-string v2, "Invalid response received"

    invoke-direct {v1, v2, p1, v0, p2}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;-><init>(Ljava/lang/String;[BII)V

    throw v1
.end method

.method private readChecksum()Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    .line 903
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mConnected:Z

    if-eqz v0, :cond_2

    .line 906
    iget-object v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CALCULATE_CHECKSUM:[B

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeOpCode(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 908
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->readNotificationResponse()[B

    move-result-object v0

    const/4 v1, 0x3

    .line 909
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->getStatusCode([BI)I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 915
    new-instance v2, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;-><init>(Lno/nordicsemi/android/dfu/SecureDfuImpl$1;)V

    .line 916
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->unsignedBytesToInt([BI)I

    move-result v1

    iput v1, v2, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->offset:I

    const/4 v1, 0x7

    .line 917
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->unsignedBytesToInt([BI)I

    move-result v0

    iput v0, v2, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    return-object v2

    .line 913
    :cond_0
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v1, "Receiving Checksum failed"

    invoke-direct {v0, v1, v2}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 911
    :cond_1
    new-instance v2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;

    aget-byte v0, v0, v1

    const-string v1, "Receiving Checksum failed"

    invoke-direct {v2, v1, v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 904
    :cond_2
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to read Checksum: device disconnected"

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private selectObject(I)Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    .line 870
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mConnected:Z

    if-eqz v0, :cond_2

    .line 873
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_SELECT_OBJECT:[B

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    .line 874
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeOpCode(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 876
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->readNotificationResponse()[B

    move-result-object p1

    const/4 v0, 0x6

    .line 877
    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->getStatusCode([BI)I

    move-result v0

    const/4 v2, 0x3

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    .line 883
    new-instance v0, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;-><init>(Lno/nordicsemi/android/dfu/SecureDfuImpl$1;)V

    .line 884
    invoke-direct {p0, p1, v2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->unsignedBytesToInt([BI)I

    move-result v1

    iput v1, v0, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    const/4 v1, 0x7

    .line 885
    invoke-direct {p0, p1, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->unsignedBytesToInt([BI)I

    move-result v1

    iput v1, v0, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    .line 886
    invoke-direct {p0, p1, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->unsignedBytesToInt([BI)I

    move-result p1

    iput p1, v0, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    return-object v0

    .line 881
    :cond_0
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v1, "Selecting object failed"

    invoke-direct {p1, v1, v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 879
    :cond_1
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;

    aget-byte p1, p1, v2

    const-string v1, "Selecting object failed"

    invoke-direct {v0, v1, p1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 871
    :cond_2
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v0, "Unable to read object info: device disconnected"

    invoke-direct {p1, v0}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private sendFirmware(Landroid/bluetooth/BluetoothGatt;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 500
    iget v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketsBeforeNotification:I

    const/16 v3, 0xa

    if-lez v0, :cond_0

    .line 502
    invoke-direct {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->setPacketReceiptNotifications(I)V

    .line 503
    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Packet Receipt Notif Req (Op Code = 2) sent (Value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    :cond_0
    const-string v0, "Setting object to Data (Op Code = 6, Type = 2)"

    .line 509
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 510
    invoke-direct {v1, v4}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->selectObject(I)Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;

    move-result-object v5

    .line 511
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Data object info received (Max size = %d, Offset = %d, CRC = %08X)"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    .line 512
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    .line 511
    invoke-static {v0, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 513
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Data object info received (Max size = %d, Offset = %d, CRC = %08X)"

    new-array v9, v7, [Ljava/lang/Object;

    iget v12, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    .line 514
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    iget v12, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    iget v12, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v4

    .line 513
    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 515
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    iget v6, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    invoke-virtual {v0, v6}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setMaxObjectSizeInBytes(I)V

    .line 518
    iget v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mImageSizeInBytes:I

    iget v6, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    add-int/2addr v0, v6

    sub-int/2addr v0, v11

    iget v6, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    div-int v6, v0, v6

    .line 524
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    const-wide v8, 0xffffffffL

    const/16 v12, 0xf

    if-lez v0, :cond_6

    .line 526
    :try_start_0
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    iget v14, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    div-int v14, v0, v14

    .line 527
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    mul-int v0, v0, v14

    .line 528
    iget v15, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    sub-int/2addr v15, v0

    if-nez v15, :cond_1

    .line 532
    iget v15, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    sub-int/2addr v0, v15

    .line 533
    iget v15, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    :cond_1
    if-lez v0, :cond_2

    .line 538
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    new-array v11, v0, [B

    invoke-virtual {v7, v11}, Ljava/io/InputStream;->read([B)I

    .line 539
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    iget v11, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    invoke-virtual {v7, v11}, Ljava/io/InputStream;->mark(I)V

    .line 542
    :cond_2
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    new-array v11, v15, [B

    invoke-virtual {v7, v11}, Ljava/io/InputStream;->read([B)I

    .line 545
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    check-cast v7, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-virtual {v7}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getCrc32()J

    move-result-wide v18

    move v11, v14

    and-long v13, v18, v8

    long-to-int v14, v13

    .line 547
    iget v13, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    if-ne v14, v13, :cond_5

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " bytes of data sent before, CRC match"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 549
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " bytes of data sent before, CRC match"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 551
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    iget v13, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v0, v13}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setBytesSent(I)V

    .line 552
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    iget v13, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v0, v13}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setBytesReceived(I)V

    .line 555
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    if-ne v15, v0, :cond_4

    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    iget v13, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mImageSizeInBytes:I

    if-ge v0, v13, :cond_4

    const-string v0, "Executing data object (Op Code = 4)"

    .line 556
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 558
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeExecute()V

    .line 559
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v13, "Data object executed"

    invoke-virtual {v0, v3, v13}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_1
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 564
    :try_start_2
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v13

    const/16 v14, 0x8

    if-ne v13, v14, :cond_3

    .line 567
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v13, "Data object already executed"

    invoke-virtual {v0, v3, v13}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 565
    :cond_3
    throw v0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 573
    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " bytes sent before, CRC does not match"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 574
    iget-object v13, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes sent before, CRC does not match"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v12, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 578
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v7, v0}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setBytesSent(I)V

    .line 579
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v7, v0}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setBytesReceived(I)V

    .line 580
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    sub-int/2addr v0, v15

    iput v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    .line 581
    iput v10, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    .line 582
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resuming from byte "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 584
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resuming from byte "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "..."

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Error while reading firmware stream"

    .line 588
    invoke-virtual {v1, v3, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 589
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x1004

    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    .line 594
    :cond_6
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v0, v10}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setBytesSent(I)V

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 597
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 599
    iget v15, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    iget v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mImageSizeInBytes:I

    if-ge v15, v7, :cond_10

    const/4 v15, 0x1

    .line 602
    :goto_2
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v7}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->getAvailableObjectSizeIsBytes()I

    move-result v7

    if-lez v7, :cond_11

    if-nez v0, :cond_a

    .line 605
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v7}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->getAvailableObjectSizeIsBytes()I

    move-result v7

    .line 606
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Creating Data object (Op Code = 1, Type = 2, Size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v11, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 607
    invoke-direct {v1, v4, v7}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeCreateRequest(II)V

    .line 608
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Data object ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ") created"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 613
    iget-wide v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->prepareObjectDelay:J

    const-wide/16 v20, 0x0

    cmp-long v9, v7, v20

    if-gtz v9, :cond_7

    if-nez v6, :cond_9

    .line 614
    :cond_7
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    iget-wide v8, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->prepareObjectDelay:J

    cmp-long v12, v8, v20

    if-lez v12, :cond_8

    goto :goto_3

    :cond_8
    const-wide/16 v8, 0x190

    :goto_3
    invoke-virtual {v7, v8, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitFor(J)V

    .line 616
    :cond_9
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v8, "Uploading firmware..."

    invoke-virtual {v7, v3, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_4

    .line 619
    :cond_a
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v7, "Resuming uploading firmware..."

    invoke-virtual {v0, v3, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    :try_start_3
    const-string v7, "Uploading firmware..."

    .line 626
    invoke-virtual {v1, v7}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 627
    iget-object v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v7}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->uploadFirmwareImage(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    :try_end_3
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_3 .. :try_end_3} :catch_5

    const-string v7, "Sending Calculate Checksum command (Op Code = 3)"

    .line 634
    invoke-virtual {v1, v7}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 635
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->readChecksum()Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;

    move-result-object v8

    .line 636
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Checksum received (Offset = %d, CRC = %08X)"

    new-array v12, v4, [Ljava/lang/Object;

    iget v3, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->offset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v12, v10

    iget v3, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v17, 0x1

    aput-object v3, v12, v17

    invoke-static {v7, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 637
    iget-object v3, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Checksum received (Offset = %d, CRC = %08X)"

    new-array v12, v4, [Ljava/lang/Object;

    iget v4, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->offset:I

    .line 638
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v10

    iget v4, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x1

    aput-object v4, v12, v17

    .line 637
    invoke-static {v7, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-virtual {v3, v7, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 641
    iget-object v3, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v3}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->getBytesSent()I

    move-result v3

    iget v4, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->offset:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_c

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes were lost!"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logw(Ljava/lang/String;)V

    .line 644
    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes were lost"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xf

    invoke-virtual {v4, v9, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 649
    :try_start_4
    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 650
    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    iget v7, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    sub-int/2addr v7, v3

    new-array v7, v7, [B

    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    .line 651
    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    iget v7, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->offset:I

    invoke-virtual {v4, v7}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setBytesSent(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 666
    iget v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketsBeforeNotification:I

    if-eqz v4, :cond_b

    iget v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketsBeforeNotification:I

    const/4 v7, 0x1

    if-le v4, v7, :cond_c

    goto :goto_5

    :cond_b
    const/4 v7, 0x1

    .line 667
    :goto_5
    iput v7, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketsBeforeNotification:I

    .line 668
    invoke-direct {v1, v7}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->setPacketReceiptNotifications(I)V

    .line 669
    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v7, "Packet Receipt Notif Req (Op Code = 2) sent (Value = 1)"

    const/16 v9, 0xa

    invoke-virtual {v4, v9, v7}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Progress lost. Bytes sent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v4}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->getBytesSent()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 660
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x100f

    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :catch_3
    move-exception v0

    const-string v3, "Error while reading firmware stream"

    .line 653
    invoke-virtual {v1, v3, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x1004

    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    .line 675
    :cond_c
    :goto_6
    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    check-cast v4, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-virtual {v4}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getCrc32()J

    move-result-wide v22

    move v9, v11

    const-wide v18, 0xffffffffL

    and-long v10, v22, v18

    long-to-int v11, v10

    .line 676
    iget v10, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    if-ne v11, v10, :cond_e

    if-lez v3, :cond_d

    move v11, v9

    move-wide/from16 v8, v18

    const/4 v0, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/16 v12, 0xf

    goto/16 :goto_2

    :cond_d
    const-string v3, "Executing data object (Op Code = 4)"

    .line 682
    invoke-virtual {v1, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 683
    iget-object v3, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v3}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->isComplete()Z

    move-result v3

    invoke-direct {v1, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeExecute(Z)V

    .line 684
    iget-object v3, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v8, "Data object executed"

    const/16 v10, 0xa

    invoke-virtual {v3, v10, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    add-int/lit8 v11, v9, 0x1

    .line 690
    iget-object v3, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->mark(I)V

    move v9, v11

    const/4 v7, 0x3

    const/16 v10, 0xf

    const/4 v11, 0x2

    const/4 v15, 0x1

    goto :goto_7

    :cond_e
    const/4 v4, 0x0

    .line 692
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "CRC does not match! Expected %08X but found %08X."

    const/4 v12, 0x2

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v4

    iget v8, v8, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v11, 0x1

    aput-object v8, v7, v11

    invoke-static {v3, v10, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    if-ge v15, v7, :cond_f

    add-int/lit8 v15, v15, 0x1

    .line 695
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, " Retrying...(%d/%d)"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/4 v4, 0x0

    aput-object v16, v12, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v12, v17

    invoke-static {v3, v10, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-virtual {v1, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 697
    iget-object v8, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v10, 0xf

    invoke-virtual {v8, v10, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 700
    :try_start_5
    iget-object v3, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    .line 701
    iget-object v3, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    iget-object v8, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    check-cast v8, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    invoke-virtual {v8}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getBytesRead()I

    move-result v8

    invoke-virtual {v3, v8}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setBytesSent(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_7
    move v11, v9

    move-wide/from16 v8, v18

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/16 v12, 0xf

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v3, "Error while resetting the firmware stream"

    .line 703
    invoke-virtual {v1, v3, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 704
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x1004

    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    .line 708
    :cond_f
    invoke-virtual {v1, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;)V

    .line 709
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v4, 0x14

    invoke-virtual {v0, v4, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 710
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x100d

    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :catch_5
    move-exception v0

    const-string v2, "Disconnected while sending data"

    .line 629
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;)V

    .line 630
    throw v0

    :cond_10
    const-string v0, "Executing data object (Op Code = 4)"

    .line 717
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 718
    invoke-direct {v1, v2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeExecute(Z)V

    .line 719
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v2, "Data object executed"

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 722
    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transfer of "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v4}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->getBytesSent()I

    move-result v4

    iget v5, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes has taken "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v13

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 724
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upload completed in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private sendInitPacket(Landroid/bluetooth/BluetoothGatt;Z)V
    .locals 16
    .param p1    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 348
    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    const-string v0, "Setting object to Command (Op Code = 6, Type = 1)"

    .line 353
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 354
    invoke-direct {v1, v4}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->selectObject(I)Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;

    move-result-object v5

    .line 355
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Command object info received (Max size = %d, Offset = %d, CRC = %08X)"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Object;

    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x2

    aput-object v9, v8, v11

    invoke-static {v0, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 356
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Command object info received (Max size = %d, Offset = %d, CRC = %08X)"

    new-array v9, v7, [Ljava/lang/Object;

    iget v12, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v10

    iget v12, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v4

    iget v12, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xa

    invoke-virtual {v0, v8, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 358
    iget v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketSizeInBytes:I

    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->maxSize:I

    const-wide v12, 0xffffffffL

    const/16 v6, 0x1004

    if-eqz p2, :cond_2

    .line 366
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    if-lez v0, :cond_2

    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    iget v9, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketSizeInBytes:I

    if-gt v0, v9, :cond_2

    .line 369
    :try_start_0
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    new-array v0, v0, [B

    .line 370
    iget-object v9, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketStream:Ljava/io/InputStream;

    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    .line 372
    invoke-virtual {v3, v0}, Ljava/util/zip/CRC32;->update([B)V

    .line 373
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v14

    and-long/2addr v14, v12

    long-to-int v0, v14

    .line 375
    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    if-ne v9, v0, :cond_1

    const-string v0, "Init packet CRC is the same"

    .line 376
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 377
    iget v0, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    iget v9, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketSizeInBytes:I

    if-ne v0, v9, :cond_0

    const-string v0, "-> Whole Init packet was sent before"

    .line 380
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 382
    :try_start_1
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v9, "Received CRC match Init packet"

    invoke-virtual {v0, v8, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    const/4 v9, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v9, 0x1

    goto :goto_1

    .line 384
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-> "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes of Init packet were sent before"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 386
    :try_start_3
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v9, "Resuming sending Init packet..."

    invoke-virtual {v0, v8, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v0, 0x0

    const/4 v9, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    const/4 v14, 0x1

    goto :goto_2

    .line 391
    :cond_1
    :try_start_4
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 392
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 393
    iput v10, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_0
    move v14, v9

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v9, 0x0

    :goto_1
    const/4 v14, 0x0

    .line 396
    :goto_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error while reading "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bytes from the init packet stream"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    :try_start_5
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 400
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V

    .line 401
    iput v10, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move v0, v9

    goto :goto_3

    :catch_3
    move-exception v0

    const-string v3, "Error while resetting the init packet stream"

    .line 403
    invoke-virtual {v1, v3, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {v0, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    const/4 v14, 0x0

    :goto_3
    if-nez v0, :cond_6

    .line 413
    invoke-direct {v1, v10}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->setPacketReceiptNotifications(I)V

    .line 414
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v9, "Packet Receipt Notif disabled (Op Code = 2, Value = 0)"

    invoke-virtual {v0, v8, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v0, 0x1

    :goto_4
    if-gt v0, v7, :cond_6

    if-nez v14, :cond_3

    .line 419
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Creating Init packet object (Op Code = 1, Type = 1, Size = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketSizeInBytes:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 420
    iget v9, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketSizeInBytes:I

    invoke-direct {v1, v4, v9}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeCreateRequest(II)V

    .line 421
    iget-object v9, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v11, "Command object created"

    invoke-virtual {v9, v8, v11}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 425
    :cond_3
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketSizeInBytes:I

    iget v14, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    sub-int/2addr v11, v14

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bytes of init packet..."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 426
    iget-object v9, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1, v9, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeInitData(Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/util/zip/CRC32;)V
    :try_end_6
    .catch Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException; {:try_start_6 .. :try_end_6} :catch_5

    .line 431
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v14

    and-long/2addr v14, v12

    long-to-int v9, v14

    .line 432
    iget-object v11, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "Command object sent (CRC = %08X)"

    new-array v12, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v14, v15, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const-string v11, "Sending Calculate Checksum command (Op Code = 3)"

    .line 435
    invoke-virtual {v1, v11}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 436
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->readChecksum()Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;

    move-result-object v11

    .line 437
    iget-object v12, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "Checksum received (Offset = %d, CRC = %08X)"

    const/4 v15, 0x2

    new-array v6, v15, [Ljava/lang/Object;

    iget v7, v11, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->offset:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget v7, v11, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v13, v14, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v8, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 438
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Checksum received (Offset = %d, CRC = %08X)"

    new-array v12, v15, [Ljava/lang/Object;

    iget v13, v11, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->offset:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    iget v13, v11, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    invoke-static {v6, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 440
    iget v6, v11, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectChecksum;->CRC32:I

    if-ne v9, v6, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v6, 0x3

    if-ge v0, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CRC does not match! Retrying...("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 447
    iget-object v6, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v7, 0xf

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CRC does not match! Retrying...("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 451
    :try_start_7
    iput v10, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->offset:I

    .line 452
    iput v10, v5, Lno/nordicsemi/android/dfu/SecureDfuImpl$ObjectInfo;->CRC32:I

    .line 453
    iget-object v6, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    .line 454
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->reset()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    const/16 v6, 0x1004

    const/4 v7, 0x3

    const-wide v12, 0xffffffffL

    const/4 v14, 0x0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    const-string v3, "Error while resetting the init packet stream"

    .line 456
    invoke-virtual {v1, v3, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x1004

    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :cond_5
    const-string v0, "CRC does not match!"

    .line 461
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;)V

    .line 462
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x14

    const-string v4, "CRC does not match!"

    invoke-virtual {v0, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 463
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v3, 0x100d

    invoke-virtual {v0, v2, v3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :catch_5
    move-exception v0

    const-string v2, "Disconnected while sending init packet"

    .line 428
    invoke-virtual {v1, v2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;)V

    .line 429
    throw v0

    :cond_6
    :goto_5
    const-string v0, "Executing init packet (Op Code = 4)"

    .line 471
    invoke-virtual {v1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 472
    invoke-direct/range {p0 .. p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeExecute()V

    .line 473
    iget-object v0, v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string v2, "Command object executed"

    invoke-virtual {v0, v8, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    return-void
.end method

.method private setNumberOfPackets([BI)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 758
    aput-byte v0, p1, v1

    shr-int/lit8 p2, p2, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x2

    .line 759
    aput-byte p2, p1, v0

    return-void
.end method

.method private setObjectSize([BI)V
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 769
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 770
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 771
    aput-byte v0, p1, v1

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x5

    .line 772
    aput-byte p2, p1, v0

    return-void
.end method

.method private setPacketReceiptNotifications(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;,
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;
        }
    .end annotation

    .line 793
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mConnected:Z

    if-eqz v0, :cond_2

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending the number of packets before notifications (Op Code = 2, Value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 798
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    invoke-direct {p0, v0, p1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->setNumberOfPackets([BI)V

    .line 799
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_PACKET_RECEIPT_NOTIF_REQ:[B

    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeOpCode(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 802
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->readNotificationResponse()[B

    move-result-object p1

    const/4 v0, 0x2

    .line 803
    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->getStatusCode([BI)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    return-void

    .line 807
    :cond_0
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v1, "Sending the number of packets failed"

    invoke-direct {p1, v1, v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 805
    :cond_1
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    const-string v1, "Sending the number of packets failed"

    invoke-direct {v0, v1, p1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 794
    :cond_2
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v0, "Unable to read Checksum: device disconnected"

    invoke-direct {p1, v0}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private unsignedBytesToInt([BI)I
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 922
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    add-int/2addr v0, p1

    return v0
.end method

.method private writeCreateRequest(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;
        }
    .end annotation

    .line 841
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mConnected:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 844
    sget-object p1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CREATE_COMMAND:[B

    goto :goto_0

    :cond_0
    sget-object p1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_CREATE_DATA:[B

    .line 845
    :goto_0
    invoke-direct {p0, p1, p2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->setObjectSize([BI)V

    .line 846
    iget-object p2, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, p2, p1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeOpCode(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 848
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->readNotificationResponse()[B

    move-result-object p1

    .line 849
    invoke-direct {p0, p1, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->getStatusCode([BI)I

    move-result p2

    const/16 v1, 0xb

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_1

    return-void

    .line 853
    :cond_1
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v0, "Creating Command object failed"

    invoke-direct {p1, v0, p2}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 851
    :cond_2
    new-instance p2, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    const-string v0, "Creating Command object failed"

    invoke-direct {p2, v0, p1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 842
    :cond_3
    new-instance p1, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string p2, "Unable to create object: device disconnected"

    invoke-direct {p1, p2}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeExecute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;,
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;
        }
    .end annotation

    .line 941
    iget-boolean v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mConnected:Z

    if-eqz v0, :cond_2

    .line 944
    iget-object v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    sget-object v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->OP_CODE_EXECUTE:[B

    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeOpCode(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V

    .line 946
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->readNotificationResponse()[B

    move-result-object v0

    const/4 v1, 0x4

    .line 947
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->getStatusCode([BI)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    return-void

    .line 951
    :cond_0
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;

    const-string v2, "Executing object failed"

    invoke-direct {v0, v2, v1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 949
    :cond_1
    new-instance v1, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    const-string v2, "Executing object failed"

    invoke-direct {v1, v2, v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 942
    :cond_2
    new-instance v0, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;

    const-string v1, "Unable to read Checksum: device disconnected"

    invoke-direct {v0, v1}, Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeExecute(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;,
            Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;
        }
    .end annotation

    .line 979
    :try_start_0
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeExecute()V
    :try_end_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 981
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 982
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x205

    invoke-static {v0}, Lno/nordicsemi/android/error/SecureDfuError;->parse(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logw(Ljava/lang/String;)V

    .line 983
    iget p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFileType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "Are you sure your new SoftDevice is API compatible with the updated one? If not, update the bootloader as well"

    .line 984
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logw(Ljava/lang/String;)V

    .line 987
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v2, 0xf

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Remote DFU error: %s. SD busy? Retrying..."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 988
    invoke-static {v0}, Lno/nordicsemi/android/error/SecureDfuError;->parse(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    .line 987
    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const-string p1, "SD busy? Retrying..."

    .line 989
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    const-string p1, "Executing data object (Op Code = 4)"

    .line 990
    invoke-virtual {p0, p1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 991
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeExecute()V

    :goto_0
    return-void

    .line 993
    :cond_1
    throw v0
.end method

.method private writeOpCode(Landroid/bluetooth/BluetoothGattCharacteristic;[B)V
    .locals 1
    .param p1    # Landroid/bluetooth/BluetoothGattCharacteristic;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 824
    invoke-virtual {p0, p1, p2, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->writeOpCode(Landroid/bluetooth/BluetoothGattCharacteristic;[BZ)V

    return-void
.end method


# virtual methods
.method protected getControlPointCharacteristicUUID()Ljava/util/UUID;
    .locals 1

    .line 193
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method protected getDfuServiceUUID()Ljava/util/UUID;
    .locals 1

    .line 203
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public getGattCallback()Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;
    .locals 1

    .line 188
    iget-object v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mBluetoothCallback:Lno/nordicsemi/android/dfu/SecureDfuImpl$SecureBluetoothCallback;

    return-object v0
.end method

.method public bridge synthetic getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->getGattCallback()Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;

    move-result-object v0

    return-object v0
.end method

.method protected getPacketCharacteristicUUID()Ljava/util/UUID;
    .locals 1

    .line 198
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_PACKET_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method public initialize(Landroid/content/Intent;Landroid/bluetooth/BluetoothGatt;ILjava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    if-nez p5, :cond_0

    .line 177
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p3, 0x14

    const-string p4, "The Init packet is required by this version DFU Bootloader"

    invoke-virtual {p1, p3, p4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 179
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p3, 0x100b

    invoke-virtual {p1, p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    const/4 p1, 0x0

    return p1

    .line 183
    :cond_0
    invoke-super/range {p0 .. p5}, Lno/nordicsemi/android/dfu/BaseCustomDfuImpl;->initialize(Landroid/content/Intent;Landroid/bluetooth/BluetoothGatt;ILjava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public isClientCompatible(Landroid/content/Intent;Landroid/bluetooth/BluetoothGatt;)Z
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/bluetooth/BluetoothGatt;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 159
    sget-object p1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 162
    :cond_0
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_CONTROL_POINT_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 163
    sget-object v1, Lno/nordicsemi/android/dfu/SecureDfuImpl;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    iput-object v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 166
    sget-object v0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->DFU_PACKET_UUID:Ljava/util/UUID;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 167
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mPacketCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    return p2

    :cond_3
    :goto_0
    return p2
.end method

.method public performDfu(Landroid/content/Intent;)V
    .locals 9
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lno/nordicsemi/android/dfu/internal/exception/DfuException;,
            Lno/nordicsemi/android/dfu/internal/exception/DeviceDisconnectedException;,
            Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException;
        }
    .end annotation

    const-string v0, "Secure DFU bootloader found"

    .line 209
    invoke-virtual {p0, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logw(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setProgress(I)V

    .line 216
    iget-object v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitFor(J)V

    .line 219
    iget-object v0, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mGatt:Landroid/bluetooth/BluetoothGatt;

    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_MTU"

    .line 223
    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_MTU"

    const/16 v4, 0x205

    .line 224
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting MTU = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, v3}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->requestMtu(I)V

    :cond_0
    const-string v3, "no.nordicsemi.android.dfu.extra.EXTRA_DATA_OBJECT_DELAY"

    const-wide/16 v4, 0x0

    .line 229
    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->prepareObjectDelay:J

    const/16 v3, 0x14

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 233
    :try_start_0
    iget-object v6, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mControlPointCharacteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {p0, v6, v4}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->enableCCCD(Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 234
    iget-object v6, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v7, 0xa

    const-string v8, "Notifications enabled"

    invoke-virtual {v6, v7, v8}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 240
    iget-object v6, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {v6, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitFor(J)V

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_RESUME"

    .line 243
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_RESUME"

    .line 244
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    const-string v2, "Resume feature disabled. Performing fresh DFU"

    .line 246
    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logi(Ljava/lang/String;)V
    :try_end_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    :cond_3
    :try_start_1
    invoke-direct {p0, v0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->sendInitPacket(Landroid/bluetooth/BluetoothGatt;Z)V
    :try_end_1
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception v1

    .line 252
    :try_start_2
    iget-object v2, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    invoke-virtual {v2}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->isLastPart()Z

    move-result v2

    if-nez v2, :cond_4

    .line 253
    iput-boolean v5, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mRemoteErrorOccurred:Z

    const-string v1, "Sending SD+BL failed. Trying to send App only"

    .line 255
    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->logw(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v2, 0xf

    const-string v6, "Invalid system components. Trying to send application"

    invoke-virtual {v1, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 258
    iput v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFileType:I

    .line 261
    iget-object v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFirmwareStream:Ljava/io/InputStream;

    check-cast v1, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;

    .line 262
    iget v2, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mFileType:I

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->setContentType(I)I

    .line 263
    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->getApplicationInit()[B

    move-result-object v2

    .line 264
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v6, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketStream:Ljava/io/InputStream;

    .line 265
    array-length v2, v2

    iput v2, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mInitPacketSizeInBytes:I

    .line 266
    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/internal/ArchiveInputStream;->applicationImageSize()I

    move-result v1

    iput v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mImageSizeInBytes:I

    .line 267
    iget-object v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    iget v2, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mImageSizeInBytes:I

    const/4 v6, 0x2

    invoke-virtual {v1, v2, v6, v6}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->init(III)Lno/nordicsemi/android/dfu/DfuProgressInfo;

    .line 269
    invoke-direct {p0, v0, v5}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->sendInitPacket(Landroid/bluetooth/BluetoothGatt;Z)V

    .line 275
    :goto_2
    invoke-direct {p0, v0}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->sendFirmware(Landroid/bluetooth/BluetoothGatt;)V

    .line 278
    iget-object v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mProgressInfo:Lno/nordicsemi/android/dfu/DfuProgressInfo;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lno/nordicsemi/android/dfu/DfuProgressInfo;->setProgress(I)V

    .line 279
    iget-object v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitUntilDisconnected()V

    .line 280
    iget-object v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 v2, 0x5

    const-string v6, "Disconnected by the remote device"

    invoke-virtual {v1, v2, v6}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1, v5}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->finalize(Landroid/content/Intent;Z)V

    goto/16 :goto_3

    .line 272
    :cond_4
    throw v1
    :try_end_2
    .catch Lno/nordicsemi/android/dfu/internal/exception/UploadAbortedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p1

    .line 294
    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getErrorNumber()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lno/nordicsemi/android/error/SecureDfuError;->parse(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Remote DFU error: %s"

    new-array v4, v4, [Ljava/lang/Object;

    .line 297
    invoke-static {v1}, Lno/nordicsemi/android/error/SecureDfuError;->parse(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    .line 296
    invoke-static {v6, v7, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 300
    instance-of v2, p1, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;

    if-eqz v2, :cond_5

    .line 301
    check-cast p1, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;

    .line 302
    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;->getExtendedErrorNumber()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extended Error details: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lno/nordicsemi/android/error/SecureDfuError;->parseExtendedError(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Details: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {v1}, Lno/nordicsemi/android/error/SecureDfuError;->parseExtendedError(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/internal/exception/RemoteDfuExtendedErrorException;->getExtendedErrorNumber()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {v2, v3, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 306
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_3

    .line 308
    :cond_5
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {p1, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_3

    :catch_2
    move-exception p1

    .line 290
    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lno/nordicsemi/android/dfu/SecureDfuImpl;->loge(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/internal/exception/UnknownResponseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 292
    iget-object p1, p0, Lno/nordicsemi/android/dfu/SecureDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 v1, 0x1008

    invoke-virtual {p1, v0, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->terminateConnection(Landroid/bluetooth/BluetoothGatt;I)V

    :goto_3
    return-void

    :catch_3
    move-exception p1

    .line 287
    throw p1
.end method
