.class public Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;
.super Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;
.source "BaseDfuImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/dfu/BaseDfuImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseBluetoothGattCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;


# direct methods
.method protected constructor <init>(Lno/nordicsemi/android/dfu/BaseDfuImpl;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;-><init>()V

    return-void
.end method

.method private parse([B)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 226
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    const-string p1, ""

    return-object p1

    :cond_1
    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, -0x1

    .line 230
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 232
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v2, 0x3

    .line 233
    invoke-static {}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->access$100()[C

    move-result-object v5

    ushr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    aput-char v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    .line 234
    invoke-static {}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->access$100()[C

    move-result-object v6

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v3, v0, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v4, 0x2

    const/16 v3, 0x2d

    .line 236
    aput-char v3, v1, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method private phyToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    const-string p1, "LE Coded"

    return-object p1

    :pswitch_1
    const-string p1, "LE 2M"

    return-object p1

    :pswitch_2
    const-string p1, "LE 1M"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 2

    if-nez p3, :cond_0

    .line 131
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read Response received from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value (0x): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1, p3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 133
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    iput-object p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mReceivedData:[B

    .line 134
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mRequestCompleted:Z

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Characteristic read error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->loge(Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    or-int/lit16 p2, p3, 0x4000

    iput p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mError:I

    .line 139
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->notifyLock()V

    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    if-nez p3, :cond_1

    .line 145
    sget-object p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 146
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read Response received from descr."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value (0x): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->parse(Landroid/bluetooth/BluetoothGattDescriptor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p1, p3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 148
    sget-object p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mRequestCompleted:Z

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    const-string p2, "Unknown descriptor read"

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Descriptor read error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->loge(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    or-int/lit16 p2, p3, 0x4000

    iput p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mError:I

    .line 160
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->notifyLock()V

    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    if-nez p3, :cond_1

    .line 166
    sget-object p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->CLIENT_CHARACTERISTIC_CONFIG:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 167
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data written to descr."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value (0x): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->parse(Landroid/bluetooth/BluetoothGattDescriptor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1, p3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 169
    sget-object p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->SERVICE_CHANGED_UUID:Ljava/util/UUID;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p3

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indications enabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 171
    invoke-virtual {p1, p3, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notifications enabled for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-virtual {p1, p3, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Descriptor write error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->loge(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    or-int/lit16 p2, p3, 0x4000

    iput p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mError:I

    .line 183
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->notifyLock()V

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    .line 121
    iget-object v0, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mConnected:Z

    .line 122
    invoke-virtual {v0}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->notifyLock()V

    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2

    if-nez p3, :cond_1

    .line 189
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MTU changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    add-int/lit8 p1, p2, -0x3

    .line 190
    iget-object p3, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p3, p3, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mBuffer:[B

    array-length p3, p3

    if-le p1, p3, :cond_0

    .line 191
    iget-object p3, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-array p1, p1, [B

    iput-object p1, p3, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mBuffer:[B

    .line 192
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MTU changed to: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing MTU failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (mtu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->logw(Ljava/lang/String;)V

    const/4 p1, 0x4

    if-ne p3, p1, :cond_2

    .line 195
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->access$000(Lno/nordicsemi/android/dfu/BaseDfuImpl;)I

    move-result p1

    const/16 p2, 0x17

    if-le p1, p2, :cond_2

    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->access$000(Lno/nordicsemi/android/dfu/BaseDfuImpl;)I

    move-result p1

    add-int/lit8 p1, p1, -0x3

    iget-object p2, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p2, p2, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mBuffer:[B

    array-length p2, p2

    if-le p1, p2, :cond_2

    .line 196
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->access$000(Lno/nordicsemi/android/dfu/BaseDfuImpl;)I

    move-result p2

    add-int/lit8 p2, p2, -0x3

    new-array p2, p2, [B

    iput-object p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mBuffer:[B

    .line 197
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MTU restored to: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    invoke-static {p3}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->access$000(Lno/nordicsemi/android/dfu/BaseDfuImpl;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->logi(Ljava/lang/String;)V

    .line 200
    :cond_2
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mRequestCompleted:Z

    .line 201
    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->notifyLock()V

    return-void
.end method

.method public onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 2

    if-nez p4, :cond_0

    .line 207
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p4, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHY updated (TX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->phyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->phyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    invoke-virtual {p1, p4, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 209
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PHY updated (TX: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->phyToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", RX: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->phyToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->this$0:Lno/nordicsemi/android/dfu/BaseDfuImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating PHY failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " (txPhy: "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", rxPhy: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lno/nordicsemi/android/dfu/BaseDfuImpl;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .locals 0

    .line 216
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->parse([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected parse(Landroid/bluetooth/BluetoothGattDescriptor;)Ljava/lang/String;
    .locals 0

    .line 220
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;->parse([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
