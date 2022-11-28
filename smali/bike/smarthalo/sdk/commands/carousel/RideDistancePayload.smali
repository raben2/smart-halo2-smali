.class public Lbike/smarthalo/sdk/commands/carousel/RideDistancePayload;
.super Ljava/lang/Object;
.source "RideDistancePayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# instance fields
.field private distance:I

.field private isMetric:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lbike/smarthalo/sdk/commands/carousel/RideDistancePayload;->distance:I

    .line 16
    iput-boolean p2, p0, Lbike/smarthalo/sdk/commands/carousel/RideDistancePayload;->isMetric:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 2

    .line 21
    iget v0, p0, Lbike/smarthalo/sdk/commands/carousel/RideDistancePayload;->distance:I

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/RideDistancePayload;->isMetric:Z

    invoke-static {v0, v1}, Lbike/smarthalo/sdk/commands/CommandsHelper;->getFormatted4ByteMetric(IZ)[B

    move-result-object v0

    return-object v0
.end method
