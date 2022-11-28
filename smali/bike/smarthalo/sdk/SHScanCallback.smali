.class public Lbike/smarthalo/sdk/SHScanCallback;
.super Landroid/bluetooth/le/ScanCallback;
.source "SHScanCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;
    }
.end annotation


# instance fields
.field private callbackContract:Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;


# direct methods
.method public constructor <init>(Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 23
    iput-object p1, p0, Lbike/smarthalo/sdk/SHScanCallback;->callbackContract:Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 3

    .line 51
    const-class v0, Lbike/smarthalo/sdk/SHScanCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 10

    .line 28
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x466

    .line 33
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 36
    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    aget-byte v2, p1, v1

    invoke-static {v2}, Lbike/smarthalo/sdk/models/DeviceModel;->fromAdvertisementData(B)Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v9

    .line 39
    invoke-static {v0}, Lbike/smarthalo/sdk/SHSdkHelpers;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    .line 40
    aget-byte p1, p1, v1

    if-ne p1, v1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 42
    :goto_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 43
    iget-object v3, p0, Lbike/smarthalo/sdk/SHScanCallback;->callbackContract:Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v7

    invoke-interface/range {v3 .. v9}, Lbike/smarthalo/sdk/SHScanCallback$ScanCallbackContract;->handleDeviceFound(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;IZLbike/smarthalo/sdk/models/DeviceModel;)V

    :cond_1
    return-void
.end method
