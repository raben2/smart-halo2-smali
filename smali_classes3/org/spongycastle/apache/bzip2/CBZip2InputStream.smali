.class public Lorg/spongycastle/apache/bzip2/CBZip2InputStream;
.super Ljava/io/InputStream;
.source "CBZip2InputStream.java"

# interfaces
.implements Lorg/spongycastle/apache/bzip2/BZip2Constants;


# static fields
.field private static final NO_RAND_PART_A_STATE:I = 0x5

.field private static final NO_RAND_PART_B_STATE:I = 0x6

.field private static final NO_RAND_PART_C_STATE:I = 0x7

.field private static final RAND_PART_A_STATE:I = 0x2

.field private static final RAND_PART_B_STATE:I = 0x3

.field private static final RAND_PART_C_STATE:I = 0x4

.field private static final START_BLOCK_STATE:I = 0x1


# instance fields
.field private base:[[I

.field private blockRandomised:Z

.field private blockSize100k:I

.field private bsBuff:I

.field private bsLive:I

.field private bsStream:Ljava/io/InputStream;

.field ch2:I

.field chPrev:I

.field private computedBlockCRC:I

.field private computedCombinedCRC:I

.field count:I

.field private currentChar:I

.field private currentState:I

.field i:I

.field i2:I

.field private inUse:[Z

.field j2:I

.field private last:I

.field private limit:[[I

.field private ll8:[C

.field private mCrc:Lorg/spongycastle/apache/bzip2/CRC;

.field private minLens:[I

.field private nInUse:I

.field private origPtr:I

.field private perm:[[I

.field rNToGo:I

.field rTPos:I

.field private selector:[C

.field private selectorMtf:[C

.field private seqToUnseq:[C

.field private storedBlockCRC:I

.field private storedCombinedCRC:I

.field private streamEnd:Z

.field tPos:I

.field private tt:[I

.field private unseqToSeq:[C

.field private unzftab:[I

.field z:C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 89
    new-instance v0, Lorg/spongycastle/apache/bzip2/CRC;

    invoke-direct {v0}, Lorg/spongycastle/apache/bzip2/CRC;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->mCrc:Lorg/spongycastle/apache/bzip2/CRC;

    const/16 v0, 0x100

    .line 91
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->inUse:[Z

    .line 94
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->seqToUnseq:[C

    .line 95
    new-array v1, v0, [C

    iput-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->unseqToSeq:[C

    const/16 v1, 0x4652

    .line 97
    new-array v2, v1, [C

    iput-object v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selector:[C

    .line 98
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selectorMtf:[C

    .line 107
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->unzftab:[I

    const/16 v0, 0x102

    const/4 v1, 0x6

    .line 109
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->limit:[[I

    .line 110
    filled-new-array {v1, v0}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->base:[[I

    .line 111
    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v2, I

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->perm:[[I

    .line 112
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->minLens:[I

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->streamEnd:Z

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentChar:I

    const/4 v1, 0x1

    .line 128
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 135
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    .line 136
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    .line 144
    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    .line 145
    invoke-direct {p0, p1}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsSetStream(Ljava/io/InputStream;)V

    .line 146
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->initialize()V

    .line 147
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->initBlock()V

    .line 148
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupBlock()V

    return-void
.end method

.method private static badBlockHeader()V
    .locals 0

    .line 266
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->cadvise()V

    return-void
.end method

.method private static blockOverrun()V
    .locals 0

    .line 262
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->cadvise()V

    return-void
.end method

.method private bsFinishedWithStream()V
    .locals 2

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_0

    .line 277
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private bsGetInt32()I
    .locals 1

    .line 333
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetint()I

    move-result v0

    return v0
.end method

.method private bsGetIntVS(I)I
    .locals 0

    .line 329
    invoke-direct {p0, p1}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result p1

    return p1
.end method

.method private bsGetUChar()C
    .locals 1

    const/16 v0, 0x8

    .line 316
    invoke-direct {p0, v0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method private bsGetint()I
    .locals 3

    const/16 v0, 0x8

    .line 321
    invoke-direct {p0, v0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v1

    const/4 v2, 0x0

    or-int/2addr v1, v2

    shl-int/2addr v1, v0

    .line 322
    invoke-direct {p0, v0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v0

    .line 323
    invoke-direct {p0, v0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v2

    or-int/2addr v1, v2

    shl-int/2addr v1, v0

    .line 324
    invoke-direct {p0, v0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    or-int/2addr v0, v1

    return v0
.end method

.method private bsR(I)I
    .locals 4

    .line 294
    :goto_0
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    if-ge v0, p1, :cond_1

    const/4 v0, 0x0

    .line 298
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v0, v0

    goto :goto_1

    .line 300
    :catch_0
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->compressedStreamEOF()V

    :goto_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 303
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->compressedStreamEOF()V

    .line 306
    :cond_0
    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    .line 307
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    goto :goto_0

    .line 310
    :cond_1
    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    sub-int v2, v0, p1

    shr-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int v3, v2, p1

    sub-int/2addr v3, v2

    and-int/2addr v1, v3

    sub-int/2addr v0, p1

    .line 311
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    return v1
.end method

.method private bsSetStream(Ljava/io/InputStream;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    .line 289
    iput p1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    return-void
.end method

.method private static cadvise()V
    .locals 2

    .line 40
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CRC Error"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private complete()V
    .locals 2

    .line 252
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetInt32()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->storedCombinedCRC:I

    .line 253
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->storedCombinedCRC:I

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    if-eq v0, v1, :cond_0

    .line 254
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->crcError()V

    .line 257
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsFinishedWithStream()V

    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->streamEnd:Z

    return-void
.end method

.method private static compressedStreamEOF()V
    .locals 0

    .line 53
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->cadvise()V

    return-void
.end method

.method private static crcError()V
    .locals 0

    .line 270
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->cadvise()V

    return-void
.end method

.method private endBlock()V
    .locals 2

    .line 240
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->mCrc:Lorg/spongycastle/apache/bzip2/CRC;

    invoke-virtual {v0}, Lorg/spongycastle/apache/bzip2/CRC;->getFinalCRC()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedBlockCRC:I

    .line 242
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->storedBlockCRC:I

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedBlockCRC:I

    if-eq v0, v1, :cond_0

    .line 243
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->crcError()V

    .line 246
    :cond_0
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    shl-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1f

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    .line 248
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedBlockCRC:I

    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    return-void
.end method

.method private getAndMoveToFrontDecode()V
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x100

    .line 474
    new-array v1, v1, [C

    .line 478
    iget v2, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockSize100k:I

    const v3, 0x186a0

    mul-int v2, v2, v3

    const/16 v3, 0x18

    .line 479
    invoke-direct {v0, v3}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetIntVS(I)I

    move-result v3

    iput v3, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->origPtr:I

    .line 481
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->recvDecodingTables()V

    .line 482
    iget v3, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->nInUse:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0xff

    if-gt v6, v7, :cond_0

    .line 493
    iget-object v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->unzftab:[I

    aput v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-gt v6, v7, :cond_1

    int-to-char v8, v6

    .line 497
    aput-char v8, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, -0x1

    .line 500
    iput v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    const/16 v8, 0x31

    .line 509
    iget-object v9, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selector:[C

    aget-char v9, v9, v5

    .line 510
    iget-object v10, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->minLens:[I

    aget v10, v10, v9

    .line 511
    invoke-direct {v0, v10}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v11

    .line 512
    :goto_2
    iget-object v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->limit:[[I

    aget-object v12, v12, v9

    aget v12, v12, v10

    if-le v11, v12, :cond_4

    add-int/lit8 v10, v10, 0x1

    .line 516
    :goto_3
    iget v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    if-ge v12, v4, :cond_3

    .line 520
    :try_start_0
    iget-object v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v12, v12

    goto :goto_4

    .line 522
    :catch_0
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->compressedStreamEOF()V

    const/4 v12, 0x0

    :goto_4
    if-ne v12, v6, :cond_2

    .line 525
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->compressedStreamEOF()V

    .line 528
    :cond_2
    iget v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    shl-int/lit8 v13, v13, 0x8

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v12, v13

    iput v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    .line 529
    iget v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    add-int/lit8 v12, v12, 0x8

    iput v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    goto :goto_3

    .line 532
    :cond_3
    iget v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    add-int/lit8 v14, v12, -0x1

    shr-int/2addr v13, v14

    and-int/2addr v13, v4

    add-int/lit8 v12, v12, -0x1

    .line 533
    iput v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    shl-int/lit8 v11, v11, 0x1

    or-int/2addr v11, v13

    goto :goto_2

    .line 537
    :cond_4
    iget-object v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->perm:[[I

    aget-object v12, v12, v9

    iget-object v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->base:[[I

    aget-object v9, v13, v9

    aget v9, v9, v10

    sub-int/2addr v11, v9

    aget v9, v12, v11

    const/4 v10, 0x0

    :goto_5
    if-ne v9, v3, :cond_5

    return-void

    :cond_5
    const/16 v11, 0x32

    if-eqz v9, :cond_d

    if-ne v9, v4, :cond_6

    goto/16 :goto_b

    .line 612
    :cond_6
    iget v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    add-int/2addr v12, v4

    iput v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    .line 613
    iget v12, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    if-lt v12, v2, :cond_7

    .line 614
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockOverrun()V

    :cond_7
    add-int/lit8 v9, v9, -0x1

    .line 617
    aget-char v12, v1, v9

    .line 618
    iget-object v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->unzftab:[I

    iget-object v14, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->seqToUnseq:[C

    aget-char v15, v14, v12

    aget v16, v13, v15

    add-int/lit8 v16, v16, 0x1

    aput v16, v13, v15

    .line 619
    iget-object v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    iget v15, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    aget-char v14, v14, v12

    aput-char v14, v13, v15

    :goto_6
    const/4 v13, 0x3

    if-le v9, v13, :cond_8

    add-int/lit8 v13, v9, -0x1

    .line 630
    aget-char v14, v1, v13

    aput-char v14, v1, v9

    add-int/lit8 v14, v9, -0x2

    .line 631
    aget-char v15, v1, v14

    aput-char v15, v1, v13

    add-int/lit8 v13, v9, -0x3

    .line 632
    aget-char v15, v1, v13

    aput-char v15, v1, v14

    add-int/lit8 v14, v9, -0x4

    .line 633
    aget-char v14, v1, v14

    aput-char v14, v1, v13

    add-int/lit8 v9, v9, -0x4

    goto :goto_6

    :cond_8
    :goto_7
    if-lez v9, :cond_9

    add-int/lit8 v13, v9, -0x1

    .line 636
    aget-char v13, v1, v13

    aput-char v13, v1, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    :cond_9
    aput-char v12, v1, v5

    if-nez v8, :cond_a

    add-int/lit8 v10, v10, 0x1

    const/16 v8, 0x32

    :cond_a
    add-int/2addr v8, v6

    .line 647
    iget-object v9, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selector:[C

    aget-char v9, v9, v10

    .line 648
    iget-object v11, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->minLens:[I

    aget v11, v11, v9

    .line 649
    invoke-direct {v0, v11}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v12

    .line 650
    :goto_8
    iget-object v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->limit:[[I

    aget-object v13, v13, v9

    aget v13, v13, v11

    if-le v12, v13, :cond_c

    add-int/lit8 v11, v11, 0x1

    .line 654
    :goto_9
    iget v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    if-ge v13, v4, :cond_b

    .line 658
    :try_start_1
    iget-object v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-char v13, v13

    goto :goto_a

    .line 660
    :catch_1
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->compressedStreamEOF()V

    const/4 v13, 0x0

    .line 663
    :goto_a
    iget v14, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    shl-int/lit8 v14, v14, 0x8

    and-int/2addr v13, v7

    or-int/2addr v13, v14

    iput v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    .line 664
    iget v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    add-int/lit8 v13, v13, 0x8

    iput v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    goto :goto_9

    .line 667
    :cond_b
    iget v14, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    add-int/lit8 v15, v13, -0x1

    shr-int/2addr v14, v15

    and-int/2addr v14, v4

    add-int/lit8 v13, v13, -0x1

    .line 668
    iput v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    shl-int/lit8 v12, v12, 0x1

    or-int/2addr v12, v14

    goto :goto_8

    .line 672
    :cond_c
    iget-object v13, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->perm:[[I

    aget-object v13, v13, v9

    iget-object v14, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->base:[[I

    aget-object v9, v14, v9

    aget v9, v9, v11

    sub-int/2addr v12, v9

    aget v9, v13, v12

    goto/16 :goto_5

    :cond_d
    :goto_b
    move v12, v8

    move v13, v10

    const/4 v8, -0x1

    const/4 v10, 0x1

    :goto_c
    if-nez v9, :cond_e

    mul-int/lit8 v9, v10, 0x1

    add-int/2addr v8, v9

    goto :goto_d

    :cond_e
    if-ne v9, v4, :cond_f

    mul-int/lit8 v9, v10, 0x2

    add-int/2addr v8, v9

    :cond_f
    :goto_d
    mul-int/lit8 v10, v10, 0x2

    if-nez v12, :cond_10

    add-int/lit8 v13, v13, 0x1

    const/16 v12, 0x32

    :cond_10
    add-int/2addr v12, v6

    .line 564
    iget-object v9, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selector:[C

    aget-char v9, v9, v13

    .line 565
    iget-object v14, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->minLens:[I

    aget v14, v14, v9

    .line 566
    invoke-direct {v0, v14}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v15

    .line 567
    :goto_e
    iget-object v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->limit:[[I

    aget-object v7, v7, v9

    aget v7, v7, v14

    if-le v15, v7, :cond_13

    add-int/lit8 v14, v14, 0x1

    .line 571
    :goto_f
    iget v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    if-ge v7, v4, :cond_12

    .line 575
    :try_start_2
    iget-object v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsStream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    int-to-char v7, v7

    goto :goto_10

    .line 577
    :catch_2
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->compressedStreamEOF()V

    const/4 v7, 0x0

    :goto_10
    if-ne v7, v6, :cond_11

    .line 580
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->compressedStreamEOF()V

    .line 583
    :cond_11
    iget v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    shl-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    iput v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    .line 584
    iget v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    add-int/lit8 v6, v6, 0x8

    iput v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    const/4 v6, -0x1

    goto :goto_f

    .line 587
    :cond_12
    iget v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsBuff:I

    add-int/lit8 v17, v7, -0x1

    shr-int v6, v6, v17

    and-int/2addr v6, v4

    add-int/lit8 v7, v7, -0x1

    .line 588
    iput v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsLive:I

    shl-int/lit8 v7, v15, 0x1

    or-int v15, v7, v6

    const/4 v6, -0x1

    goto :goto_e

    .line 592
    :cond_13
    iget-object v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->perm:[[I

    aget-object v6, v6, v9

    iget-object v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->base:[[I

    aget-object v7, v7, v9

    aget v7, v7, v14

    sub-int/2addr v15, v7

    aget v9, v6, v15

    if-eqz v9, :cond_16

    if-eq v9, v4, :cond_16

    add-int/lit8 v8, v8, 0x1

    .line 597
    iget-object v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->seqToUnseq:[C

    aget-char v7, v1, v5

    aget-char v6, v6, v7

    .line 598
    iget-object v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->unzftab:[I

    aget v10, v7, v6

    add-int/2addr v10, v8

    aput v10, v7, v6

    :goto_11
    if-lez v8, :cond_14

    .line 601
    iget v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    add-int/2addr v7, v4

    iput v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    .line 602
    iget-object v7, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    iget v10, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    aput-char v6, v7, v10

    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    .line 606
    :cond_14
    iget v6, v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    if-lt v6, v2, :cond_15

    .line 607
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockOverrun()V

    :cond_15
    move v8, v12

    move v10, v13

    const/4 v6, -0x1

    const/16 v7, 0xff

    goto/16 :goto_5

    :cond_16
    const/4 v6, -0x1

    const/16 v7, 0xff

    goto/16 :goto_c
.end method

.method private hbCreateDecodeTables([I[I[I[CIII)V
    .locals 5

    const/4 v0, 0x0

    move v1, p5

    const/4 v2, 0x0

    :goto_0
    if-gt v1, p6, :cond_2

    move v3, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p7, :cond_1

    .line 344
    aget-char v4, p4, v2

    if-ne v4, v1, :cond_0

    .line 345
    aput v2, p3, v3

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_2
    const/16 v1, 0x17

    if-ge p3, v1, :cond_3

    .line 352
    aput v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    const/4 p3, 0x0

    :goto_3
    const/4 v2, 0x1

    if-ge p3, p7, :cond_4

    .line 355
    aget-char v3, p4, p3

    add-int/2addr v3, v2

    aget v4, p2, v3

    add-int/2addr v4, v2

    aput v4, p2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_4
    const/4 p3, 0x1

    :goto_4
    if-ge p3, v1, :cond_5

    .line 359
    aget p4, p2, p3

    add-int/lit8 p7, p3, -0x1

    aget p7, p2, p7

    add-int/2addr p4, p7

    aput p4, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_5
    const/4 p3, 0x0

    :goto_5
    if-ge p3, v1, :cond_6

    .line 363
    aput v0, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_6
    move p3, p5

    :goto_6
    if-gt p3, p6, :cond_7

    add-int/lit8 p4, p3, 0x1

    .line 368
    aget p7, p2, p4

    aget v1, p2, p3

    sub-int/2addr p7, v1

    add-int/2addr v0, p7

    add-int/lit8 p7, v0, -0x1

    .line 369
    aput p7, p1, p3

    shl-int/2addr v0, v2

    move p3, p4

    goto :goto_6

    :cond_7
    add-int/2addr p5, v2

    :goto_7
    if-gt p5, p6, :cond_8

    add-int/lit8 p3, p5, -0x1

    .line 373
    aget p3, p1, p3

    add-int/2addr p3, v2

    shl-int/2addr p3, v2

    aget p4, p2, p5

    sub-int/2addr p3, p4

    aput p3, p2, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_7

    :cond_8
    return-void
.end method

.method private initBlock()V
    .locals 8

    .line 205
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v0

    .line 206
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v1

    .line 207
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v2

    .line 208
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v3

    .line 209
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v4

    .line 210
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v5

    const/16 v6, 0x17

    if-ne v0, v6, :cond_0

    const/16 v6, 0x72

    if-ne v1, v6, :cond_0

    const/16 v6, 0x45

    if-ne v2, v6, :cond_0

    const/16 v6, 0x38

    if-ne v3, v6, :cond_0

    const/16 v6, 0x50

    if-ne v4, v6, :cond_0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_0

    .line 213
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->complete()V

    return-void

    :cond_0
    const/16 v6, 0x31

    const/4 v7, 0x1

    if-ne v0, v6, :cond_3

    const/16 v0, 0x41

    if-ne v1, v0, :cond_3

    const/16 v0, 0x59

    if-ne v2, v0, :cond_3

    const/16 v1, 0x26

    if-ne v3, v1, :cond_3

    const/16 v1, 0x53

    if-ne v4, v1, :cond_3

    if-eq v5, v0, :cond_1

    goto :goto_1

    .line 224
    :cond_1
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetInt32()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->storedBlockCRC:I

    .line 226
    invoke-direct {p0, v7}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 227
    iput-boolean v7, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockRandomised:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockRandomised:Z

    .line 233
    :goto_0
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->getAndMoveToFrontDecode()V

    .line 235
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->mCrc:Lorg/spongycastle/apache/bzip2/CRC;

    invoke-virtual {v0}, Lorg/spongycastle/apache/bzip2/CRC;->initialiseCRC()V

    .line 236
    iput v7, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    return-void

    .line 219
    :cond_3
    :goto_1
    invoke-static {}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->badBlockHeader()V

    .line 220
    iput-boolean v7, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->streamEnd:Z

    return-void
.end method

.method private initialize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v0

    .line 185
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v1

    const/16 v2, 0x42

    if-eq v0, v2, :cond_1

    const/16 v0, 0x5a

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a BZIP2 marked stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v0

    .line 191
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsGetUChar()C

    move-result v1

    const/16 v2, 0x68

    if-ne v0, v2, :cond_3

    const/16 v0, 0x31

    if-lt v1, v0, :cond_3

    const/16 v0, 0x39

    if-le v1, v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x30

    .line 198
    invoke-direct {p0, v1}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setDecompressStructureSizes(I)V

    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->computedCombinedCRC:I

    return-void

    .line 193
    :cond_3
    :goto_1
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsFinishedWithStream()V

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->streamEnd:Z

    return-void
.end method

.method private makeMaps()V
    .locals 4

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->nInUse:I

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->inUse:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->seqToUnseq:[C

    iget v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->nInUse:I

    int-to-char v3, v0

    aput-char v3, v1, v2

    .line 62
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->unseqToSeq:[C

    int-to-char v3, v2

    aput-char v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    .line 63
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->nInUse:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private recvDecodingTables()V
    .locals 15

    const/4 v0, 0x6

    const/16 v1, 0x102

    .line 378
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v2, C

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[C

    const/16 v2, 0x10

    .line 381
    new-array v3, v2, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_1

    .line 385
    invoke-direct {p0, v6}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v7

    if-ne v7, v6, :cond_0

    .line 386
    aput-boolean v6, v3, v5

    goto :goto_1

    .line 388
    :cond_0
    aput-boolean v4, v3, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0x100

    if-ge v5, v7, :cond_2

    .line 393
    iget-object v7, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->inUse:[Z

    aput-boolean v4, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_5

    .line 397
    aget-boolean v7, v3, v5

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_4

    .line 399
    invoke-direct {p0, v6}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v8

    if-ne v8, v6, :cond_3

    .line 400
    iget-object v8, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->inUse:[Z

    mul-int/lit8 v9, v5, 0x10

    add-int/2addr v9, v7

    aput-boolean v6, v8, v9

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 406
    :cond_5
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->makeMaps()V

    .line 407
    iget v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->nInUse:I

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x3

    .line 410
    invoke-direct {p0, v3}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v3

    const/16 v5, 0xf

    .line 411
    invoke-direct {p0, v5}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v5

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v5, :cond_7

    const/4 v8, 0x0

    .line 414
    :goto_6
    invoke-direct {p0, v6}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v9

    if-ne v9, v6, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 417
    :cond_6
    iget-object v9, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selectorMtf:[C

    int-to-char v8, v8

    aput-char v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 422
    :cond_7
    new-array v0, v0, [C

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v3, :cond_8

    .line 425
    aput-char v7, v0, v7

    add-int/lit8 v7, v7, 0x1

    int-to-char v7, v7

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_a

    .line 429
    iget-object v8, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selectorMtf:[C

    aget-char v8, v8, v7

    .line 430
    aget-char v9, v0, v8

    :goto_9
    if-lez v8, :cond_9

    add-int/lit8 v10, v8, -0x1

    .line 432
    aget-char v11, v0, v10

    aput-char v11, v0, v8

    int-to-char v8, v10

    goto :goto_9

    :cond_9
    aput-char v9, v0, v4

    .line 436
    iget-object v8, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->selector:[C

    aput-char v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_a
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_e

    const/4 v5, 0x5

    .line 442
    invoke-direct {p0, v5}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v5

    move v7, v5

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_d

    .line 444
    :goto_c
    invoke-direct {p0, v6}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v8

    if-ne v8, v6, :cond_c

    .line 445
    invoke-direct {p0, v6}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->bsR(I)I

    move-result v8

    if-nez v8, :cond_b

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .line 451
    :cond_c
    aget-object v8, v1, v0

    int-to-char v9, v7

    aput-char v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_12

    const/16 v5, 0x20

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v13, 0x0

    :goto_e
    if-ge v5, v2, :cond_11

    .line 460
    aget-object v7, v1, v0

    aget-char v7, v7, v5

    if-le v7, v13, :cond_f

    .line 461
    aget-object v7, v1, v0

    aget-char v7, v7, v5

    move v13, v7

    .line 463
    :cond_f
    aget-object v7, v1, v0

    aget-char v7, v7, v5

    if-ge v7, v6, :cond_10

    .line 464
    aget-object v6, v1, v0

    aget-char v6, v6, v5

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 467
    :cond_11
    iget-object v5, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->limit:[[I

    aget-object v8, v5, v0

    iget-object v5, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->base:[[I

    aget-object v9, v5, v0

    iget-object v5, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->perm:[[I

    aget-object v10, v5, v0

    aget-object v11, v1, v0

    move-object v7, p0

    move v12, v6

    move v14, v2

    invoke-direct/range {v7 .. v14}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->hbCreateDecodeTables([I[I[I[CIII)V

    .line 469
    iget-object v5, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->minLens:[I

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_12
    return-void
.end method

.method private setDecompressStructureSizes(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 832
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockSize100k:I

    .line 837
    :cond_0
    iput p1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockSize100k:I

    if-nez p1, :cond_1

    return-void

    :cond_1
    const v0, 0x186a0

    mul-int p1, p1, v0

    .line 844
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    .line 845
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    return-void
.end method

.method private setupBlock()V
    .locals 8

    const/16 v0, 0x101

    .line 680
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 684
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    :goto_0
    iget v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    const/16 v4, 0x100

    if-gt v3, v4, :cond_0

    .line 685
    iget-object v4, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->unzftab:[I

    add-int/lit8 v5, v3, -0x1

    aget v4, v4, v5

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 684
    iput v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    goto :goto_0

    .line 687
    :cond_0
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    :goto_1
    iget v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    if-gt v3, v4, :cond_1

    .line 688
    aget v5, v0, v3

    add-int/lit8 v6, v3, -0x1

    aget v6, v0, v6

    add-int/2addr v5, v6

    aput v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 687
    iput v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    goto :goto_1

    .line 691
    :cond_1
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    :goto_2
    iget v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    iget v5, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    if-gt v3, v5, :cond_2

    .line 692
    iget-object v5, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    aget-char v5, v5, v3

    .line 693
    iget-object v6, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    aget v7, v0, v5

    aput v3, v6, v7

    .line 694
    aget v6, v0, v5

    add-int/2addr v6, v2

    aput v6, v0, v5

    add-int/lit8 v3, v3, 0x1

    .line 691
    iput v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i:I

    goto :goto_2

    .line 698
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    iget v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->origPtr:I

    aget v0, v0, v2

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    .line 700
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    .line 701
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    .line 702
    iput v4, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    .line 704
    iget-boolean v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->blockRandomised:Z

    if-eqz v0, :cond_3

    .line 705
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    .line 706
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    .line 707
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupRandPartA()V

    goto :goto_3

    .line 709
    :cond_3
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    :goto_3
    return-void
.end method

.method private setupNoRandPartA()V
    .locals 3

    .line 740
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    if-gt v0, v1, :cond_0

    .line 741
    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->chPrev:I

    .line 742
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    iget v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    aget-char v1, v1, v2

    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    .line 743
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    aget v1, v1, v2

    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    add-int/lit8 v0, v0, 0x1

    .line 744
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    .line 746
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentChar:I

    const/4 v1, 0x6

    .line 747
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 748
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->mCrc:Lorg/spongycastle/apache/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/spongycastle/apache/bzip2/CRC;->updateCRC(I)V

    goto :goto_0

    .line 750
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->endBlock()V

    .line 751
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->initBlock()V

    .line 752
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupBlock()V

    :goto_0
    return-void
.end method

.method private setupNoRandPartB()V
    .locals 4

    .line 799
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->chPrev:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 800
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 801
    iput v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    .line 802
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    goto :goto_0

    .line 804
    :cond_0
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    .line 805
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 806
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    aget-char v0, v0, v1

    iput-char v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->z:C

    .line 807
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    const/4 v0, 0x7

    .line 808
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    const/4 v0, 0x0

    .line 809
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    .line 810
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupNoRandPartC()V

    goto :goto_0

    .line 812
    :cond_1
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 813
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    :goto_0
    return-void
.end method

.method private setupNoRandPartC()V
    .locals 2

    .line 819
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    iget-char v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->z:C

    if-ge v0, v1, :cond_0

    .line 820
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentChar:I

    .line 821
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->mCrc:Lorg/spongycastle/apache/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/spongycastle/apache/bzip2/CRC;->updateCRC(I)V

    .line 822
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 824
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 825
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    const/4 v0, 0x0

    .line 826
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    .line 827
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupNoRandPartA()V

    :goto_0
    return-void
.end method

.method private setupRandPartA()V
    .locals 4

    .line 714
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->last:I

    if-gt v0, v1, :cond_2

    .line 715
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->chPrev:I

    .line 716
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    aget-char v0, v0, v1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    .line 717
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    aget v0, v0, v1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    .line 718
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 719
    sget-object v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNums:[I

    iget v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    aget v0, v0, v3

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    add-int/2addr v3, v2

    .line 720
    iput v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    .line 721
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    const/16 v3, 0x200

    if-ne v0, v3, :cond_0

    .line 722
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    .line 725
    :cond_0
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    .line 726
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iget v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    if-ne v3, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    xor-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    .line 727
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    .line 729
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentChar:I

    const/4 v1, 0x3

    .line 730
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 731
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->mCrc:Lorg/spongycastle/apache/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/spongycastle/apache/bzip2/CRC;->updateCRC(I)V

    goto :goto_0

    .line 733
    :cond_2
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->endBlock()V

    .line 734
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->initBlock()V

    .line 735
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupBlock()V

    :goto_0
    return-void
.end method

.method private setupRandPartB()V
    .locals 5

    .line 757
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->chPrev:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 758
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 759
    iput v3, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    .line 760
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupRandPartA()V

    goto :goto_1

    .line 762
    :cond_0
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    .line 763
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 764
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ll8:[C

    iget v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    aget-char v0, v0, v2

    iput-char v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->z:C

    .line 765
    iget-object v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tt:[I

    aget v0, v0, v2

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->tPos:I

    .line 766
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 767
    sget-object v0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNums:[I

    iget v4, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    aget v0, v0, v4

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    add-int/2addr v4, v3

    .line 768
    iput v4, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    .line 769
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    const/16 v4, 0x200

    if-ne v0, v4, :cond_1

    .line 770
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rTPos:I

    .line 773
    :cond_1
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    .line 774
    iget-char v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->z:C

    iget v4, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->rNToGo:I

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    xor-int/2addr v0, v3

    int-to-char v0, v0

    iput-char v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->z:C

    .line 775
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    .line 776
    iput v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 777
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupRandPartC()V

    goto :goto_1

    .line 779
    :cond_3
    iput v2, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 780
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupRandPartA()V

    :goto_1
    return-void
.end method

.method private setupRandPartC()V
    .locals 2

    .line 786
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    iget-char v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->z:C

    if-ge v0, v1, :cond_0

    .line 787
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->ch2:I

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentChar:I

    .line 788
    iget-object v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->mCrc:Lorg/spongycastle/apache/bzip2/CRC;

    invoke-virtual {v1, v0}, Lorg/spongycastle/apache/bzip2/CRC;->updateCRC(I)V

    .line 789
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->j2:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 791
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    .line 792
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->i2:I

    const/4 v0, 0x0

    .line 793
    iput v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->count:I

    .line 794
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupRandPartA()V

    :goto_0
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2

    .line 152
    iget-boolean v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->streamEnd:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 155
    :cond_0
    iget v0, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentChar:I

    .line 156
    iget v1, p0, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->currentState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 173
    :pswitch_0
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupNoRandPartC()V

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupNoRandPartB()V

    goto :goto_0

    .line 165
    :pswitch_2
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupRandPartC()V

    goto :goto_0

    .line 162
    :pswitch_3
    invoke-direct {p0}, Lorg/spongycastle/apache/bzip2/CBZip2InputStream;->setupRandPartB()V

    :goto_0
    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
