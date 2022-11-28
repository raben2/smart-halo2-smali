.class public Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;
.super Ljava/lang/Object;
.source "SHDeviceServiceStartHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectToDiscoveredDevice(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->isAtLeastOreo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bike.smarthalo.sdk.ACTION_CONNECT_TO_DISCOVERED_DEVICE"

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public static getActiveScanForKnownDeviceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "bike.smarthalo.sdk.ACTION_CONNECT_TO_KNOWN_DEVICE"

    .line 49
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static requestActiveScanForKnownDevice(Landroid/content/Context;)V
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bike.smarthalo.sdk.ACTION_ACTIVE_SCAN_FOR_KNOWN_DEVICE"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static requestConnectToKnownDevice(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-static {p0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->getActiveScanForKnownDeviceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static requestLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bike.smarthalo.sdk.ACTION_LOGIN"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "bike.smarthalo.sdk.EXTRA_PASSWORD"

    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    .line 74
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    const-string p1, "bike.smarthalo.sdk.EXTRA_DEVICE_ID"

    .line 75
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p1, "bike.smarthalo.sdk.EXTRA_IS_TESTER"

    .line 78
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static requestLogout(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-static {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->getInstance(Landroid/content/Context;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->logout()V

    return-void
.end method

.method public static requestStartScanning(Landroid/content/Context;)V
    .locals 2

    .line 31
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bike.smarthalo.sdk.ACTION_START_SCAN"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static requestStopScan(Landroid/content/Context;)V
    .locals 2

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/sdk/SHDeviceService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "bike.smarthalo.sdk.ACTION_STOP_SCAN"

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
