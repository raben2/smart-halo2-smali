.class Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BluetoothDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;


# direct methods
.method constructor <init>(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$1;->this$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2

    .line 259
    iget-object p2, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$1;->this$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-static {p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->access$000(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothGattCharacteristic;

    if-eqz p2, :cond_0

    .line 261
    iget-object p3, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$1;->this$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    const/4 v0, 0x1

    invoke-static {p3}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->access$100(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    invoke-static {p3, p1, p2, v0, v1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->access$200(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;ZLandroid/bluetooth/BluetoothGattCallback;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$1;->this$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-static {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->access$300(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;->exchangeKeys()V

    :goto_0
    return-void
.end method
