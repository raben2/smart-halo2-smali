.class public Lbike/smarthalo/sdk/commands/carousel/FitnessCommandPayload;
.super Ljava/lang/Object;
.source "FitnessCommandPayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# instance fields
.field private genericFitnessMetric:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lbike/smarthalo/sdk/commands/carousel/FitnessCommandPayload;->genericFitnessMetric:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [B

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/FitnessCommandPayload;->genericFitnessMetric:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
