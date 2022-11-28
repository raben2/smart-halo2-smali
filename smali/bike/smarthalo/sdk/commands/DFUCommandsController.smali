.class public Lbike/smarthalo/sdk/commands/DFUCommandsController;
.super Lbike/smarthalo/sdk/commands/BaseCommandsController;
.source "DFUCommandsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;
    }
.end annotation


# static fields
.field private static final STM_DFU_PACKET_HEADERS_SIZE:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/commands/BaseCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    return-void
.end method


# virtual methods
.method public forceInstallGoldenFirmware(Lbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 4
    .param p1    # Lbike/smarthalo/sdk/commands/SuccessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_forceInstallGolden:[B

    const-string v2, "forceInstallGoldenFirmware"

    new-instance v3, Lbike/smarthalo/sdk/commands/DFUCommandsController$2;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/DFUCommandsController$2;-><init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public installStmDfu(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4
    .param p1    # Lbike/smarthalo/sdk/CmdCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuInstall:[B

    const-string v2, "installSTMDFU"

    new-instance v3, Lbike/smarthalo/sdk/commands/DFUCommandsController$1;

    invoke-direct {v3, p0, p1}, Lbike/smarthalo/sdk/commands/DFUCommandsController$1;-><init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    const/4 p1, 0x1

    invoke-interface {v0, v1, p1, v2, v3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public sendStmDfuCrc(JILbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;)V
    .locals 7
    .param p4    # Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xa

    .line 73
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuCrc:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuCrc:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    const/16 v1, 0x18

    shr-long v3, p1, v1

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    const/16 v1, 0x10

    shr-long v3, p1, v1

    and-long/2addr v3, v5

    long-to-int v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x3

    aput-byte v1, v0, v3

    const/16 v1, 0x8

    shr-long v3, p1, v1

    and-long/2addr v3, v5

    long-to-int v4, v3

    int-to-byte v3, v4

    const/4 v4, 0x4

    aput-byte v3, v0, v4

    and-long/2addr p1, v5

    long-to-int p2, p1

    int-to-byte p1, p2

    const/4 p2, 0x5

    aput-byte p1, v0, p2

    shr-int/lit8 p1, p3, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    aput-byte p1, v0, p2

    shr-int/lit8 p1, p3, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    shr-int/lit8 p1, p3, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    const/16 p2, 0x9

    aput-byte p1, v0, p2

    .line 86
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "sendStmDfuCrc"

    new-instance p3, Lbike/smarthalo/sdk/commands/DFUCommandsController$4;

    invoke-direct {p3, p0, p4}, Lbike/smarthalo/sdk/commands/DFUCommandsController$4;-><init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/commands/DFUCommandsController$CrcCallback;)V

    invoke-interface {p1, v0, v2, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public sendStmDfuData(II[BLbike/smarthalo/sdk/commands/SuccessCallback;)V
    .locals 5
    .param p4    # Lbike/smarthalo/sdk/commands/SuccessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    array-length v0, p3

    const/4 v1, 0x5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 51
    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuData:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v0, v3

    .line 52
    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_deviceStmDfuData:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    .line 53
    aput-byte v2, v0, v4

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x3

    .line 54
    aput-byte p1, v0, v2

    int-to-byte p1, p2

    const/4 p2, 0x4

    .line 55
    aput-byte p1, v0, p2

    .line 56
    :goto_0
    array-length p1, v0

    if-ge v1, p1, :cond_0

    add-int/lit8 p1, v1, -0x5

    .line 57
    aget-byte p1, p3, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/DFUCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "sendStmDfuData"

    new-instance p3, Lbike/smarthalo/sdk/commands/DFUCommandsController$3;

    invoke-direct {p3, p0, p4}, Lbike/smarthalo/sdk/commands/DFUCommandsController$3;-><init>(Lbike/smarthalo/sdk/commands/DFUCommandsController;Lbike/smarthalo/sdk/commands/SuccessCallback;)V

    invoke-interface {p1, v0, v3, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method
