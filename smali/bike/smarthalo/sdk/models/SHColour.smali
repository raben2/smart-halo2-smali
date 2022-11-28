.class public Lbike/smarthalo/sdk/models/SHColour;
.super Ljava/lang/Object;
.source "SHColour.java"


# instance fields
.field public hue:I

.field public lightness:I

.field public saturation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    .line 14
    iput v0, p0, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    .line 15
    iput v0, p0, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    .line 20
    iput p2, p0, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    .line 21
    iput p3, p0, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 3

    const/4 v0, 0x3

    .line 25
    new-array v0, v0, [B

    iget v1, p0, Lbike/smarthalo/sdk/models/SHColour;->hue:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/models/SHColour;->saturation:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    iget v1, p0, Lbike/smarthalo/sdk/models/SHColour;->lightness:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    return-object v0
.end method
