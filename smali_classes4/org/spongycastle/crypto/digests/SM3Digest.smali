.class public Lorg/spongycastle/crypto/digests/SM3Digest;
.super Lorg/spongycastle/crypto/digests/GeneralDigest;
.source "SM3Digest.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x10

.field private static final DIGEST_LENGTH:I = 0x20

.field private static final T:[I


# instance fields
.field private V:[I

.field private W:[I

.field private W1:[I

.field private inwords:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x40

    .line 33
    new-array v1, v0, [I

    sput-object v1, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    const v2, 0x79cc4519

    .line 40
    sget-object v3, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v4, v2, v1

    rsub-int/lit8 v5, v1, 0x20

    ushr-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 44
    rem-int/lit8 v1, v2, 0x20

    const v3, 0x7a879d8a

    .line 46
    sget-object v4, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    shl-int v5, v3, v1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v3, v1

    or-int/2addr v1, v5

    aput v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x8

    .line 24
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    .line 25
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    .line 29
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    const/16 v0, 0x40

    .line 30
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;-><init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x8

    .line 24
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/16 v0, 0x10

    .line 25
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    const/16 v0, 0x44

    .line 29
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    const/16 v0, 0x40

    .line 30
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    .line 67
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SM3Digest;->copyIn(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    return-void
.end method

.method private FF0(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private FF1(III)I
    .locals 1

    and-int v0, p1, p2

    and-int/2addr p1, p3

    or-int/2addr p1, v0

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private GG0(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private GG1(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private P0(I)I
    .locals 3

    shl-int/lit8 v0, p1, 0x9

    ushr-int/lit8 v1, p1, 0x17

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x11

    ushr-int/lit8 v2, p1, 0xf

    or-int/2addr v1, v2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v1

    return p1
.end method

.method private P1(I)I
    .locals 3

    shl-int/lit8 v0, p1, 0xf

    ushr-int/lit8 v1, p1, 0x11

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x17

    ushr-int/lit8 v2, p1, 0x9

    or-int/2addr v1, v2

    xor-int/2addr p1, v0

    xor-int/2addr p1, v1

    return p1
.end method

.method private copyIn(Lorg/spongycastle/crypto/digests/SM3Digest;)V
    .locals 4

    .line 72
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget p1, p1, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    iput p1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method


# virtual methods
.method public copy()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 90
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    .line 125
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->finish()V

    .line 127
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 128
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 129
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 132
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 133
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 134
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    add-int/lit8 p2, p2, 0x1c

    invoke-static {v0, p1, p2}, Lorg/spongycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 136
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->reset()V

    const/16 p1, 0x20

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "SM3"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 260
    iget-object v3, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    iget-object v4, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_1
    const/16 v4, 0x44

    if-ge v2, v4, :cond_1

    .line 264
    iget-object v4, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v5, v2, -0x3

    aget v5, v4, v5

    shl-int/lit8 v6, v5, 0xf

    ushr-int/lit8 v5, v5, 0x11

    or-int/2addr v5, v6

    add-int/lit8 v6, v2, -0xd

    .line 266
    aget v6, v4, v6

    shl-int/lit8 v7, v6, 0x7

    ushr-int/lit8 v6, v6, 0x19

    or-int/2addr v6, v7

    add-int/lit8 v7, v2, -0x10

    .line 268
    aget v7, v4, v7

    add-int/lit8 v8, v2, -0x9

    aget v8, v4, v8

    xor-int/2addr v7, v8

    xor-int/2addr v5, v7

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/digests/SM3Digest;->P1(I)I

    move-result v5

    xor-int/2addr v5, v6

    iget-object v6, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    add-int/lit8 v7, v2, -0x6

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x40

    if-ge v2, v4, :cond_2

    .line 272
    iget-object v4, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    iget-object v5, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    aget v6, v5, v2

    add-int/lit8 v7, v2, 0x4

    aget v5, v5, v7

    xor-int/2addr v5, v6

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 275
    :cond_2
    iget-object v2, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    aget v5, v2, v1

    const/4 v6, 0x1

    .line 276
    aget v7, v2, v6

    const/4 v8, 0x2

    .line 277
    aget v9, v2, v8

    const/4 v10, 0x3

    .line 278
    aget v11, v2, v10

    const/4 v12, 0x4

    .line 279
    aget v13, v2, v12

    const/4 v14, 0x5

    .line 280
    aget v15, v2, v14

    const/16 v16, 0x6

    .line 281
    aget v17, v2, v16

    const/16 v18, 0x7

    .line 282
    aget v2, v2, v18

    move/from16 v19, v2

    move/from16 v14, v17

    const/4 v2, 0x0

    move/from16 v23, v7

    move v7, v5

    move/from16 v5, v23

    move/from16 v24, v11

    move v11, v9

    move/from16 v9, v24

    move/from16 v25, v15

    move v15, v13

    move/from16 v13, v25

    :goto_3
    if-ge v2, v3, :cond_3

    shl-int/lit8 v20, v7, 0xc

    ushr-int/lit8 v21, v7, 0x14

    or-int v20, v20, v21

    add-int v21, v20, v15

    .line 288
    sget-object v22, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    aget v22, v22, v2

    add-int v21, v21, v22

    shl-int/lit8 v22, v21, 0x7

    ushr-int/lit8 v21, v21, 0x19

    or-int v21, v22, v21

    xor-int v20, v21, v20

    .line 291
    invoke-direct {v0, v7, v5, v11}, Lorg/spongycastle/crypto/digests/SM3Digest;->FF0(III)I

    move-result v22

    add-int v22, v22, v9

    add-int v22, v22, v20

    iget-object v9, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    aget v9, v9, v2

    add-int v9, v22, v9

    .line 292
    invoke-direct {v0, v15, v13, v14}, Lorg/spongycastle/crypto/digests/SM3Digest;->GG0(III)I

    move-result v20

    add-int v20, v20, v19

    add-int v20, v20, v21

    iget-object v3, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    aget v3, v3, v2

    add-int v3, v20, v3

    shl-int/lit8 v19, v5, 0x9

    ushr-int/lit8 v5, v5, 0x17

    or-int v5, v19, v5

    shl-int/lit8 v19, v13, 0x13

    ushr-int/lit8 v13, v13, 0xd

    or-int v13, v19, v13

    .line 300
    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v14

    move v14, v13

    move v13, v15

    move v15, v3

    const/16 v3, 0x10

    move/from16 v23, v11

    move v11, v5

    move v5, v7

    move v7, v9

    move/from16 v9, v23

    goto :goto_3

    :cond_3
    move v3, v5

    move v5, v7

    move v7, v9

    move v9, v11

    move v11, v13

    move v13, v15

    const/16 v2, 0x10

    :goto_4
    if-ge v2, v4, :cond_4

    shl-int/lit8 v15, v5, 0xc

    ushr-int/lit8 v20, v5, 0x14

    or-int v15, v15, v20

    add-int v20, v15, v13

    .line 307
    sget-object v21, Lorg/spongycastle/crypto/digests/SM3Digest;->T:[I

    aget v21, v21, v2

    add-int v20, v20, v21

    shl-int/lit8 v21, v20, 0x7

    ushr-int/lit8 v20, v20, 0x19

    or-int v20, v21, v20

    xor-int v15, v20, v15

    .line 310
    invoke-direct {v0, v5, v3, v9}, Lorg/spongycastle/crypto/digests/SM3Digest;->FF1(III)I

    move-result v21

    add-int v21, v21, v7

    add-int v21, v21, v15

    iget-object v7, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W1:[I

    aget v7, v7, v2

    add-int v7, v21, v7

    .line 311
    invoke-direct {v0, v13, v11, v14}, Lorg/spongycastle/crypto/digests/SM3Digest;->GG1(III)I

    move-result v15

    add-int v15, v15, v19

    add-int v15, v15, v20

    iget-object v4, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->W:[I

    aget v4, v4, v2

    add-int/2addr v15, v4

    shl-int/lit8 v4, v3, 0x9

    ushr-int/lit8 v3, v3, 0x17

    or-int/2addr v3, v4

    shl-int/lit8 v4, v11, 0x13

    ushr-int/lit8 v11, v11, 0xd

    or-int/2addr v4, v11

    .line 319
    invoke-direct {v0, v15}, Lorg/spongycastle/crypto/digests/SM3Digest;->P0(I)I

    move-result v11

    add-int/lit8 v2, v2, 0x1

    move/from16 v19, v14

    move v14, v4

    const/16 v4, 0x40

    move/from16 v23, v9

    move v9, v3

    move v3, v5

    move v5, v7

    move/from16 v7, v23

    move/from16 v24, v13

    move v13, v11

    move/from16 v11, v24

    goto :goto_4

    .line 322
    :cond_4
    iget-object v2, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    aget v4, v2, v1

    xor-int/2addr v4, v5

    aput v4, v2, v1

    .line 323
    aget v4, v2, v6

    xor-int/2addr v3, v4

    aput v3, v2, v6

    .line 324
    aget v3, v2, v8

    xor-int/2addr v3, v9

    aput v3, v2, v8

    .line 325
    aget v3, v2, v10

    xor-int/2addr v3, v7

    aput v3, v2, v10

    .line 326
    aget v3, v2, v12

    xor-int/2addr v3, v13

    aput v3, v2, v12

    const/4 v3, 0x5

    .line 327
    aget v4, v2, v3

    xor-int/2addr v4, v11

    aput v4, v2, v3

    .line 328
    aget v3, v2, v16

    xor-int/2addr v3, v14

    aput v3, v2, v16

    .line 329
    aget v3, v2, v18

    xor-int v3, v3, v19

    aput v3, v2, v18

    .line 331
    iput v1, v0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method protected processLength(J)V
    .locals 4

    .line 163
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-le v0, v2, :cond_0

    .line 166
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 167
    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    .line 169
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->processBlock()V

    .line 172
    :cond_0
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    if-ge v0, v2, :cond_1

    .line 174
    iget-object v3, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 175
    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    aput v3, v1, v0

    .line 180
    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    long-to-int p2, p1

    aput p2, v1, v0

    return-void
.end method

.method protected processWord([BI)V
    .locals 3

    .line 147
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 152
    iget-object p2, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->inwords:[I

    iget v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 153
    iput v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    .line 155
    iget p1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    if-lt p1, v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SM3Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 107
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->reset()V

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->V:[I

    const/4 v1, 0x0

    const v2, 0x7380166f

    aput v2, v0, v1

    const/4 v2, 0x1

    const v3, 0x4914b2b9

    .line 110
    aput v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x172442d7

    .line 111
    aput v3, v0, v2

    const/4 v2, 0x3

    const v3, -0x2575fa00

    .line 112
    aput v3, v0, v2

    const/4 v2, 0x4

    const v3, -0x5690cf44

    .line 113
    aput v3, v0, v2

    const/4 v2, 0x5

    const v3, 0x163138aa

    .line 114
    aput v3, v0, v2

    const/4 v2, 0x6

    const v3, -0x1c7211b3

    .line 115
    aput v3, v0, v2

    const/4 v2, 0x7

    const v3, -0x4f04f1b2

    .line 116
    aput v3, v0, v2

    .line 118
    iput v1, p0, Lorg/spongycastle/crypto/digests/SM3Digest;->xOff:I

    return-void
.end method

.method public reset(Lorg/spongycastle/util/Memoable;)V
    .locals 0

    .line 95
    check-cast p1, Lorg/spongycastle/crypto/digests/SM3Digest;

    .line 97
    invoke-super {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 98
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/SM3Digest;->copyIn(Lorg/spongycastle/crypto/digests/SM3Digest;)V

    return-void
.end method
