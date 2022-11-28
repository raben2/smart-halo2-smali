.class public Lbike/smarthalo/sdk/BluetoothConnectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConnectionReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 23
    invoke-static {p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->getInstance(Landroid/content/Context;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object p2

    .line 24
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "bluetooth"

    .line 25
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object p2, p2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lbike/smarthalo/sdk/SHPendingIntentScanHelper;->startPendingIntentScan(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {p1}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestConnectToKnownDevice(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
