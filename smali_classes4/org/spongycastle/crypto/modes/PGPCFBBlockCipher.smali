.class public Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;
.super Ljava/lang/Object;
.source "PGPCFBBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/BlockCipher;


# instance fields
.field private FR:[B

.field private FRE:[B

.field private IV:[B

.field private blockSize:I

.field private cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private count:I

.field private forEncryption:Z

.field private inlineIv:Z

.field private tmp:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;Z)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 40
    iput-boolean p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    .line 42
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    .line 43
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    new-array p2, p1, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    .line 44
    new-array p2, p1, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    .line 45
    new-array p2, p1, [B

    iput-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    .line 46
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 430
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_3

    add-int/2addr v0, p4

    .line 434
    array-length v1, p3

    if-gt v0, v1, :cond_2

    .line 439
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    .line 440
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_0

    add-int v1, p4, v0

    add-int v2, p2, v0

    .line 442
    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_0
    :goto_1
    iget p3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v3, p3, :cond_1

    .line 447
    iget-object p3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int p4, p2, v3

    aget-byte p4, p1, p4

    aput-byte p4, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return p3

    .line 436
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private decryptBlockWithIV([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 299
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_7

    add-int v1, p4, v0

    .line 303
    array-length v2, p3

    if-gt v1, v2, :cond_6

    .line 308
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 p3, 0x0

    .line 310
    :goto_0
    iget p4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge p3, p4, :cond_0

    .line 312
    iget-object p4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int v0, p2, p3

    aget-byte v0, p1, v0

    aput-byte v0, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {p1, p2, v2, p3, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 317
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    return v2

    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v0, :cond_3

    .line 324
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    sub-int/2addr p2, v4

    invoke-static {p1, v4, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v0, p2, -0x2

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte v5, v1, v2

    aput-byte v5, p1, v0

    sub-int/2addr p2, v3

    .line 329
    aget-byte v0, v1, v3

    aput-byte v0, p1, p2

    .line 331
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {p2, p1, v2, v0, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 p1, 0x0

    .line 333
    :goto_1
    iget p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_2

    add-int p2, p4, p1

    .line 335
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v1, p1, 0x2

    aget-byte v0, v0, v1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 338
    :cond_2
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    sub-int/2addr p2, v4

    invoke-static {p1, v4, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    add-int/2addr p1, v4

    iput p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    .line 342
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    sub-int/2addr p1, v4

    return p1

    :cond_3
    add-int/lit8 v5, v0, 0x2

    if-lt v1, v5, :cond_5

    .line 347
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p4, 0x0

    .line 349
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte p2, p2, v2

    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v0, v4

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result p2

    aput-byte p2, p3, p1

    add-int/lit8 p1, p4, 0x1

    .line 350
    iget-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    aget-byte p2, p2, v3

    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v0, v3

    invoke-direct {p0, p2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result p2

    aput-byte p2, p3, p1

    .line 352
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    sub-int/2addr v0, v4

    invoke-static {p1, v2, p2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 354
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {p1, p2, v2, v0, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 p1, 0x0

    .line 356
    :goto_2
    iget p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_4

    add-int p2, p4, p1

    add-int/2addr p2, v4

    .line 358
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    add-int/lit8 v1, p1, 0x2

    aget-byte v0, v0, v1

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, p2

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 361
    :cond_4
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->tmp:[B

    iget-object p3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    sub-int/2addr p2, v4

    invoke-static {p1, v4, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 365
    :cond_5
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return p1

    .line 305
    :cond_6
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_7
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encryptBlock([BI[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 387
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_3

    add-int/2addr v0, p4

    .line 391
    array-length v1, p3

    if-gt v0, v1, :cond_2

    .line 396
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    .line 397
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_0

    add-int v1, p4, v0

    add-int v2, p2, v0

    .line 399
    aget-byte v2, p1, v2

    invoke-direct {p0, v2, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    :goto_1
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v3, p1, :cond_1

    .line 404
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    add-int p2, p4, v3

    aget-byte p2, p3, p2

    aput-byte p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return p1

    .line 393
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encryptBlockWithIV([BI[BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 219
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_7

    .line 224
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x2

    .line 226
    array-length v1, p3

    if-gt v0, v1, :cond_2

    .line 231
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    .line 233
    :goto_0
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_0

    add-int v1, p4, v0

    .line 235
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v3, v3, v0

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    invoke-static {p3, p4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 242
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int v1, p4, v0

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    add-int/lit8 v0, v0, -0x2

    aget-byte v0, v3, v0

    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, v1

    .line 243
    iget v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    add-int v1, p4, v0

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    sub-int/2addr v0, v3

    aget-byte v0, v4, v0

    invoke-direct {p0, v0, v3}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v0

    aput-byte v0, p3, v1

    add-int/lit8 v0, p4, 0x2

    .line 245
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    .line 249
    :goto_1
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_1

    add-int/2addr v1, p4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    add-int v3, p2, v0

    .line 251
    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x2

    .line 254
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    invoke-static {p3, p4, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    iget p2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    mul-int/lit8 p3, p2, 0x2

    add-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x2

    return p2

    .line 228
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    add-int/lit8 v3, v0, 0x2

    if-lt v1, v3, :cond_6

    add-int/2addr v0, p4

    .line 262
    array-length v1, p3

    if-gt v0, v1, :cond_5

    .line 267
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    const/4 v0, 0x0

    .line 269
    :goto_2
    iget v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    if-ge v0, v1, :cond_4

    add-int v1, p4, v0

    add-int v3, p2, v0

    .line 271
    aget-byte v3, p1, v3

    invoke-direct {p0, v3, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptByte(BI)B

    move-result v3

    aput-byte v3, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 274
    :cond_4
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    invoke-static {p3, p4, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 264
    :cond_5
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 277
    :cond_6
    :goto_3
    iget p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->blockSize:I

    return p1

    .line 221
    :cond_7
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encryptByte(BI)B
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FRE:[B

    aget-byte p2, v0, p2

    xor-int/2addr p1, p2

    int-to-byte p1, p1

    return p1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 67
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/PGPCFBwithIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/PGPCFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 156
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    .line 158
    instance-of p1, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 160
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 161
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    .line 163
    array-length v1, p1

    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_0

    .line 166
    array-length v1, v2

    array-length v3, p1

    sub-int/2addr v1, v3

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 167
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    array-length v3, v2

    array-length v5, p1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    .line 169
    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    array-length v1, v2

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 179
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->reset()V

    .line 185
    iget-object p1, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {p1, v0, p2}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    :goto_1
    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v0, :cond_1

    .line 109
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlockWithIV([BI[BI)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlockWithIV([BI[BI)I

    move-result p1

    :goto_0
    return p1

    .line 113
    :cond_1
    iget-boolean v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->encryptBlock([BI[BI)I

    move-result p1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->decryptBlock([BI[BI)I

    move-result p1

    :goto_1
    return p1
.end method

.method public reset()V
    .locals 4

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->count:I

    const/4 v1, 0x0

    .line 125
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->FR:[B

    array-length v3, v2

    if-eq v1, v3, :cond_1

    .line 127
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->inlineIv:Z

    if-eqz v3, :cond_0

    .line 129
    aput-byte v0, v2, v1

    goto :goto_1

    .line 133
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->IV:[B

    aget-byte v3, v3, v1

    aput-byte v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
