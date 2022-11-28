.class public Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;
.super Ljava/lang/Object;
.source "ProgressCommandPayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# instance fields
.field private description:Ljava/lang/String;

.field private firstColour:Lbike/smarthalo/sdk/models/SHColour;

.field private percentage:I

.field private period:I

.field private secondColour:Lbike/smarthalo/sdk/models/SHColour;

.field private useFitnessMode:Z


# direct methods
.method public constructor <init>(Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;IIZLjava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 23
    iput-object p2, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 24
    iput p3, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->period:I

    .line 25
    iput p4, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->percentage:I

    .line 26
    iput-boolean p5, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->useFitnessMode:Z

    .line 27
    iput-object p6, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    const/16 v0, 0xa

    .line 32
    new-array v0, v0, [B

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->firstColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->secondColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->period:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x6

    aput-byte v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->percentage:I

    int-to-byte v1, v1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->useFitnessMode:Z

    int-to-byte v1, v1

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    .line 43
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ProgressCommandPayload;->description:Ljava/lang/String;

    array-length v2, v0

    invoke-static {v1, v2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormattedDescription(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    return-object v0
.end method
