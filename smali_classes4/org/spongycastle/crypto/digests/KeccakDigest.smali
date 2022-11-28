.class public Lorg/spongycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;
.source "KeccakDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRhoOffsets:[I

.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected squeezing:Z

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lorg/spongycastle/crypto/digests/KeccakDigest;->keccakInitializeRoundConstants()[J

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    .line 17
    invoke-static {}, Lorg/spongycastle/crypto/digests/KeccakDigest;->keccakInitializeRhoOffsets()[I

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRhoOffsets:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x120

    .line 86
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 77
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    .line 78
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 91
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->init(I)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/KeccakDigest;)V
    .locals 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 77
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    .line 78
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    .line 96
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    .line 99
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 100
    iget v0, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    .line 101
    iget-boolean p1, p1, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    iput-boolean p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    return-void
.end method

.method private KeccakAbsorb([BI)V
    .locals 7

    .line 333
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v0, v0, 0x6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 336
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v3, v2, v1

    invoke-static {p1, p2}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    aput-wide v3, v2, v1

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    return-void
.end method

.method private KeccakExtract()V
    .locals 4

    .line 345
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lorg/spongycastle/util/Pack;->longToLittleEndian([JII[BI)V

    return-void
.end method

.method private KeccakPermutation()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->theta([J)V

    .line 359
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->rho([J)V

    .line 362
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->pi([J)V

    .line 365
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->chi([J)V

    .line 368
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->iota([JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static LFSR86540([B)Z
    .locals 4

    const/4 v0, 0x0

    .line 45
    aget-byte v1, p0, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    .line 48
    aget-byte v3, p0, v0

    shl-int/lit8 v2, v3, 0x1

    xor-int/lit8 v2, v2, 0x71

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    goto :goto_1

    .line 52
    :cond_1
    aget-byte v3, p0, v0

    shl-int/lit8 v2, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    :goto_1
    return v1
.end method

.method private static chi([J)V
    .locals 21

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x0

    .line 471
    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget-wide v5, p0, v4

    not-long v5, v5

    add-int/lit8 v7, v0, 0x2

    aget-wide v8, p0, v7

    and-long/2addr v5, v8

    xor-long/2addr v2, v5

    .line 472
    aget-wide v5, p0, v4

    aget-wide v8, p0, v7

    not-long v8, v8

    add-int/lit8 v10, v0, 0x3

    aget-wide v11, p0, v10

    and-long/2addr v8, v11

    xor-long/2addr v5, v8

    .line 473
    aget-wide v8, p0, v7

    aget-wide v11, p0, v10

    not-long v11, v11

    add-int/lit8 v13, v0, 0x4

    aget-wide v14, p0, v13

    and-long/2addr v11, v14

    xor-long/2addr v8, v11

    .line 474
    aget-wide v11, p0, v10

    aget-wide v14, p0, v13

    not-long v14, v14

    aget-wide v16, p0, v1

    and-long v14, v14, v16

    xor-long/2addr v11, v14

    .line 475
    aget-wide v14, p0, v13

    move/from16 v16, v10

    move-wide/from16 v17, v11

    aget-wide v10, p0, v1

    not-long v10, v10

    aget-wide v19, p0, v4

    and-long v10, v10, v19

    xor-long/2addr v10, v14

    .line 477
    aput-wide v2, p0, v1

    .line 478
    aput-wide v5, p0, v4

    .line 479
    aput-wide v8, p0, v7

    .line 480
    aput-wide v17, p0, v16

    .line 481
    aput-wide v10, p0, v13

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x120

    if-eq p1, v0, :cond_1

    const/16 v0, 0x180

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    shl-int/lit8 p1, p1, 0x1

    rsub-int p1, p1, 0x640

    .line 175
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->initSponge(I)V

    return-void
.end method

.method private initSponge(I)V
    .locals 6

    if-lez p1, :cond_1

    const/16 v0, 0x640

    if-ge p1, v0, :cond_1

    .line 184
    rem-int/lit8 v1, p1, 0x40

    if-nez v1, :cond_1

    .line 189
    iput p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 190
    :goto_0
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v4, v3

    if-ge v2, v4, :cond_0

    const-wide/16 v4, 0x0

    .line 192
    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v2, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 195
    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 196
    iput-boolean v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    sub-int/2addr v0, p1

    .line 197
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    return-void

    .line 186
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid rate value"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static iota([JI)V
    .locals 6

    const/4 v0, 0x0

    .line 487
    aget-wide v1, p0, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    aget-wide v4, v3, p1

    xor-long/2addr v1, v4

    aput-wide v1, p0, v0

    return-void
.end method

.method private static keccakInitializeRhoOffsets()[I
    .locals 6

    const/16 v0, 0x19

    .line 60
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x18

    if-ge v1, v4, :cond_0

    .line 68
    rem-int/lit8 v4, v2, 0x5

    rem-int/lit8 v5, v3, 0x5

    mul-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    mul-int v1, v1, v5

    div-int/lit8 v1, v1, 0x2

    rem-int/lit8 v1, v1, 0x40

    aput v1, v0, v4

    mul-int/lit8 v1, v2, 0x0

    mul-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v4

    .line 69
    rem-int/lit8 v1, v1, 0x5

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    .line 70
    rem-int/lit8 v3, v2, 0x5

    move v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static keccakInitializeRoundConstants()[J
    .locals 12

    const/16 v0, 0x18

    .line 21
    new-array v1, v0, [J

    const/4 v2, 0x1

    .line 22
    new-array v3, v2, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    const-wide/16 v6, 0x0

    .line 29
    aput-wide v6, v1, v5

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    shl-int v7, v2, v6

    sub-int/2addr v7, v2

    .line 33
    invoke-static {v3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->LFSR86540([B)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    aget-wide v8, v1, v5

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v7

    xor-long v7, v8, v10

    aput-wide v7, v1, v5

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static leftRotate(JI)J
    .locals 2

    shl-long v0, p0, p2

    neg-int p2, p2

    ushr-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 12

    .line 269
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v2, v1, 0x3

    aget-byte v3, v0, v2

    and-int/lit8 v4, v1, 0x7

    const-wide/16 v5, 0x1

    shl-long v7, v5, v4

    long-to-int v4, v7

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 271
    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_0

    .line 273
    invoke-direct {p0, v0, v4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    .line 274
    iput v4, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 278
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    const/4 v3, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 282
    iget-object v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v8, v7, v4

    iget-object v10, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v10, v3}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v10

    xor-long/2addr v8, v10

    aput-wide v8, v7, v4

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    shl-long v7, v5, v0

    sub-long/2addr v7, v5

    .line 288
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v4, v0, v1

    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v6, v3}, Lorg/spongycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v9

    and-long v6, v9, v7

    xor-long v3, v4, v6

    aput-wide v3, v0, v1

    .line 290
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x6

    aget-wide v3, v0, v1

    const-wide/high16 v5, -0x8000000000000000L

    xor-long/2addr v3, v5

    aput-wide v3, v0, v1

    .line 293
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 296
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    .line 297
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 300
    iput-boolean v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    return-void
.end method

.method private static pi([J)V
    .locals 6

    const/4 v0, 0x1

    .line 438
    aget-wide v1, p0, v0

    const/4 v3, 0x6

    .line 439
    aget-wide v4, p0, v3

    aput-wide v4, p0, v0

    const/16 v0, 0x9

    .line 440
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    const/16 v3, 0x16

    .line 441
    aget-wide v4, p0, v3

    aput-wide v4, p0, v0

    const/16 v0, 0xe

    .line 442
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    const/16 v3, 0x14

    .line 443
    aget-wide v4, p0, v3

    aput-wide v4, p0, v0

    const/4 v0, 0x2

    .line 444
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    const/16 v3, 0xc

    .line 445
    aget-wide v4, p0, v3

    aput-wide v4, p0, v0

    const/16 v0, 0xd

    .line 446
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    const/16 v3, 0x13

    .line 447
    aget-wide v4, p0, v3

    aput-wide v4, p0, v0

    const/16 v0, 0x17

    .line 448
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    const/16 v3, 0xf

    .line 449
    aget-wide v4, p0, v3

    aput-wide v4, p0, v0

    const/4 v0, 0x4

    .line 450
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    const/16 v3, 0x18

    .line 451
    aget-wide v4, p0, v3

    aput-wide v4, p0, v0

    const/16 v0, 0x15

    .line 452
    aget-wide v4, p0, v0

    aput-wide v4, p0, v3

    const/16 v3, 0x8

    .line 453
    aget-wide v3, p0, v3

    aput-wide v3, p0, v0

    const/16 v0, 0x10

    .line 454
    aget-wide v3, p0, v0

    const/16 v0, 0x8

    aput-wide v3, p0, v0

    const/4 v0, 0x5

    .line 455
    aget-wide v3, p0, v0

    const/16 v0, 0x10

    aput-wide v3, p0, v0

    const/4 v0, 0x3

    .line 456
    aget-wide v3, p0, v0

    const/4 v0, 0x5

    aput-wide v3, p0, v0

    const/16 v0, 0x12

    .line 457
    aget-wide v3, p0, v0

    const/4 v0, 0x3

    aput-wide v3, p0, v0

    const/16 v0, 0x11

    .line 458
    aget-wide v3, p0, v0

    const/16 v0, 0x12

    aput-wide v3, p0, v0

    const/16 v0, 0xb

    .line 459
    aget-wide v3, p0, v0

    const/16 v0, 0x11

    aput-wide v3, p0, v0

    const/4 v0, 0x7

    .line 460
    aget-wide v3, p0, v0

    const/16 v0, 0xb

    aput-wide v3, p0, v0

    const/16 v0, 0xa

    .line 461
    aget-wide v3, p0, v0

    const/4 v0, 0x7

    aput-wide v3, p0, v0

    const/16 v0, 0xa

    .line 462
    aput-wide v1, p0, v0

    return-void
.end method

.method private static rho([J)V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 432
    aget-wide v1, p0, v0

    sget-object v3, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakRhoOffsets:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static theta([J)V
    .locals 27

    const/4 v0, 0x0

    .line 380
    aget-wide v1, p0, v0

    const/4 v3, 0x5

    aget-wide v4, p0, v3

    xor-long/2addr v1, v4

    const/16 v4, 0xa

    aget-wide v5, p0, v4

    xor-long/2addr v1, v5

    const/16 v5, 0xf

    aget-wide v6, p0, v5

    xor-long/2addr v1, v6

    const/16 v6, 0x14

    aget-wide v7, p0, v6

    xor-long/2addr v1, v7

    const/4 v7, 0x1

    .line 381
    aget-wide v8, p0, v7

    const/4 v10, 0x6

    aget-wide v11, p0, v10

    xor-long/2addr v8, v11

    const/16 v11, 0xb

    aget-wide v12, p0, v11

    xor-long/2addr v8, v12

    const/16 v12, 0x10

    aget-wide v13, p0, v12

    xor-long/2addr v8, v13

    const/16 v13, 0x15

    aget-wide v14, p0, v13

    xor-long/2addr v8, v14

    const/4 v14, 0x2

    .line 382
    aget-wide v15, p0, v14

    const/16 v17, 0x7

    aget-wide v18, p0, v17

    xor-long v15, v15, v18

    const/16 v18, 0xc

    aget-wide v19, p0, v18

    xor-long v15, v15, v19

    const/16 v19, 0x11

    aget-wide v20, p0, v19

    xor-long v15, v15, v20

    const/16 v20, 0x16

    aget-wide v21, p0, v20

    xor-long v14, v15, v21

    const/16 v16, 0x3

    .line 383
    aget-wide v21, p0, v16

    const/16 v16, 0x8

    aget-wide v23, p0, v16

    xor-long v21, v21, v23

    const/16 v16, 0xd

    aget-wide v23, p0, v16

    xor-long v21, v21, v23

    const/16 v16, 0x12

    aget-wide v23, p0, v16

    xor-long v21, v21, v23

    const/16 v16, 0x17

    aget-wide v23, p0, v16

    xor-long v12, v21, v23

    const/16 v21, 0x4

    .line 384
    aget-wide v21, p0, v21

    const/16 v23, 0x9

    aget-wide v23, p0, v23

    xor-long v21, v21, v23

    const/16 v23, 0xe

    aget-wide v23, p0, v23

    xor-long v21, v21, v23

    const/16 v23, 0x13

    aget-wide v23, p0, v23

    xor-long v21, v21, v23

    const/16 v23, 0x18

    aget-wide v23, p0, v23

    move-wide/from16 v25, v12

    xor-long v11, v21, v23

    .line 386
    invoke-static {v8, v9, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v21

    xor-long v21, v21, v11

    .line 388
    aget-wide v23, p0, v0

    xor-long v23, v23, v21

    aput-wide v23, p0, v0

    .line 389
    aget-wide v23, p0, v3

    xor-long v23, v23, v21

    aput-wide v23, p0, v3

    .line 390
    aget-wide v23, p0, v4

    xor-long v23, v23, v21

    aput-wide v23, p0, v4

    .line 391
    aget-wide v3, p0, v5

    xor-long v3, v3, v21

    aput-wide v3, p0, v5

    .line 392
    aget-wide v3, p0, v6

    xor-long v3, v3, v21

    aput-wide v3, p0, v6

    .line 394
    invoke-static {v14, v15, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v3

    xor-long/2addr v3, v1

    .line 396
    aget-wide v5, p0, v7

    xor-long/2addr v5, v3

    aput-wide v5, p0, v7

    .line 397
    aget-wide v5, p0, v10

    xor-long/2addr v5, v3

    aput-wide v5, p0, v10

    const/16 v0, 0xb

    .line 398
    aget-wide v5, p0, v0

    xor-long/2addr v5, v3

    aput-wide v5, p0, v0

    const/16 v0, 0x10

    .line 399
    aget-wide v5, p0, v0

    xor-long/2addr v5, v3

    aput-wide v5, p0, v0

    const/16 v0, 0x15

    .line 400
    aget-wide v5, p0, v0

    xor-long/2addr v3, v5

    aput-wide v3, p0, v0

    move-wide/from16 v3, v25

    .line 402
    invoke-static {v3, v4, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v5

    xor-long/2addr v5, v8

    const/4 v0, 0x2

    .line 404
    aget-wide v8, p0, v0

    xor-long/2addr v8, v5

    aput-wide v8, p0, v0

    .line 405
    aget-wide v8, p0, v17

    xor-long/2addr v8, v5

    aput-wide v8, p0, v17

    .line 406
    aget-wide v8, p0, v18

    xor-long/2addr v8, v5

    aput-wide v8, p0, v18

    .line 407
    aget-wide v8, p0, v19

    xor-long/2addr v8, v5

    aput-wide v8, p0, v19

    .line 408
    aget-wide v8, p0, v20

    xor-long/2addr v5, v8

    aput-wide v5, p0, v20

    .line 410
    invoke-static {v11, v12, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v5

    xor-long/2addr v5, v14

    const/4 v0, 0x3

    .line 412
    aget-wide v8, p0, v0

    xor-long/2addr v8, v5

    aput-wide v8, p0, v0

    const/16 v0, 0x8

    .line 413
    aget-wide v8, p0, v0

    xor-long/2addr v8, v5

    aput-wide v8, p0, v0

    const/16 v0, 0xd

    .line 414
    aget-wide v8, p0, v0

    xor-long/2addr v8, v5

    aput-wide v8, p0, v0

    const/16 v0, 0x12

    .line 415
    aget-wide v8, p0, v0

    xor-long/2addr v8, v5

    aput-wide v8, p0, v0

    const/16 v0, 0x17

    .line 416
    aget-wide v8, p0, v0

    xor-long/2addr v5, v8

    aput-wide v5, p0, v0

    .line 418
    invoke-static {v1, v2, v7}, Lorg/spongycastle/crypto/digests/KeccakDigest;->leftRotate(JI)J

    move-result-wide v0

    xor-long/2addr v0, v3

    const/4 v2, 0x4

    .line 420
    aget-wide v3, p0, v2

    xor-long/2addr v3, v0

    aput-wide v3, p0, v2

    const/16 v2, 0x9

    .line 421
    aget-wide v3, p0, v2

    xor-long/2addr v3, v0

    aput-wide v3, p0, v2

    const/16 v2, 0xe

    .line 422
    aget-wide v3, p0, v2

    xor-long/2addr v3, v0

    aput-wide v3, p0, v2

    const/16 v2, 0x13

    .line 423
    aget-wide v3, p0, v2

    xor-long/2addr v3, v0

    aput-wide v3, p0, v2

    const/16 v2, 0x18

    .line 424
    aget-wide v3, p0, v2

    xor-long/2addr v0, v3

    aput-wide v0, p0, v2

    return-void
.end method


# virtual methods
.method protected absorb([BII)V
    .locals 7

    .line 202
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_5

    .line 206
    iget-boolean v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v1, :cond_4

    shr-int/lit8 v0, v0, 0x3

    .line 212
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    shr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    move v3, v0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-ge v0, p3, :cond_3

    if-nez v3, :cond_2

    sub-int v4, p3, v1

    if-gt v0, v4, :cond_2

    :cond_1
    add-int v5, p2, v0

    .line 221
    invoke-direct {p0, p1, v5}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    add-int/2addr v0, v1

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_2
    sub-int v4, v1, v3

    sub-int v5, p3, v0

    .line 228
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, p2, v0

    .line 229
    iget-object v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, v5, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/2addr v0, v4

    if-ne v3, v1, :cond_0

    .line 236
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v3, v2}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    shl-int/lit8 p1, v3, 0x3

    .line 242
    iput p1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void

    .line 208
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 204
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb with odd length queue"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected absorbBits(II)V
    .locals 4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const/4 v1, 0x7

    if-gt p2, v1, :cond_2

    .line 251
    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_1

    .line 255
    iget-boolean v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v2, :cond_0

    shl-int v2, v0, p2

    sub-int/2addr v2, v0

    .line 261
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr p1, v2

    int-to-byte p1, p1

    aput-byte p1, v0, v3

    add-int/2addr v1, p2

    .line 264
    iput v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb while squeezing"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 253
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "attempt to absorb with odd length queue"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'bits\' must be in the range 1 to 7"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doFinal([BI)I
    .locals 2

    .line 126
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 128
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->reset()V

    .line 130
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method protected doFinal([BIBI)I
    .locals 0

    if-lez p4, :cond_0

    .line 140
    invoke-virtual {p0, p3, p4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    .line 143
    :cond_0
    iget p3, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long p3, p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    .line 145
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->reset()V

    .line 147
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result p1

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keccak-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    .line 162
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 111
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    .line 152
    iget v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->init(I)V

    return-void
.end method

.method protected squeeze([BIJ)V
    .locals 9

    .line 305
    iget-boolean v0, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v0, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->padAndSwitchToSqueezingPhase()V

    :cond_0
    const-wide/16 v0, 0x8

    .line 309
    rem-long v2, p3, v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    :goto_0
    cmp-long v2, v4, p3

    if-gez v2, :cond_2

    .line 317
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    if-nez v2, :cond_1

    .line 319
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    .line 320
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    .line 321
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iput v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    .line 324
    :cond_1
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v2

    sub-long v6, p3, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    .line 325
    iget-object v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v6, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->rate:I

    iget v7, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x8

    div-long v7, v4, v0

    long-to-int v8, v7

    add-int/2addr v8, p2

    div-int/lit8 v7, v3, 0x8

    invoke-static {v2, v6, p1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/spongycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v3

    add-long/2addr v4, v2

    goto :goto_0

    :cond_2
    return-void

    .line 311
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "outputLength not a multiple of 8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public update(B)V
    .locals 3

    const/4 v0, 0x1

    .line 116
    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    .line 121
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method
