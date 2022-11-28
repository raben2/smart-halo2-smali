.class public Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;
.super Lbike/smarthalo/sdk/commands/BaseCommandsController;
.source "CarouselCommandsController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lbike/smarthalo/sdk/commands/BaseCommandsController;-><init>(Landroid/content/Context;Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;)V

    return-void
.end method


# virtual methods
.method public showCarousel(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    const/4 v0, 0x7

    .line 25
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_carousel:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_carousel:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    aput-byte v1, v0, v3

    .line 28
    invoke-virtual {p1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->getValue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 29
    invoke-virtual {p2}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->getMask()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 30
    invoke-virtual {p2}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->getMask()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x4

    aput-byte p1, v0, p2

    const/4 p1, 0x5

    aput-byte v2, v0, p1

    const/4 p1, 0x6

    aput-byte v2, v0, p1

    .line 34
    invoke-interface {p3}, Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;->getBytes()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object p1

    .line 36
    iget-object p2, p0, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p3, "showCarousel"

    new-instance v0, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$1;

    invoke-direct {v0, p0, p4}, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$1;-><init>(Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p2, p1, v3, p3, v0}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method

.method public showCarouselPosition(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;Lbike/smarthalo/sdk/CmdCallback;)V
    .locals 4

    const/4 v0, 0x7

    .line 47
    new-array v0, v0, [B

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_carousel_position:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    sget-object v1, Lbike/smarthalo/sdk/commands/CommandsConstants;->cmd_carousel_position:[B

    const/4 v3, 0x1

    aget-byte v1, v1, v3

    aput-byte v1, v0, v3

    .line 50
    invoke-virtual {p1}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;->getValue()I

    move-result p1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    .line 51
    invoke-virtual {p2}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->getMask()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    .line 52
    invoke-virtual {p2}, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->getMask()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x4

    aput-byte p1, v0, p2

    const/4 p1, 0x5

    aput-byte v2, v0, p1

    const/4 p1, 0x6

    aput-byte v2, v0, p1

    .line 57
    iget-object p1, p0, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;->contract:Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;

    const-string p2, "showCarouselPosition"

    new-instance v1, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$2;

    invoke-direct {v1, p0, p3}, Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController$2;-><init>(Lbike/smarthalo/sdk/commands/carousel/CarouselCommandsController;Lbike/smarthalo/sdk/CmdCallback;)V

    invoke-interface {p1, v0, v3, p2, v1}, Lbike/smarthalo/sdk/commands/CommandsContracts/TransceiveContract;->transceive([BZLjava/lang/String;Lbike/smarthalo/sdk/models/TransceiveCallback;)V

    return-void
.end method
