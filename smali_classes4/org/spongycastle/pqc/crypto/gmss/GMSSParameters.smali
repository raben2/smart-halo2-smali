.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;
.source "GMSSParameters.java"


# instance fields
.field private K:[I

.field private heightOfTrees:[I

.field private numOfLayers:I

.field private winternitzParameter:[I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    const/4 v1, 0x2

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 93
    new-array v2, p1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 94
    new-array v0, p1, [I

    const/4 v4, 0x3

    aput v4, v0, v3

    .line 95
    new-array p1, p1, [I

    aput v1, p1, v3

    .line 96
    array-length v1, v2

    invoke-direct {p0, v1, v2, v0, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 100
    new-array p1, v1, [I

    fill-array-data p1, :array_0

    .line 101
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 102
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    .line 103
    array-length v2, p1

    invoke-direct {p0, v2, p1, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 107
    new-array v0, p1, [I

    fill-array-data v0, :array_3

    .line 108
    new-array v1, p1, [I

    fill-array-data v1, :array_4

    .line 109
    new-array p1, p1, [I

    fill-array-data p1, :array_5

    .line 110
    array-length v2, v0

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    return-void
.end method

.method private init(I[I[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, ""

    .line 53
    iput p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    .line 54
    iget p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v1, p3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    array-length v1, p2

    if-ne p1, v1, :cond_1

    array-length v1, p4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Unexpected parameterset format"

    const/4 p1, 0x0

    :goto_1
    move-object v1, v0

    move v0, p1

    const/4 p1, 0x0

    .line 61
    :goto_2
    iget v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    if-ge p1, v3, :cond_6

    .line 63
    aget v3, p4, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    aget v3, p2, p1

    aget v5, p4, p1

    sub-int/2addr v3, v5

    rem-int/2addr v3, v4

    if-eqz v3, :cond_3

    :cond_2
    const-string v1, "Wrong parameter K (K >= 2 and H-K even required)!"

    const/4 v0, 0x0

    .line 69
    :cond_3
    aget v3, p2, p1

    const/4 v5, 0x4

    if-lt v3, v5, :cond_4

    aget v3, p3, p1

    if-ge v3, v4, :cond_5

    :cond_4
    const-string v0, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    move-object v1, v0

    const/4 v0, 0x0

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 78
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    .line 79
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    .line 80
    invoke-static {p4}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    return-void

    .line 84
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getHeightOfTrees()[I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNumOfLayers()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    return v0
.end method

.method public getWinternitzParameter()[I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
