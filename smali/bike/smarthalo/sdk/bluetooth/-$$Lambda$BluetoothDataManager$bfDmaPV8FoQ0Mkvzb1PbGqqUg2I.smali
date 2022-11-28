.class public final synthetic Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$bfDmaPV8FoQ0Mkvzb1PbGqqUg2I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$bfDmaPV8FoQ0Mkvzb1PbGqqUg2I;->f$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    return-void
.end method


# virtual methods
.method public final onResult(Lbike/smarthalo/sdk/models/TransceiveTask;I)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/-$$Lambda$BluetoothDataManager$bfDmaPV8FoQ0Mkvzb1PbGqqUg2I;->f$0:Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;

    invoke-static {v0, p1, p2}, Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;->lambda$processNextTransceiveTask$0(Lbike/smarthalo/sdk/bluetooth/BluetoothDataManager;Lbike/smarthalo/sdk/models/TransceiveTask;I)V

    return-void
.end method
