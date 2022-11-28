.class public Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;
.super Ljava/lang/Object;
.source "NotificationCommand.java"


# instance fields
.field public callback:Lbike/smarthalo/sdk/CmdCallback;

.field public fadeIn:I

.field public fadeout:I

.field public firstColour:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public off:I

.field public on:I

.field public repeat:I

.field public secondColour:Lbike/smarthalo/sdk/models/SHColour;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public text:Ljava/lang/String;

.field public type:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;


# direct methods
.method public constructor <init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/CmdCallback;)V
    .locals 0
    .param p1    # Lbike/smarthalo/sdk/models/SHColour;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/sdk/models/SHColour;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p8, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    .line 61
    iput p5, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->fadeout:I

    .line 62
    iput p3, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->fadeIn:I

    .line 63
    iput p4, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->on:I

    .line 64
    iput p6, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->off:I

    .line 65
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 66
    iput-object p2, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 67
    iput p7, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->repeat:I

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->type:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 69
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->text:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIIIILbike/smarthalo/sdk/commands/CommandsModels/NotificationType;Ljava/lang/String;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 0
    .param p1    # Lbike/smarthalo/sdk/models/SHColour;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/sdk/models/SHColour;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p10, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->callback:Lbike/smarthalo/sdk/CmdCallback;

    .line 40
    iput p5, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->fadeout:I

    .line 41
    iput p3, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->fadeIn:I

    .line 42
    iput p4, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->on:I

    .line 43
    iput p6, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->off:I

    .line 44
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 45
    iput-object p2, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 46
    iput p7, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->repeat:I

    .line 47
    iput-object p8, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->type:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    .line 48
    iput-object p9, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBytes(Lbike/smarthalo/sdk/models/DeviceModel;)[B
    .locals 13

    .line 73
    iget v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->fadeIn:I

    shr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 75
    iget v2, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->on:I

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 77
    iget v4, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->fadeout:I

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 79
    iget v6, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->off:I

    shr-int/lit8 v7, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    const/16 v8, 0x11

    .line 82
    new-array v8, v8, [B

    sget-object v9, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_notif:[B

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    aput-byte v9, v8, v10

    sget-object v9, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_notif:[B

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    aput-byte v9, v8, v11

    iget-object v9, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v9, v9, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v9, v9

    const/4 v12, 0x2

    aput-byte v9, v8, v12

    iget-object v9, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v9, v9, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v9, v9

    const/4 v12, 0x3

    aput-byte v9, v8, v12

    iget-object v9, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v9, v9, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte v9, v9

    const/4 v12, 0x4

    aput-byte v9, v8, v12

    iget-object v9, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v9, v9, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v9, v9

    const/4 v12, 0x5

    aput-byte v9, v8, v12

    iget-object v9, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v9, v9, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v9, v9

    const/4 v12, 0x6

    aput-byte v9, v8, v12

    iget-object v9, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v9, v9, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte v9, v9

    const/4 v12, 0x7

    aput-byte v9, v8, v12

    const/16 v9, 0x8

    aput-byte v1, v8, v9

    const/16 v1, 0x9

    aput-byte v0, v8, v1

    const/16 v0, 0xa

    aput-byte v3, v8, v0

    const/16 v0, 0xb

    aput-byte v2, v8, v0

    const/16 v0, 0xc

    aput-byte v5, v8, v0

    const/16 v0, 0xd

    aput-byte v4, v8, v0

    const/16 v0, 0xe

    aput-byte v7, v8, v0

    const/16 v0, 0xf

    aput-byte v6, v8, v0

    iget v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->repeat:I

    int-to-byte v0, v0

    const/16 v1, 0x10

    aput-byte v0, v8, v1

    .line 93
    sget-object v0, Lbike/smarthalo/sdk/models/DeviceModel;->SH2:Lbike/smarthalo/sdk/models/DeviceModel;

    if-ne p1, v0, :cond_0

    .line 94
    new-array p1, v11, [B

    iget-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->type:Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationType;->getValue()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, v10

    invoke-static {v8, p1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 95
    iget-object v0, p0, Lbike/smarthalo/sdk/commands/CommandsModels/NotificationCommand;->text:Ljava/lang/String;

    array-length v1, p1

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v8

    :cond_0
    return-object v8
.end method
