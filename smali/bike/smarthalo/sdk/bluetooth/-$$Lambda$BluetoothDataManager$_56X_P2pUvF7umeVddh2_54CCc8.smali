.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$_56X_P2pUvF7umeVddh2_54CCc8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

.field private final synthetic f$1:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$_56X_P2pUvF7umeVddh2_54CCc8;->f$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    iput-object p2, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$_56X_P2pUvF7umeVddh2_54CCc8;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$_56X_P2pUvF7umeVddh2_54CCc8;->f$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$_56X_P2pUvF7umeVddh2_54CCc8;->f$1:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v0, v1, p1, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->lambda$processTransceiveResult$1(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Landroid/bluetooth/BluetoothGattCharacteristic;Lbike/smarthalo/sdk/models/TransceiveTask;I)V

    return-void
.end method
