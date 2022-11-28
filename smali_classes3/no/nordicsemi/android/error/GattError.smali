.class public Lno/nordicsemi/android/error/GattError;
.super Ljava/lang/Object;
.source "GattError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    sparse-switch p0, :sswitch_data_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_0
    const-string p0, "TOO MANY OPEN CONNECTIONS"

    return-object p0

    :sswitch_1
    const-string p0, "HCI ERROR DIFF TRANSACTION COLLISION"

    return-object p0

    :sswitch_2
    const-string p0, "GATT CONN LMP TIMEOUT"

    return-object p0

    :sswitch_3
    const-string p0, "HCI ERROR INVALID LMP PARAM"

    return-object p0

    :sswitch_4
    const-string p0, "HCI ERROR UNSUPPORTED REMOTE FEATURE"

    return-object p0

    :pswitch_0
    const-string p0, "DFU DEVICE NOT BONDED"

    return-object p0

    :pswitch_1
    const-string p0, "DFU CRC ERROR"

    return-object p0

    :pswitch_2
    const-string p0, "DFU INIT PACKET REQUIRED"

    return-object p0

    :pswitch_3
    const-string p0, "DFU INIT PACKET REQUIRED"

    return-object p0

    :pswitch_4
    const-string p0, "BLUETOOTH ADAPTER DISABLED"

    return-object p0

    :pswitch_5
    const-string p0, "DFU FILE TYPE NOT SUPPORTED"

    return-object p0

    :pswitch_6
    const-string p0, "DFU INVALID RESPONSE"

    return-object p0

    :pswitch_7
    const-string p0, "DFU CHARACTERISTICS NOT FOUND"

    return-object p0

    :pswitch_8
    const-string p0, "DFU SERVICE DISCOVERY NOT STARTED"

    return-object p0

    :pswitch_9
    const-string p0, "DFU IO EXCEPTION"

    return-object p0

    :pswitch_a
    const-string p0, "DFU NOT A VALID HEX FILE"

    return-object p0

    :pswitch_b
    const-string p0, "DFU FILE ERROR"

    return-object p0

    :pswitch_c
    const-string p0, "DFU FILE NOT FOUND"

    return-object p0

    :pswitch_d
    const-string p0, "DFU DEVICE DISCONNECTED"

    return-object p0

    :pswitch_e
    const-string p0, "GATT VALUE OUT OF RANGE"

    return-object p0

    :pswitch_f
    const-string p0, "GATT PROCEDURE IN PROGRESS"

    return-object p0

    :pswitch_10
    const-string p0, "GATT CCCD CFG ERROR"

    return-object p0

    :pswitch_11
    const-string p0, "GATT CONGESTED"

    return-object p0

    :pswitch_12
    const-string p0, "GATT NOT ENCRYPTED"

    return-object p0

    :pswitch_13
    const-string p0, "GATT ENCRYPTED NO MITM"

    return-object p0

    :pswitch_14
    const-string p0, "GATT SERVICE STARTED"

    return-object p0

    :pswitch_15
    const-string p0, "GATT INVALID CFG"

    return-object p0

    :pswitch_16
    const-string p0, "GATT MORE"

    return-object p0

    :pswitch_17
    const-string p0, "GATT AUTH FAIL"

    return-object p0

    :pswitch_18
    const-string p0, "GATT PENDING"

    return-object p0

    :pswitch_19
    const-string p0, "GATT ILLEGAL PARAMETER"

    return-object p0

    :pswitch_1a
    const-string p0, "GATT CMD STARTED"

    return-object p0

    :pswitch_1b
    const-string p0, "GATT ERROR"

    return-object p0

    :pswitch_1c
    const-string p0, "GATT BUSY"

    return-object p0

    :pswitch_1d
    const-string p0, "GATT DB FULL"

    return-object p0

    :pswitch_1e
    const-string p0, "GATT WRONG STATE"

    return-object p0

    :pswitch_1f
    const-string p0, "GATT INTERNAL ERROR"

    return-object p0

    :pswitch_20
    const-string p0, "GATT NO RESOURCES"

    return-object p0

    :pswitch_21
    const-string p0, "GATT UNACCEPT CONN INTERVAL"

    return-object p0

    :pswitch_22
    const-string p0, "GATT CONTROLLER BUSY"

    return-object p0

    :pswitch_23
    const-string p0, "GATT INSUF RESOURCE"

    return-object p0

    :pswitch_24
    const-string p0, "GATT UNSUPPORT GRP TYPE"

    return-object p0

    :pswitch_25
    const-string p0, "GATT INSUF ENCRYPTION"

    return-object p0

    :pswitch_26
    const-string p0, "GATT ERR UNLIKELY"

    return-object p0

    :pswitch_27
    const-string p0, "GATT INVALID ATTR LEN"

    return-object p0

    :pswitch_28
    const-string p0, "GATT INSUF KEY SIZE"

    return-object p0

    :pswitch_29
    const-string p0, "GATT NOT LONG"

    return-object p0

    :pswitch_2a
    const-string p0, "GATT NOT FOUND"

    return-object p0

    :pswitch_2b
    const-string p0, "GATT PREPARE Q FULL"

    return-object p0

    :pswitch_2c
    const-string p0, "GATT INSUF AUTHORIZATION"

    return-object p0

    :pswitch_2d
    const-string p0, "GATT INVALID OFFSET"

    return-object p0

    :pswitch_2e
    const-string p0, "GATT REQ NOT SUPPORTED"

    return-object p0

    :pswitch_2f
    const-string p0, "GATT INSUF AUTHENTICATION"

    return-object p0

    :pswitch_30
    const-string p0, "GATT INVALID PDU"

    return-object p0

    :pswitch_31
    const-string p0, "GATT WRITE NOT PERMIT"

    return-object p0

    :pswitch_32
    const-string p0, "GATT READ NOT PERMIT"

    return-object p0

    :pswitch_33
    const-string p0, "GATT INVALID HANDLE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x80
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfd
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1000
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1008
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_4
        0x1e -> :sswitch_3
        0x22 -> :sswitch_2
        0x2a -> :sswitch_1
        0x101 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseConnectionError(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x13

    if-eq p0, v0, :cond_5

    const/16 v0, 0x16

    if-eq p0, v0, :cond_4

    const/16 v0, 0x22

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x85

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "GATT CONN L2C FAILURE"

    return-object p0

    :pswitch_1
    const-string p0, "SUCCESS"

    return-object p0

    :cond_0
    const-string p0, "GATT CONN CANCEL "

    return-object p0

    :cond_1
    const-string p0, "GATT ERROR"

    return-object p0

    :cond_2
    const-string p0, "GATT CONN FAIL ESTABLISH"

    return-object p0

    :cond_3
    const-string p0, "GATT CONN LMP TIMEOUT"

    return-object p0

    :cond_4
    const-string p0, "GATT CONN TERMINATE LOCAL HOST"

    return-object p0

    :cond_5
    const-string p0, "GATT CONN TERMINATE PEER USER"

    return-object p0

    :cond_6
    const-string p0, "GATT CONN TIMEOUT"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseDfuRemoteError(I)Ljava/lang/String;
    .locals 2

    and-int/lit16 v0, p0, 0xf00

    const/16 v1, 0x100

    if-eq v0, v1, :cond_3

    const/16 v1, 0x200

    if-eq v0, v1, :cond_2

    const/16 v1, 0x400

    if-eq v0, v1, :cond_1

    const/16 v1, 0x800

    if-eq v0, v1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    invoke-static {p0}, Lno/nordicsemi/android/error/SecureDfuError;->parseButtonlessError(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    invoke-static {p0}, Lno/nordicsemi/android/error/SecureDfuError;->parseExtendedError(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 198
    :cond_2
    invoke-static {p0}, Lno/nordicsemi/android/error/SecureDfuError;->parse(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 196
    :cond_3
    invoke-static {p0}, Lno/nordicsemi/android/error/LegacyDfuError;->parse(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
