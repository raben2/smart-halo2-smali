.class public Lbike/smarthalo/app/models/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# static fields
.field public static final CRITICALLY_LOW_BATTERY_LEVEL:I = 0x5

.field public static final LOW_BATTERY_LEVEL:I = 0xf


# instance fields
.field public batteryLevel:Ljava/lang/Integer;

.field public isLightOn:Z

.field public isUSBPlugged:Z

.field public temperatureLevel:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Double;ZZ)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    .line 20
    iput-object p2, p0, Lbike/smarthalo/app/models/DeviceState;->temperatureLevel:Ljava/lang/Double;

    .line 21
    iput-boolean p3, p0, Lbike/smarthalo/app/models/DeviceState;->isUSBPlugged:Z

    .line 22
    iput-boolean p4, p0, Lbike/smarthalo/app/models/DeviceState;->isLightOn:Z

    return-void
.end method

.method public static fromSHDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState;)Lbike/smarthalo/app/models/DeviceState;
    .locals 4

    .line 36
    new-instance v0, Lbike/smarthalo/app/models/DeviceState;

    .line 37
    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/SHDeviceState;->getChargeLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/SHDeviceState;->getTemperature()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/SHDeviceState;->getIsCharging()Z

    move-result v3

    .line 40
    invoke-virtual {p0}, Lbike/smarthalo/sdk/models/SHDeviceState;->getIsLightOn()Z

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lbike/smarthalo/app/models/DeviceState;-><init>(Ljava/lang/Integer;Ljava/lang/Double;ZZ)V

    return-object v0
.end method

.method public static getEmptyValue()Lbike/smarthalo/app/models/DeviceState;
    .locals 3

    .line 32
    new-instance v0, Lbike/smarthalo/app/models/DeviceState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Lbike/smarthalo/app/models/DeviceState;-><init>(Ljava/lang/Integer;Ljava/lang/Double;ZZ)V

    return-object v0
.end method


# virtual methods
.method public isInitialized()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/DeviceState;->temperatureLevel:Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLowBattery()Z
    .locals 2

    .line 26
    iget-boolean v0, p0, Lbike/smarthalo/app/models/DeviceState;->isUSBPlugged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/DeviceState;->batteryLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
