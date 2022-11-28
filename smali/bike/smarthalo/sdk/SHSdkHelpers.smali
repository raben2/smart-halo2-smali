.class public Lbike/smarthalo/sdk/SHSdkHelpers;
.super Ljava/lang/Object;
.source "SHSdkHelpers.java"


# static fields
.field public static final REQUEST_BLE_PERMISSION:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SHSdkHelpers"

.field public static final blePermissions:[Ljava/lang/String;

.field protected static final hexArray:[C

.field public static final storagePermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "0123456789ABCDEF"

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/SHSdkHelpers;->hexArray:[C

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 26
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/SHSdkHelpers;->storagePermissions:[Ljava/lang/String;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    .line 31
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/SHSdkHelpers;->blePermissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 142
    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 143
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 144
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 145
    sget-object v4, Lbike/smarthalo/sdk/SHSdkHelpers;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v5, v4, v5

    aput-char v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 146
    aget-char v2, v4, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 67
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 53
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 57
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 58
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static checkStartServicePermissions(Landroid/content/Context;)Z
    .locals 3

    .line 45
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkHelpers;->getBlePermissions()[Ljava/lang/String;

    move-result-object v0

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 47
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 49
    :cond_0
    invoke-static {p0, v0}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getBlePermissions()[Ljava/lang/String;
    .locals 2

    .line 39
    invoke-static {}, Lbike/smarthalo/sdk/SHSdkBuildConfigHelper;->isReleaseBuildConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbike/smarthalo/sdk/SHSdkHelpers;->blePermissions:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lbike/smarthalo/sdk/SHSdkHelpers;->blePermissions:[Ljava/lang/String;

    sget-object v1, Lbike/smarthalo/sdk/SHSdkHelpers;->storagePermissions:[Ljava/lang/String;

    .line 41
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getNumericFirmwareVersion(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    const-string v0, "\\."

    .line 129
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x0

    .line 131
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static hasRequiredFeatures(Landroid/content/Context;)Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android.hardware.bluetooth_le"

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAtLeastNougat()Z
    .locals 2

    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAtLeastOreo()Z
    .locals 2

    .line 160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBluetoothEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "bluetooth"

    .line 105
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothManager;

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "location"

    .line 111
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-eqz p0, :cond_1

    const-string v0, "gps"

    .line 113
    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;II)V
    .locals 3

    .line 71
    invoke-static {p0, p1}, Lbike/smarthalo/sdk/SHSdkHelpers;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {p0}, Lbike/smarthalo/sdk/SHSdkHelpers;->startScanningAndFinishActivity(Landroid/app/Activity;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 76
    aget-object v0, p1, v0

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lbike/smarthalo/sdk/R$style;->AlertDialogStyle:I

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 78
    invoke-virtual {v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    sget v1, Lbike/smarthalo/sdk/R$string;->OK:I

    new-instance v2, Lbike/smarthalo/sdk/SHSdkHelpers$2;

    invoke-direct {v2, p0, p1, p2}, Lbike/smarthalo/sdk/SHSdkHelpers$2;-><init>(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 79
    invoke-virtual {p3, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lbike/smarthalo/sdk/R$string;->Cancel:I

    new-instance p3, Lbike/smarthalo/sdk/SHSdkHelpers$1;

    invoke-direct {p3, p0}, Lbike/smarthalo/sdk/SHSdkHelpers$1;-><init>(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static startScanningAndFinishActivity(Landroid/app/Activity;)V
    .locals 4

    .line 117
    invoke-static {p0}, Lbike/smarthalo/sdk/SHDeviceServiceStartHelper;->requestStartScanning(Landroid/content/Context;)V

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    new-instance v1, Lbike/smarthalo/sdk/SHSdkHelpers$3;

    invoke-direct {v1, p0}, Lbike/smarthalo/sdk/SHSdkHelpers$3;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static stringHasValue(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
