.class public Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;
.super Lbike/smarthalo/sdk/commands/BaseCommandsController;
.source "ExperimentalCommandsController.java"


# instance fields
.field private uiContract:Lbike/smarthalo/sdk/commands/CommandsContracts/ExperimentalUICommandsContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/ExperimentalUICommandsContract;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p3}, Lbike/smarthalo/sdk/commands/BaseCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    .line 23
    iput-object p2, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->uiContract:Lbike/smarthalo/sdk/commands/CommandsContracts/ExperimentalUICommandsContract;

    return-void
.end method


# virtual methods
.method public calibrateSwipe(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x3

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_swipe_calibration:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_swipe_calibration:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    const-string p1, "calibrateSwipe"

    new-instance v2, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$7;

    invoke-direct {v2, p0, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$7;-><init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, p1, v2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public calibrateTouch(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 128
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x3

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_touch_calibration:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_touch_calibration:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    const-string p1, "calibrateTouch"

    new-instance v2, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$6;

    invoke-direct {v2, p0, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$6;-><init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, p1, v2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public setOledBrightness(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    .line 90
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x3

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_oled_brightness:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_oled_brightness:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    int-to-double v4, p1

    const-wide v6, 0x4004666666666666L    # 2.55

    mul-double v4, v4, v6

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    const-string p1, "setOledBrightness"

    new-instance v2, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$4;

    invoke-direct {v2, p0, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$4;-><init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    .line 90
    invoke-interface {v0, v1, v3, p1, v2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public setOledContrast(ILbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    .line 109
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x3

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_oled_contrast:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_oled_contrast:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    int-to-double v4, p1

    const-wide v6, 0x4004666666666666L    # 2.55

    mul-double v4, v4, v6

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    const-string p1, "setOledContrast"

    new-instance v2, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$5;

    invoke-direct {v2, p0, p2}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$5;-><init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    .line 109
    invoke-interface {v0, v1, v3, p1, v2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public showOled(IILbike/smarthalo/sdk/models/OledAnimationType;IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 48
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/16 v1, 0x8

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_show_oled:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_show_oled:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    int-to-byte p1, p1

    const/4 v2, 0x2

    aput-byte p1, v1, v2

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput-byte p1, v1, p2

    .line 54
    invoke-static {p3}, Lbike/smarthalo/sdk/models/OledAnimationType;->getByteValue(Lbike/smarthalo/sdk/models/OledAnimationType;)B

    move-result p1

    const/4 p2, 0x4

    aput-byte p1, v1, p2

    shr-int/lit8 p1, p4, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x5

    aput-byte p1, v1, p2

    and-int/lit16 p1, p4, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    aput-byte p1, v1, p2

    int-to-byte p1, p5

    const/4 p2, 0x7

    aput-byte p1, v1, p2

    const-string p1, "showOled"

    new-instance p2, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$2;

    invoke-direct {p2, p0, p6}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$2;-><init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    .line 48
    invoke-interface {v0, v1, v3, p1, p2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public stopOled(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    .line 72
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x2

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_stop_oled:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_stop_oled:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    const-string v2, "stopOled"

    new-instance v4, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$3;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$3;-><init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, v2, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public ui_nav_experimental_destination_angle(Lbike/smarthalo/sdk/models/SHColour;IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    const/16 v0, 0x8

    .line 27
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_nav_destination_angle:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_experimental_nav_destination_angle:[B

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

    .line 36
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "ui_nav_experimental_destination_angle"

    new-instance p3, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$1;

    invoke-direct {p3, p0, p4}, Lbike/smarthalo/sdk/commands/ExperimentalCommandsController$1;-><init>(Lbike/smarthalo/sdk/commands/ExperimentalCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v0, v2, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method
