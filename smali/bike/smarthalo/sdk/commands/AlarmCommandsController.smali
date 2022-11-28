.class public Lbike/smarthalo/sdk/commands/AlarmCommandsController;
.super Lbike/smarthalo/sdk/commands/BaseCommandsController;
.source "AlarmCommandsController.java"


# instance fields
.field private deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/commands/BaseCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    .line 28
    iput-object p3, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    return-void
.end method


# virtual methods
.method public configureAlarm([BIIZZZLbike/smarthalo/sdk/CmdCallback;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    .line 118
    iget-object v3, v0, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->deviceInformationContract:Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;

    sget-object v4, Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;->V1_2:Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;

    invoke-interface {v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/DeviceInformationContract;->isNordicFirmwareSufficient(Lbike/smarthalo/sdk/firmware/NordicProtocolVersion;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_2

    if-eqz p6, :cond_1

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2, v4}, Lbike/smarthalo/sdk/CmdCallback;->onResult(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_5

    .line 130
    array-length v6, v1

    const/4 v7, 0x5

    if-ge v6, v7, :cond_3

    goto/16 :goto_2

    :cond_3
    move/from16 v6, p5

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    move/from16 v8, p2

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    move/from16 v9, p3

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    move/from16 v10, p4

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/16 v14, 0x9

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v3, :cond_4

    const/16 v3, 0xa

    .line 143
    new-array v3, v3, [B

    sget-object v18, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setConfig:[B

    aget-byte v18, v18, v4

    aput-byte v18, v3, v4

    sget-object v4, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setConfig:[B

    aget-byte v4, v4, v5

    aput-byte v4, v3, v5

    aget-byte v4, v1, v5

    aput-byte v4, v3, v17

    aget-byte v4, v1, v17

    aput-byte v4, v3, v16

    aget-byte v4, v1, v16

    aput-byte v4, v3, v15

    aget-byte v1, v1, v15

    aput-byte v1, v3, v7

    aput-byte v8, v3, v13

    aput-byte v9, v3, v12

    aput-byte v10, v3, v11

    aput-byte v6, v3, v14

    goto :goto_1

    :cond_4
    new-array v3, v14, [B

    sget-object v6, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setConfig:[B

    aget-byte v6, v6, v4

    aput-byte v6, v3, v4

    sget-object v4, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_setConfig:[B

    aget-byte v4, v4, v5

    aput-byte v4, v3, v5

    aget-byte v4, v1, v5

    aput-byte v4, v3, v17

    aget-byte v4, v1, v17

    aput-byte v4, v3, v16

    aget-byte v4, v1, v16

    aput-byte v4, v3, v15

    aget-byte v1, v1, v15

    aput-byte v1, v3, v7

    aput-byte v8, v3, v13

    aput-byte v9, v3, v12

    aput-byte v10, v3, v11

    .line 147
    :goto_1
    iget-object v1, v0, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v4, "configureAlarm"

    new-instance v6, Lbike/smarthalo/sdk/commands/AlarmCommandsController$4;

    invoke-direct {v6, v0, v2}, Lbike/smarthalo/sdk/commands/AlarmCommandsController$4;-><init>(Lbike/smarthalo/sdk/commands/AlarmCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v1, v3, v5, v4, v6}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 132
    invoke-virtual {v2, v4}, Lbike/smarthalo/sdk/CmdCallback;->onResult(Z)V

    :cond_6
    return-void
.end method

.method public getAlarmReport(Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;)V
    .locals 4

    .line 32
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_report:[B

    const-string v2, "alarm_report"

    new-instance v3, Lbike/smarthalo/sdk/commands/AlarmCommandsController$1;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/AlarmCommandsController$1;-><init>(Lbike/smarthalo/sdk/commands/AlarmCommandsController;Lbike/smarthalo/sdk/commands/CommandsModels/AlarmReport$AlarmReportContract;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public get_alarm_seed(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_getSeed:[B

    const-string v2, "get_alarm_seed"

    new-instance v3, Lbike/smarthalo/sdk/commands/AlarmCommandsController$2;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/AlarmCommandsController$2;-><init>(Lbike/smarthalo/sdk/commands/AlarmCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public resetAlarmConfig([BLbike/smarthalo/sdk/CmdCallback;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    .line 87
    invoke-virtual/range {v0 .. v7}, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->configureAlarm([BIIZZZLbike/smarthalo/sdk/CmdCallback;)V

    return-void
.end method

.method public set_alarm_state(IILbike/smarthalo/sdk/CmdCallback;)V
    .locals 6

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v3, 0x7

    .line 74
    new-array v3, v3, [B

    sget-object v4, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_arm:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v5

    sget-object v4, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_arm:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    aput-byte v4, v3, v5

    const/4 v4, 0x2

    aput-byte v0, v3, v4

    const/4 v0, 0x3

    aput-byte v1, v3, v0

    const/4 v0, 0x4

    aput-byte v2, v3, v0

    const/4 v0, 0x5

    aput-byte p1, v3, v0

    const/4 p1, 0x6

    aput-byte p2, v3, p1

    .line 76
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/AlarmCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "set_alarm_state"

    new-instance v0, Lbike/smarthalo/sdk/commands/AlarmCommandsController$3;

    invoke-direct {v0, p0, p3}, Lbike/smarthalo/sdk/commands/AlarmCommandsController$3;-><init>(Lbike/smarthalo/sdk/commands/AlarmCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v3, v5, p2, v0}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method
