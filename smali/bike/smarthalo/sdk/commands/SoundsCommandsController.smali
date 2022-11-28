.class public Lbike/smarthalo/sdk/commands/SoundsCommandsController;
.super Lbike/smarthalo/sdk/commands/BaseCommandsController;
.source "SoundsCommandsController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/commands/BaseCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    return-void
.end method


# virtual methods
.method public play_sound(II[BLbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    const/16 v0, 0x64

    .line 23
    invoke-static {v0, p1}, Ljava/lang/StrictMath;->min(II)I

    move-result p1

    .line 24
    array-length v0, p3

    const/4 v1, 0x4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 25
    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_play:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v0, v3

    .line 26
    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_play:[B

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    aput-byte v2, v0, v4

    int-to-byte p1, p1

    const/4 v2, 0x2

    .line 27
    aput-byte p1, v0, v2

    int-to-byte p1, p2

    const/4 p2, 0x3

    .line 28
    aput-byte p1, v0, p2

    .line 29
    array-length p1, p3

    invoke-static {p3, v3, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/SoundsCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "play_sound"

    new-instance p3, Lbike/smarthalo/sdk/commands/SoundsCommandsController$1;

    invoke-direct {p3, p0, p4}, Lbike/smarthalo/sdk/commands/SoundsCommandsController$1;-><init>(Lbike/smarthalo/sdk/commands/SoundsCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v0, v4, p2, p3}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public stop_sound(Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 5

    const/4 v0, 0x2

    .line 41
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_stop:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_stop:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    .line 42
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/SoundsCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string v3, "stop_sound"

    new-instance v4, Lbike/smarthalo/sdk/commands/SoundsCommandsController$2;

    invoke-direct {v4, p0, p1}, Lbike/smarthalo/sdk/commands/SoundsCommandsController$2;-><init>(Lbike/smarthalo/sdk/commands/SoundsCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v1, v0, v2, v3, v4}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public touch_sounds(ZILbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    .line 53
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/SoundsCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const/4 v1, 0x4

    new-array v1, v1, [B

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_touch_sounds:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    sget-object v2, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_touch_sounds:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v3

    int-to-byte p2, p2

    const/4 v2, 0x2

    aput-byte p2, v1, v2

    int-to-byte p1, p1

    const/4 p2, 0x3

    aput-byte p1, v1, p2

    const-string p1, "touch_sounds"

    new-instance p2, Lbike/smarthalo/sdk/commands/SoundsCommandsController$3;

    invoke-direct {p2, p0, p3}, Lbike/smarthalo/sdk/commands/SoundsCommandsController$3;-><init>(Lbike/smarthalo/sdk/commands/SoundsCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {v0, v1, v3, p1, p2}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method
