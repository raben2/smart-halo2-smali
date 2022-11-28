.class public Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;
.super Ljava/lang/Object;
.source "AverageSpeedCommandPayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# instance fields
.field private averageSpeedPerHour:I

.field private centerColour:Lbike/smarthalo/sdk/models/SHColour;

.field private currentSpeedPerHour:I

.field private higherColour:Lbike/smarthalo/sdk/models/SHColour;

.field private isMetric:Z

.field private lowerColour:Lbike/smarthalo/sdk/models/SHColour;


# direct methods
.method public constructor <init>(IIZLbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;Lbike/smarthalo/sdk/models/SHColour;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->averageSpeedPerHour:I

    .line 25
    iput p2, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->currentSpeedPerHour:I

    .line 26
    iput-boolean p3, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->isMetric:Z

    .line 27
    iput-object p4, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->lowerColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 28
    iput-object p5, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->centerColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 29
    iput-object p6, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->higherColour:Lbike/smarthalo/sdk/models/SHColour;

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    .line 34
    iget v0, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->averageSpeedPerHour:I

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->isMetric:Z

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object v0

    .line 35
    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->currentSpeedPerHour:I

    iget-boolean v2, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->isMetric:Z

    invoke-static {v1, v2}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 36
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->lowerColour:Lbike/smarthalo/sdk/models/SHColour;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/SHColour;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 37
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->centerColour:Lbike/smarthalo/sdk/models/SHColour;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/SHColour;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 38
    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/AverageSpeedCommandPayload;->higherColour:Lbike/smarthalo/sdk/models/SHColour;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/models/SHColour;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    return-object v0
.end method
