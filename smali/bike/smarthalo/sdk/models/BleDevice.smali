.class public Lbike/smarthalo/sdk/models/BleDevice;
.super Ljava/lang/Object;
.source "BleDevice.java"


# static fields
.field private static final DEFAULT_DEVICE_NAME:Ljava/lang/String; = "Smarthal"


# instance fields
.field public address:Ljava/lang/String;

.field public deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public rssi:Ljava/lang/Integer;

.field public timestamp:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 30
    instance-of v0, p1, Lbike/smarthalo/sdk/models/BleDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    check-cast p1, Lbike/smarthalo/sdk/models/BleDevice;

    .line 32
    iget-object v0, p0, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    iget-object v2, p1, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getBootloaderAddress()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    invoke-static {v0}, Lbike/smarthalo/sdk/bluetooth/BleHelper;->getBootloaderAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 4

    const-string v0, "%1$s %2$s (%3$s)"

    const/4 v1, 0x3

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lbike/smarthalo/sdk/models/BleDevice;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lbike/smarthalo/sdk/models/BleDevice;->deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    invoke-virtual {v2}, Lbike/smarthalo/sdk/models/DeviceModel;->getSimpleValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortenedDeviceId()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceOwned()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lbike/smarthalo/sdk/models/BleDevice;->name:Ljava/lang/String;

    const-string v1, "Smarthal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
