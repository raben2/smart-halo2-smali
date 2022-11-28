.class public Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;
.super Ljava/lang/Object;
.source "ClockCommandPayload.java"

# interfaces
.implements Lbike/smarthalo/sdk/commands/CommandsModels/GenericCommandPayload;


# instance fields
.field private duration:I

.field private hour:I

.field private hourColour:Lbike/smarthalo/sdk/models/SHColour;

.field private is24HourFormat:Z

.field private minute:I

.field private minuteColour:Lbike/smarthalo/sdk/models/SHColour;

.field private shouldDisplayIntro:Z

.field private shouldFade:Z

.field private shouldPulse:Z


# direct methods
.method public constructor <init>(ILbike/smarthalo/sdk/models/SHColour;ILbike/smarthalo/sdk/models/SHColour;IZZZZ)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->hour:I

    .line 31
    iput-object p2, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->hourColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 32
    iput p3, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->minute:I

    .line 33
    iput-object p4, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->minuteColour:Lbike/smarthalo/sdk/models/SHColour;

    .line 34
    iput p5, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->duration:I

    .line 35
    iput-boolean p6, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->shouldFade:Z

    .line 36
    iput-boolean p7, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->shouldDisplayIntro:Z

    .line 37
    iput-boolean p8, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->shouldPulse:Z

    .line 38
    iput-boolean p9, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->is24HourFormat:Z

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 4

    const/16 v0, 0xe

    .line 43
    new-array v0, v0, [B

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->hour:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->hourColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->hourColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->hourColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->minute:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->minuteColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->minuteColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    iget-object v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->minuteColour:Lbike/smarthalo/sdk/models/SHColour;

    iget v1, v1, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->duration:I

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x8

    aput-byte v2, v0, v3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    iget-boolean v1, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->shouldFade:Z

    int-to-byte v1, v1

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    const/16 v1, 0xb

    iget-boolean v2, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->shouldDisplayIntro:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    iget-boolean v2, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->shouldPulse:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    iget-boolean v2, p0, Lbike/smarthalo/sdk/commands/carousel/ClockCommandPayload;->is24HourFormat:Z

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
