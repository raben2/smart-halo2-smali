.class public Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl$ButtonlessBluetoothCallback;
.super Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;
.source "BaseButtonlessDfuImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ButtonlessBluetoothCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;


# direct methods
.method protected constructor <init>(Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl$ButtonlessBluetoothCallback;->this$0:Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;

    invoke-direct {p0, p1}, Lno/nordicsemi/android/dfu/BaseDfuImpl$BaseBluetoothGattCallback;-><init>(Lno/nordicsemi/android/dfu/BaseDfuImpl;)V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl$ButtonlessBluetoothCallback;->this$0:Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;

    iget-object p1, p1, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;->mService:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification received from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value (0x): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl$ButtonlessBluetoothCallback;->parse(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 44
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl$ButtonlessBluetoothCallback;->this$0:Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    iput-object p2, p1, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;->mReceivedData:[B

    .line 45
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl$ButtonlessBluetoothCallback;->this$0:Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;->notifyLock()V

    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 51
    iget-object p1, p0, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl$ButtonlessBluetoothCallback;->this$0:Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;->mRequestCompleted:Z

    .line 52
    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/BaseButtonlessDfuImpl;->notifyLock()V

    return-void
.end method
