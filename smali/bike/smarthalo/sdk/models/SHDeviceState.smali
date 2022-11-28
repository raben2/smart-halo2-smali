.class public Lbike/smarthalo/sdk/models/SHDeviceState;
.super Ljava/lang/Object;
.source "SHDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;
    }
.end annotation


# instance fields
.field private chargeLevel:I

.field private compassHeading:D

.field private isCharging:Z

.field private isLightOn:Z

.field private isUsbPlugged:Z

.field private temperature:D

.field private willMovementTriggerLight:Z


# direct methods
.method private constructor <init>(IZDZZDZ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->chargeLevel:I

    .line 52
    iput-boolean p2, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->isCharging:Z

    .line 53
    iput-wide p3, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->compassHeading:D

    .line 54
    iput-boolean p5, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->willMovementTriggerLight:Z

    .line 55
    iput-boolean p6, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->isLightOn:Z

    .line 56
    iput-wide p7, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->temperature:D

    .line 57
    iput-boolean p9, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->isUsbPlugged:Z

    return-void
.end method

.method public static getSHDeviceState([B)Lbike/smarthalo/sdk/models/SHDeviceState;
    .locals 14

    if-eqz p0, :cond_5

    .line 61
    array-length v0, p0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    goto :goto_4

    .line 65
    :cond_0
    new-instance v0, Lbike/smarthalo/sdk/models/SHDeviceState;

    const/4 v2, 0x1

    aget-byte v3, p0, v2

    const/4 v4, 0x2

    aget-byte v4, p0, v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x3

    aget-byte v6, p0, v6

    const v7, 0xff00

    and-int/2addr v6, v7

    const/4 v7, 0x4

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-byte v8, p0, v8

    if-ne v8, v2, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x6

    aget-byte v9, p0, v9

    if-ne v9, v2, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x7

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    int-to-double v10, v10

    array-length v12, p0

    const/16 v13, 0x9

    if-lt v12, v13, :cond_4

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    move-object v2, v0

    move-wide v5, v6

    move v7, v8

    move v8, v9

    move-wide v9, v10

    move v11, p0

    invoke-direct/range {v2 .. v11}, Lbike/smarthalo/sdk/models/SHDeviceState;-><init>(IZDZZDZ)V

    return-object v0

    :cond_5
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChargeLevel()I
    .locals 1

    .line 17
    iget v0, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->chargeLevel:I

    return v0
.end method

.method public getCompassHeading()D
    .locals 2

    .line 25
    iget-wide v0, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->compassHeading:D

    return-wide v0
.end method

.method public getIsCharging()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->isCharging:Z

    return v0
.end method

.method public getIsLightOn()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->isLightOn:Z

    return v0
.end method

.method public getIsUsbPlugged()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->isUsbPlugged:Z

    return v0
.end method

.method public getTemperature()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->temperature:D

    return-wide v0
.end method

.method public getWillMovementTriggerLight()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lbike/smarthalo/sdk/models/SHDeviceState;->willMovementTriggerLight:Z

    return v0
.end method
