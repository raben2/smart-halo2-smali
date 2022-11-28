.class Lno/nordicsemi/android/dfu/DfuBaseService$5;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "DfuBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno/nordicsemi/android/dfu/DfuBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lno/nordicsemi/android/dfu/DfuBaseService;


# direct methods
.method constructor <init>(Lno/nordicsemi/android/dfu/DfuBaseService;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 1

    .line 982
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    invoke-interface {v0}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 976
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    invoke-interface {v0}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 1

    .line 970
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    invoke-interface {v0}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    :cond_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_4

    const/4 p2, 0x2

    if-ne p3, p2, :cond_3

    .line 884
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "Connected to GATT server"

    invoke-static {p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$000(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 885
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$500(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 886
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, -0x2

    iput p3, p2, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 905
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p2

    const/16 p3, 0xc

    if-ne p2, p3, :cond_0

    .line 906
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "Waiting 1600 ms for a possible Service Changed indication..."

    invoke-static {p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$000(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 907
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-wide/16 v1, 0x640

    invoke-virtual {p2, v1, v2}, Lno/nordicsemi/android/dfu/DfuBaseService;->waitFor(J)V

    .line 915
    :cond_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p3, 0x1

    const-string v1, "Discovering services..."

    invoke-virtual {p2, p3, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 916
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p3, "gatt.discoverServices()"

    invoke-virtual {p2, v0, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->sendLogBroadcast(ILjava/lang/String;)V

    .line 917
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    move-result p1

    .line 918
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempting to start service discovery... "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v0, "succeed"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$000(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 921
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/16 p2, 0x1005

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    goto/16 :goto_3

    :cond_2
    return-void

    :cond_3
    if-nez p3, :cond_7

    .line 927
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p2, "Disconnected from GATT server"

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$000(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 928
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    iput v0, p1, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 929
    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 930
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object p1

    invoke-interface {p1}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onDisconnected()V

    goto :goto_3

    :cond_4
    const/16 p1, 0x8

    if-eq p2, p1, :cond_6

    const/16 p1, 0x13

    if-ne p2, p1, :cond_5

    goto :goto_1

    .line 936
    :cond_5
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection state change error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$700(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    goto :goto_2

    .line 934
    :cond_6
    :goto_1
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target device disconnected with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$300(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 937
    :goto_2
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const v1, 0x8000

    or-int/2addr p2, v1

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    if-nez p3, :cond_7

    .line 939
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    iput v0, p1, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    .line 940
    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 941
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object p1

    invoke-interface {p1}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object p1

    invoke-virtual {p1}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onDisconnected()V

    .line 946
    :cond_7
    :goto_3
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$400(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 947
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$400(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 948
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 994
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 995
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    invoke-interface {v0}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 988
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    invoke-interface {v0}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    :cond_0
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    invoke-interface {v0}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V

    :cond_0
    return-void
.end method

.method public onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1008
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$100(Lno/nordicsemi/android/dfu/DfuBaseService;)Lno/nordicsemi/android/dfu/DfuCallback;

    move-result-object v0

    invoke-interface {v0}, Lno/nordicsemi/android/dfu/DfuCallback;->getGattCallback()Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lno/nordicsemi/android/dfu/DfuCallback$DfuGattCallback;->onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V

    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 954
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const-string p2, "Services discovered"

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$000(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 955
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    const/4 p2, -0x3

    iput p2, p1, Lno/nordicsemi/android/dfu/DfuBaseService;->mConnectionState:I

    goto :goto_0

    .line 957
    :cond_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service discovery error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$700(Lno/nordicsemi/android/dfu/DfuBaseService;Ljava/lang/String;)V

    .line 958
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    or-int/lit16 p2, p2, 0x4000

    invoke-static {p1, p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$602(Lno/nordicsemi/android/dfu/DfuBaseService;I)I

    .line 962
    :goto_0
    iget-object p1, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p1}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$400(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 963
    :try_start_0
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuBaseService$5;->this$0:Lno/nordicsemi/android/dfu/DfuBaseService;

    invoke-static {p2}, Lno/nordicsemi/android/dfu/DfuBaseService;->access$400(Lno/nordicsemi/android/dfu/DfuBaseService;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 964
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
