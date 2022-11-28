.class public Lbike/smarthalo/sdk/commands/DeviceCommandsController;
.super Lbike/smarthalo/sdk/commands/BaseCommandsController;
.source "DeviceCommandsController.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceCommandsController"


# instance fields
.field deviceContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;

.field private deviceInformation:Lbike/smarthalo/sdk/models/DeviceInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/commands/BaseCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    .line 51
    iput-object p3, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/sdk/commands/DeviceCommandsController;[BLbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/sdk/models/DeviceInformation;
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->saveDeviceInformation([BLbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object p0

    return-object p0
.end method

.method private saveDeviceInformation([BLbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/sdk/models/DeviceInformation;
    .locals 0

    .line 84
    invoke-static {p1, p2}, Lbike/smarthalo/sdk/models/DeviceInformation;->build([BLbike/smarthalo/sdk/models/DeviceSerials;)Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceInformation:Lbike/smarthalo/sdk/models/DeviceInformation;

    .line 85
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceInformation:Lbike/smarthalo/sdk/models/DeviceInformation;

    if-eqz p1, :cond_0

    .line 86
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;

    iget-object p1, p1, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    invoke-interface {p2, p1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceCommandsContract;->saveLastKnownFirmwareVersions(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceInformation:Lbike/smarthalo/sdk/models/DeviceInformation;

    return-object p1
.end method


# virtual methods
.method public clearDeviceInformation()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceInformation:Lbike/smarthalo/sdk/models/DeviceInformation;

    return-void
.end method

.method public cmd_compass_calibrate(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 198
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_compassCalibrate:[B

    const-string v2, "cmd_compass_calibrate"

    new-instance v3, Lbike/smarthalo/sdk/commands/DeviceCommandsController$6;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$6;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public config_name([BLbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 209
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setName:[B

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 210
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setName:[B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setName:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setName:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v1, "config_name"

    new-instance v2, Lbike/smarthalo/sdk/commands/DeviceCommandsController$7;

    invoke-direct {v2, p0, p2}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$7;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p2, 0x1

    invoke-interface {p1, v0, p2, v1, v2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public forceInstallGoldenFirmware(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 4
    .param p1    # Lbike/smarthalo/sdk/commands/SuccessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 238
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_forceInstallGolden:[B

    const-string v2, "forceInstallGoldenFirmware"

    new-instance v3, Lbike/smarthalo/sdk/commands/DeviceCommandsController$9;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$9;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceInformation:Lbike/smarthalo/sdk/models/DeviceInformation;

    return-object v0
.end method

.method public getDeviceSerial(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    const/4 v0, 0x3

    .line 177
    new-array v2, v0, [B

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getSerial:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    aput-byte v0, v2, v1

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getSerial:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    aput-byte v0, v2, v1

    int-to-byte p1, p1

    const/4 v0, 0x2

    aput-byte p1, v2, v0

    .line 178
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v4, "cmd_getSerial"

    new-instance v7, Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;

    invoke-direct {v7, p0, p2}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$5;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v7}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public getDeviceSerials(Lbike/smarthalo/sdk/models/DeviceModel;Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;)V
    .locals 1

    .line 126
    new-instance v0, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;

    invoke-direct {v0, p0, p1, p2}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$4;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/models/DeviceModel;Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->getDeviceSerial(ILbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public getDeviceState(Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getState:[B

    const-string v3, "device_getState"

    new-instance v6, Lbike/smarthalo/sdk/commands/DeviceCommandsController$3;

    invoke-direct {v6, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$3;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/models/SHDeviceState$DeviceStateInterface;)V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v6}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->deviceInformation:Lbike/smarthalo/sdk/models/DeviceInformation;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbike/smarthalo/sdk/models/DeviceInformation;->nordicFirmwareVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 79
    :goto_0
    invoke-static {p1}, Lbike/smarthalo/sdk/firmware/NordicFirmwareHelper;->getProtocolString(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Lbike/smarthalo/sdk/firmware/FirmwareVersionHelper;->isFirmwareVersionSufficient(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestBootloader(Lbike/smarthalo/sdk/CmdCallback;Z)V
    .locals 4

    .line 98
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_enterBootloader:[B

    const-string v2, "device_enterBootloader"

    new-instance v3, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;

    invoke-direct {v3, p0, p2, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$2;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;ZLbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public startTouchTest(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 4
    .param p1    # Lbike/smarthalo/sdk/commands/SuccessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_touchTest:[B

    const-string v2, "touchTest"

    new-instance v3, Lbike/smarthalo/sdk/commands/DeviceCommandsController$8;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$8;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public updateDeviceDate(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 7

    const/4 v0, 0x2

    .line 252
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_localization:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_localization:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 257
    invoke-static {v3, v4, v2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getBytesFromLong(JZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 258
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 259
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v3, "updateDeviceTime"

    new-instance v4, Lbike/smarthalo/sdk/commands/DeviceCommandsController$10;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$10;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public updateDeviceInformation(Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V
    .locals 7

    .line 55
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DeviceCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getVersions:[B

    const-string v3, "device_getVersions"

    new-instance v6, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;

    invoke-direct {v6, p0, p1}, Lbike/smarthalo/sdk/commands/DeviceCommandsController$1;-><init>(Lbike/smarthalo/sdk/commands/DeviceCommandsController;Lbike/smarthalo/sdk/models/DeviceInformation$DeviceInformationCallback;)V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v6}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method
