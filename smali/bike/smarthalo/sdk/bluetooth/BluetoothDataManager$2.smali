.class Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$2;
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

    .line 397
    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$2;->this$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 0

    .line 401
    iget-object p1, p0, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager$2;->this$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->processNextTransceiveTask()V

    return-void
.end method
