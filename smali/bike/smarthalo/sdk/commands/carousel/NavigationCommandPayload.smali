.class public Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;
.super Ljava/lang/Object;
.source "NavigationCommandPayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# instance fields
.field private angle:I

.field private colour:Lbike/smarthalo/sdk/models/SHColour;

.field private description:Ljava/lang/String;

.field private distance:I

.field private isMetric:Z


# direct methods
.method public constructor <init>(IZILbike/smarthalo/sdk/models/SHColour;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->distance:I

    .line 18
    iput-boolean p2, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->isMetric:Z

    .line 19
    iput p3, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->angle:I

    .line 20
    iput-object p4, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->colour:Lbike/smarthalo/sdk/models/SHColour;

    .line 21
    iput-object p5, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 5

    .line 26
    iget v0, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->distance:I

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->isMetric:Z

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 27
    new-array v1, v1, [B

    iget v2, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->angle:I

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 31
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->colour:Lbike/smarthalo/sdk/models/SHColour;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/SHColour;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 32
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/NavigationCommandPayload;->description:Ljava/lang/String;

    array-length v2, v0

    invoke-static {v1, v2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    return-object v0
.end method
