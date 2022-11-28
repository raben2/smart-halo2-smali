.class public Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;
.super Ljava/lang/Object;
.source "SpeedometerCommandPayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# instance fields
.field private isMetric:Z

.field private percentage:I

.field private speed:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;->percentage:I

    .line 16
    iput p2, p0, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;->speed:I

    .line 17
    iput-boolean p3, p0, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;->isMetric:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [B

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;->percentage:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;->speed:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/SpeedometerCommandPayload;->isMetric:Z

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method
