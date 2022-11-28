.class public interface abstract Lbike/smarthalo/sdk/bluetooth/BluetoothDataManagerContract;
.super Ljava/lang/Object;
.source "BluetoothDataManagerContract.java"


# virtual methods
.method public abstract cleanUpDeviceConnection()V
.end method

.method public abstract exchangeKeys()V
.end method

.method public abstract onConnectionStateChanged(Lbike/smarthalo/sdk/models/DeviceConnectionState;)V
.end method

.method public abstract onNewTransceiveResult([BLbike/smarthalo/sdk/models/TransceiveTask;)V
.end method

.method public abstract peekTransceiveQueue(Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;)V
    .param p1    # Lbike/smarthalo/sdk/bluetooth/TransceiveQueueManager$GetItemCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startTransceiveTimeoutTimer()V
.end method

.method public abstract transceiveRetryOrRestart(Lbike/smarthalo/sdk/models/TransceiveTask;)V
    .param p1    # Lbike/smarthalo/sdk/models/TransceiveTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
