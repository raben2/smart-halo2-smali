.class public Lbike/smarthalo/sdk/commands/UICommandsController;
.super Lbike/smarthalo/sdk/commands/BaseCommandsController;
.source "UICommandsController.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsContracts/ExperimentalUICommandsContract;


# instance fields
.field private deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/commands/BaseCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    .line 59
    iput-object p3, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    return-void
.end method


# virtual methods
.method public sendGenericCommand(Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V
    .locals 5

    .line 786
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    .line 787
    invoke-virtual {p1}, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->getBytes()[B

    move-result-object v1

    iget-boolean v2, p1, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->isCrypted:Z

    iget-object v3, p1, Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;->description:Ljava/lang/String;

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$38;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$38;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/commands/CommandsModels/GenericBleCommand;)V

    .line 786
    invoke-interface {v0, v1, v2, v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public sendNotificationCommand(Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V
    .locals 5

    .line 335
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    invoke-interface {v0}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->getBytes(Lbike/smarthalo/sdk/models/DeviceModel;)[B

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "ui_notif"

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$14;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$14;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public showDemo(IIILbike/smarthalo/sdk/CmdCallback;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x3

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v2, 0x5

    .line 758
    new-array v2, v2, [B

    int-to-byte p2, p2

    aput-byte p2, v2, v1

    int-to-byte p2, p3

    aput-byte p2, v2, v0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    .line 762
    new-array v2, v0, [B

    int-to-byte p2, p2

    aput-byte p2, v2, v1

    goto :goto_0

    .line 765
    :cond_1
    new-array v2, v1, [B

    .line 767
    :goto_0
    sget-object p2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_demo:[B

    const/4 p3, 0x0

    aget-byte p2, p2, p3

    aput-byte p2, v2, p3

    .line 768
    sget-object p2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_demo:[B

    const/4 p3, 0x1

    aget-byte p2, p2, p3

    aput-byte p2, v2, p3

    const/4 p2, 0x2

    int-to-byte p1, p1

    .line 769
    aput-byte p1, v2, p2

    .line 771
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "showDemo"

    new-instance v0, Lbike/smarthalo/sdk/commands/UICommandsController$37;

    invoke-direct {v0, p0, p4}, Lbike/smarthalo/sdk/commands/UICommandsController$37;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v2, p3, p2, v0}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_anim_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 462
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_animOff:[B

    const-string v2, "ui_anim_off"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$22;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$22;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_central_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 356
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_notif_off:[B

    const-string v2, "ui_central_off"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$15;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$15;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_clock(Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    const/4 v0, 0x2

    .line 620
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_clock:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_clock:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 624
    invoke-interface {p1}, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 625
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v1, "ui_clock"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$30;

    invoke-direct {v3, p0, p2}, Lbike/smarthalo/sdk/commands/UICommandsController$30;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, p1, v2, v1, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_clock_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 636
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x2

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_clock_off:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_clock_off:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    const-string v2, "ui_clock_off"

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$31;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$31;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, v2, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_compass(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x7

    .line 410
    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_compass:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_compass:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    const/4 v2, 0x4

    aput-byte p1, v1, v2

    const/4 p1, 0x5

    aput-byte v0, v1, p1

    const/4 p1, 0x6

    aput-byte p2, v1, p1

    .line 412
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "ui_compass"

    new-instance v0, Lbike/smarthalo/sdk/commands/UICommandsController$18;

    invoke-direct {v0, p0, p3}, Lbike/smarthalo/sdk/commands/UICommandsController$18;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v1, v3, p2, v0}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_compass_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 423
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_compassOff:[B

    const-string v2, "ui_compass_off"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$19;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$19;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_disconnect(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 445
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_disconnect:[B

    const-string v2, "ui_disconnect"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$21;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$21;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_fitness_intro(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 499
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_6:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    const/16 v1, 0xa

    .line 503
    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_fitness_intro:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_fitness_intro:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    iget v4, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    iget v4, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    const/4 v2, 0x4

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    const/4 p1, 0x5

    iget v2, p2, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x6

    iget v2, p2, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    const/4 p1, 0x7

    iget p2, p2, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p2, p2

    aput-byte p2, v1, p1

    const/16 p1, 0x8

    aput-byte v0, v1, p1

    const/16 p1, 0x9

    aput-byte p3, v1, p1

    .line 515
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "experimental_fitness_intro"

    new-instance p3, Lbike/smarthalo/sdk/commands/UICommandsController$25;

    invoke-direct {p3, p0, p4}, Lbike/smarthalo/sdk/commands/UICommandsController$25;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v1, v3, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    const-string p1, "Not supported"

    .line 524
    invoke-virtual {p4, p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ui_frontLight(ZZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 3

    const/4 v0, 0x4

    .line 137
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_frontlight:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_frontlight:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    const/4 p1, 0x3

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    .line 138
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "ui_frontLight"

    new-instance v1, Lbike/smarthalo/sdk/commands/UICommandsController$4;

    invoke-direct {v1, p0, p3}, Lbike/smarthalo/sdk/commands/UICommandsController$4;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v0, v2, p2, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_front_external_toggle(ZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 651
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x3

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_front_external_toggle:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_front_external_toggle:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    const-string p1, "ui_front_external_toggle"

    new-instance v2, Lbike/smarthalo/sdk/commands/UICommandsController$32;

    invoke-direct {v2, p0, p2}, Lbike/smarthalo/sdk/commands/UICommandsController$32;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, p1, v2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_hb(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIILbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    shr-int/lit8 v0, p3, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    shr-int/lit8 v2, p5, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p5, p5, 0xff

    int-to-byte p5, p5

    shr-int/lit8 v3, p6, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 p6, p6, 0xff

    int-to-byte p6, p6

    const/16 v4, 0x10

    .line 376
    new-array v4, v4, [B

    sget-object v5, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_hb:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    aput-byte v5, v4, v6

    sget-object v5, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_hb:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    aput-byte v5, v4, v6

    iget v5, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v5, v5

    const/4 v7, 0x2

    aput-byte v5, v4, v7

    iget v5, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v5, v5

    const/4 v7, 0x3

    aput-byte v5, v4, v7

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    const/4 v5, 0x4

    aput-byte p1, v4, v5

    iget p1, p2, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte p1, p1

    const/4 v5, 0x5

    aput-byte p1, v4, v5

    iget p1, p2, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte p1, p1

    const/4 v5, 0x6

    aput-byte p1, v4, v5

    iget p1, p2, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v4, p2

    const/16 p1, 0x8

    aput-byte v0, v4, p1

    const/16 p1, 0x9

    aput-byte p3, v4, p1

    const/16 p1, 0xa

    aput-byte v1, v4, p1

    const/16 p1, 0xb

    aput-byte p4, v4, p1

    const/16 p1, 0xc

    aput-byte v2, v4, p1

    const/16 p1, 0xd

    aput-byte p5, v4, p1

    const/16 p1, 0xe

    aput-byte v3, v4, p1

    const/16 p1, 0xf

    aput-byte p6, v4, p1

    .line 386
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "ui_hb"

    new-instance p3, Lbike/smarthalo/sdk/commands/UICommandsController$16;

    invoke-direct {p3, p0, p7}, Lbike/smarthalo/sdk/commands/UICommandsController$16;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v4, v6, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_hb_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 397
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_hbOff:[B

    const-string v2, "ui_hb_off"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$17;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$17;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_logo(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 7

    .line 434
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_logo:[B

    const-string v3, "ui_logo"

    new-instance v6, Lbike/smarthalo/sdk/commands/UICommandsController$20;

    invoke-direct {v6, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$20;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v6}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;ZZLbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_lowBat(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 485
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2_1:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 486
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_lowBat:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_lowBat:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 487
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v2, "ui_lowbat"

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$24;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$24;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v1, v0, v3, v2, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    :cond_0
    return-void
.end method

.method public ui_nav(Lbike/smarthalo/sdk/models/SHColour;IIILjava/lang/String;ZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 3

    .line 72
    invoke-static {p4, p6}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object p4

    const/4 p6, 0x7

    .line 73
    new-array p6, p6, [B

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    aput-byte v0, p6, v1

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    aput-byte v0, p6, v1

    iget v0, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v0, v0

    const/4 v2, 0x2

    aput-byte v0, p6, v2

    iget v0, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v0, v0

    const/4 v2, 0x3

    aput-byte v0, p6, v2

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    const/4 v0, 0x4

    aput-byte p1, p6, v0

    int-to-byte p1, p2

    const/4 p2, 0x5

    aput-byte p1, p6, p2

    int-to-byte p1, p3

    const/4 p2, 0x6

    aput-byte p1, p6, p2

    .line 82
    invoke-static {p6, p4}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 83
    array-length p2, p1

    invoke-static {p5, p2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 84
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p3, "ui_nav"

    new-instance p4, Lbike/smarthalo/sdk/commands/UICommandsController$1;

    invoke-direct {p4, p0, p7}, Lbike/smarthalo/sdk/commands/UICommandsController$1;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p2, p1, v1, p3, p4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_nav_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    const/16 v0, 0x8

    .line 149
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navAngle:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navAngle:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    iget v1, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    iget v1, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    .line 160
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "ui_nav_angle"

    new-instance p3, Lbike/smarthalo/sdk/commands/UICommandsController$5;

    invoke-direct {p3, p0, p4}, Lbike/smarthalo/sdk/commands/UICommandsController$5;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v0, v2, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_nav_angle_quick(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/models/SHColour;IIIILjava/lang/String;ZZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 2

    .line 183
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {p7, p10}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object p7

    .line 185
    invoke-static {p8, p10}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object p8

    if-eqz p11, :cond_0

    .line 193
    iget-object p10, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    .line 194
    invoke-interface {p10}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object p10

    invoke-virtual {p10}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object p10

    sget-object p11, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne p10, p11, :cond_0

    add-int/lit16 p3, p3, 0x80

    :cond_0
    const/16 p10, 0xe

    .line 198
    new-array p10, p10, [B

    sget-object p11, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navAngle:[B

    const/4 v0, 0x0

    aget-byte p11, p11, v0

    aput-byte p11, p10, v0

    sget-object p11, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navAngle:[B

    const/4 v0, 0x1

    aget-byte p11, p11, v0

    aput-byte p11, p10, v0

    const/4 p11, 0x2

    iget v1, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v1, v1

    aput-byte v1, p10, p11

    const/4 p11, 0x3

    iget v1, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v1, v1

    aput-byte v1, p10, p11

    const/4 p11, 0x4

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    aput-byte p1, p10, p11

    const/4 p1, 0x5

    shr-int/lit8 p11, p2, 0x8

    and-int/lit16 p11, p11, 0xff

    int-to-byte p11, p11

    aput-byte p11, p10, p1

    const/4 p1, 0x6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p10, p1

    const/4 p1, 0x7

    int-to-byte p2, p3

    aput-byte p2, p10, p1

    iget p1, p4, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte p1, p1

    const/16 p2, 0x8

    aput-byte p1, p10, p2

    const/16 p1, 0x9

    iget p2, p4, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte p2, p2

    aput-byte p2, p10, p1

    const/16 p1, 0xa

    iget p2, p4, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p2, p2

    aput-byte p2, p10, p1

    const/16 p1, 0xb

    shr-int/lit8 p2, p5, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p10, p1

    const/16 p1, 0xc

    and-int/lit16 p2, p5, 0xff

    int-to-byte p2, p2

    aput-byte p2, p10, p1

    const/16 p1, 0xd

    int-to-byte p2, p6

    aput-byte p2, p10, p1

    .line 214
    invoke-static {p10, p7}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 215
    invoke-static {p1, p8}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 216
    array-length p2, p1

    invoke-static {p9, p2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 217
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p3, "ui_nav_angle_quick"

    new-instance p4, Lbike/smarthalo/sdk/commands/UICommandsController$6;

    invoke-direct {p4, p0, p12}, Lbike/smarthalo/sdk/commands/UICommandsController$6;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p2, p1, v0, p3, p4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    goto :goto_0

    .line 226
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p12}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V

    :goto_0
    return-void
.end method

.method public ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navOff:[B

    const-string v2, "ui_nav_off"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$3;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$3;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_nav_pointer(Lbike/smarthalo/sdk/models/SHColour;IZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 3

    .line 544
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_3:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 545
    invoke-static {p4, p3}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object p3

    const/4 p4, 0x7

    .line 546
    new-array p4, p4, [B

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    aput-byte v0, p4, v1

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    aput-byte v0, p4, v1

    const/4 v0, 0x2

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    const/4 v0, 0x3

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    const/4 v0, 0x4

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    aput-byte p1, p4, v0

    const/4 p1, 0x5

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p4, p1

    const/4 p1, 0x6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, p4, p1

    .line 556
    invoke-static {p4, p3}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 557
    array-length p2, p1

    invoke-static {p5, p2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 559
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p3, "ui_nav_pointer"

    new-instance p4, Lbike/smarthalo/sdk/commands/UICommandsController$27;

    invoke-direct {p4, p0, p6}, Lbike/smarthalo/sdk/commands/UICommandsController$27;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p2, p1, v1, p3, p4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x63

    .line 568
    invoke-virtual {p0, p1, p2, p3, p6}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V

    :goto_0
    return-void
.end method

.method public ui_nav_pointer_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 573
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_3:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 574
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer_off:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer_off:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 578
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v3, "ui_nav_pointer_off"

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$28;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$28;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_off(Lbike/smarthalo/sdk/CmdCallback;)V

    :goto_0
    return-void
.end method

.method public ui_nav_reroute(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_navReroute:[B

    const-string v2, "ui_nav_reroute"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$2;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$2;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_nav_roundabout(IILbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;[IIZLjava/lang/String;)V
    .locals 7

    .line 264
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 265
    array-length v0, p5

    const/16 v3, 0xa

    const/4 v4, 0x2

    if-gt v0, v3, :cond_0

    array-length v0, p5

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    .line 266
    :goto_0
    sget-object v3, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_roundabout:[B

    array-length v3, v3

    add-int/2addr v3, v2

    add-int/2addr v3, v2

    const/4 v5, 0x3

    add-int/2addr v3, v5

    add-int/2addr v3, v5

    add-int/2addr v3, v0

    new-array v3, v3, [B

    .line 267
    sget-object v6, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_roundabout:[B

    aget-byte v6, v6, v1

    aput-byte v6, v3, v1

    .line 268
    sget-object v6, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_roundabout:[B

    aget-byte v6, v6, v2

    aput-byte v6, v3, v2

    int-to-byte p1, p1

    .line 269
    aput-byte p1, v3, v4

    int-to-byte p1, p2

    .line 270
    aput-byte p1, v3, v5

    const/4 p1, 0x4

    .line 271
    iget p2, p3, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    const/4 p1, 0x5

    .line 272
    iget p2, p3, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    const/4 p1, 0x6

    .line 273
    iget p2, p3, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    const/4 p1, 0x7

    .line 274
    iget p2, p4, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    .line 275
    iget p1, p4, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte p1, p1

    const/16 p2, 0x8

    aput-byte p1, v3, p2

    const/16 p1, 0x9

    .line 276
    iget p2, p4, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p2, p2

    aput-byte p2, v3, p1

    :goto_1
    if-ge v1, v0, :cond_1

    .line 279
    div-int/lit8 p1, v1, 0x2

    aget p1, p5, p1

    add-int/lit8 p2, v1, 0xa

    shr-int/lit8 p3, p1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 280
    aput-byte p3, v3, p2

    add-int/2addr p2, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 281
    aput-byte p1, v3, p2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 283
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "ui_nav_roundabout"

    new-instance p3, Lbike/smarthalo/sdk/commands/UICommandsController$9;

    invoke-direct {p3, p0}, Lbike/smarthalo/sdk/commands/UICommandsController$9;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;)V

    invoke-interface {p1, v3, v2, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    .line 286
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    invoke-interface {p1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->getDeviceInformation()Lbike/smarthalo/sdk/models/DeviceInformation;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 289
    invoke-virtual {p1}, Lbike/smarthalo/sdk/models/DeviceInformation;->getDeviceModel()Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object p1

    sget-object p2, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne p1, p2, :cond_4

    if-eqz p8, :cond_4

    .line 291
    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 292
    sget-object p1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_roundabout_oled:[B

    invoke-static {p6, p7}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 293
    array-length p2, p1

    invoke-static {p8, p2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 294
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p3, "ui_roundabout_oled"

    new-instance p4, Lbike/smarthalo/sdk/commands/UICommandsController$10;

    invoke-direct {p4, p0}, Lbike/smarthalo/sdk/commands/UICommandsController$10;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;)V

    invoke-interface {p2, p1, v2, p3, p4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    goto :goto_3

    .line 298
    :cond_2
    aget p2, p5, v1

    if-ne p1, v2, :cond_3

    const/16 p1, 0x64

    goto :goto_2

    :cond_3
    const/16 p1, 0x63

    :goto_2
    new-instance p4, Lbike/smarthalo/sdk/commands/UICommandsController$11;

    invoke-direct {p4, p0}, Lbike/smarthalo/sdk/commands/UICommandsController$11;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;)V

    invoke-virtual {p0, p3, p2, p1, p4}, Lbike/smarthalo/sdk/commands/UICommandsController;->ui_nav_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public ui_pointer_intro(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 732
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/16 v1, 0x8

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_pointer_with_intro:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_pointer_with_intro:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    const/4 v2, 0x4

    aput-byte p1, v1, v2

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x5

    aput-byte p1, v1, v2

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    aput-byte p1, v1, p2

    int-to-byte p1, p3

    const/4 p2, 0x7

    aput-byte p1, v1, p2

    const-string p1, "ui_pointer_intro"

    new-instance p2, Lbike/smarthalo/sdk/commands/UICommandsController$36;

    invoke-direct {p2, p0, p4}, Lbike/smarthalo/sdk/commands/UICommandsController$36;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, p1, p2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_pointer_intro_standby(Lbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 710
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x6

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_pointer_with_intro:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_pointer_with_intro:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v1, v4

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v2, v2

    const/4 v4, 0x3

    aput-byte v2, v1, v4

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    const/4 v2, 0x4

    aput-byte p1, v1, v2

    int-to-byte p1, p2

    const/4 p2, 0x5

    aput-byte p1, v1, p2

    const-string p1, "ui_pointer_intro_standby"

    new-instance p2, Lbike/smarthalo/sdk/commands/UICommandsController$35;

    invoke-direct {p2, p0, p3}, Lbike/smarthalo/sdk/commands/UICommandsController$35;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, p1, p2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_pointer_standby(Lbike/smarthalo/sdk/models/SHColour;ZILjava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 3

    .line 593
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_3:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    invoke-static {p3, p2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object p2

    const/4 p3, 0x5

    .line 595
    new-array p3, p3, [B

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer_standby:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    aput-byte v0, p3, v1

    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_nav_pointer_standby:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    aput-byte v0, p3, v1

    const/4 v0, 0x2

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    const/4 v0, 0x3

    iget v2, p1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    const/4 v0, 0x4

    iget p1, p1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    .line 603
    invoke-static {p3, p2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 604
    array-length p2, p1

    invoke-static {p4, p2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 606
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p3, "ui_pointer_standby"

    new-instance p4, Lbike/smarthalo/sdk/commands/UICommandsController$29;

    invoke-direct {p4, p0, p5}, Lbike/smarthalo/sdk/commands/UICommandsController$29;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p2, p1, v1, p3, p4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "Not supported"

    .line 615
    invoke-virtual {p5, p1}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public ui_progress(Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    const/4 v0, 0x2

    .line 303
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_progress:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_progress:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 307
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    invoke-virtual {p1}, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    const-string v0, "ui_progress"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$12;

    invoke-direct {v3, p0, p2}, Lbike/smarthalo/sdk/commands/UICommandsController$12;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v1, p1, v2, v0, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_progress_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 324
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_progressOff:[B

    const-string v2, "ui_progress_off"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$13;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$13;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_setBrightness(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    const/4 v0, 0x3

    .line 473
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setBrightness:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setBrightness:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 474
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v1, "ui_setBrightness"

    new-instance v3, Lbike/smarthalo/sdk/commands/UICommandsController$23;

    invoke-direct {v3, p0, p2}, Lbike/smarthalo/sdk/commands/UICommandsController$23;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v0, v2, v1, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_show_charge_state(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 670
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x2

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_show_state_of_charger:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_show_state_of_charger:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    const-string v2, "exp_show_charge_state"

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$33;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$33;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, v2, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_speedometer_intro(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 529
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v1, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_6:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_speedometer_intro:[B

    const/4 v2, 0x1

    const-string v3, "ui_progress_off"

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$26;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$26;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "Not supported"

    .line 539
    invoke-virtual {p1, v0}, Lbike/smarthalo/sdk/CmdCallback;->onFail(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public ui_speedometer_off(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    const/4 v0, 0x2

    .line 244
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_speedometerOff:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_speedometerOff:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 245
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v3, "ui_speedometer_off"

    new-instance v4, Lbike/smarthalo/sdk/commands/UICommandsController$8;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/UICommandsController$8;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_speedometer_speed(Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 3

    .line 231
    sget-object v0, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_speedometer:[B

    invoke-virtual {p1}, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 233
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v1, "ui_speedometer_speed"

    new-instance v2, Lbike/smarthalo/sdk/commands/UICommandsController$7;

    invoke-direct {v2, p0, p2}, Lbike/smarthalo/sdk/commands/UICommandsController$7;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p2, 0x1

    invoke-interface {v0, p1, p2, v1, v2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_turn_by_turn_intro(Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 3

    const/4 v0, 0x3

    .line 688
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_turn_by_turn_intro:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_turn_by_turn_intro:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 691
    invoke-virtual {p1}, Lbike/smarthalo/sdk/commands/CommandsModels/TurnByTurnIntroMode;->getValue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 694
    array-length p1, v0

    invoke-static {p2, p1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 695
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/UICommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v0, "ui_turn_by_turn_intro"

    new-instance v1, Lbike/smarthalo/sdk/commands/UICommandsController$34;

    invoke-direct {v1, p0, p3}, Lbike/smarthalo/sdk/commands/UICommandsController$34;-><init>(Lbike/smarthalo/sdk/commands/UICommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p2, p1, v2, v0, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method
