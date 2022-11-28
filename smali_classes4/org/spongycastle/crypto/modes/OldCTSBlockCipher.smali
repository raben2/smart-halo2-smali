.class public Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;
.super Lorg/spongycastle/crypto/BufferedBlockCipher;
.source "OldCTSBlockCipher.java"


# instance fields
.field private blockSize:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>()V

    .line 30
    instance-of v0, p1, Lorg/spongycastle/crypto/modes/OFBBlockCipher;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    if-nez v0, :cond_0

    .line 35
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 37
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    .line 39
    iget p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "CTSBlockCipher can only accept ECB, or CBC ciphers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 197
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_7

    .line 202
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 203
    iget v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v0

    .line 204
    new-array v2, v0, [B

    .line 206
    iget-boolean v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->forEncryption:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 208
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v4, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 210
    iget v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-lt v3, v0, :cond_3

    .line 215
    iget v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    :goto_0
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v5, v5

    if-eq v3, v5, :cond_0

    .line 217
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    sub-int v6, v3, v0

    aget-byte v6, v2, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 220
    :goto_1
    iget v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-eq v3, v5, :cond_1

    .line 222
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v6, v5, v3

    sub-int v7, v3, v0

    aget-byte v7, v2, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v3, v3, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v3, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    .line 229
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_2

    .line 233
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v3, v5, v0, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_2
    add-int/2addr p2, v0

    .line 236
    invoke-static {v2, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 212
    :cond_3
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "need at least one block of input for CTS"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 240
    :cond_4
    new-array v3, v0, [B

    .line 242
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    instance-of v5, v5, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    if-eqz v5, :cond_5

    .line 244
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    check-cast v5, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v5

    .line 246
    iget-object v6, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v5, v6, v4, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_3

    .line 250
    :cond_5
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v6, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v5, v6, v4, v2, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_3
    move v5, v0

    .line 253
    :goto_4
    iget v6, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    if-eq v5, v6, :cond_6

    sub-int v6, v5, v0

    .line 255
    aget-byte v7, v2, v6

    iget-object v8, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    aget-byte v8, v8, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 258
    :cond_6
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v5, v0, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5, v2, v4, p1, p2}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/2addr p2, v0

    .line 261
    invoke-static {v3, v4, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    :goto_5
    iget p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    .line 266
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->reset()V

    return p1

    .line 199
    :cond_7
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer to small in doFinal"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getOutputSize(I)I
    .locals 1

    .line 76
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    .line 54
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr p1, v0

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v0, v0

    rem-int v0, p1, v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr p1, v0

    return p1
.end method

.method public processByte(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 97
    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v0, v1, v2, p2, p3}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p2

    .line 100
    iget-object p3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget p3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->blockSize:I

    iput p3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 105
    :goto_0
    iget-object p3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    aput-byte p1, p3, v0

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_4

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->getBlockSize()I

    move-result v0

    .line 136
    invoke-virtual {p0, p3}, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->getUpdateOutputSize(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    .line 140
    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-le p3, v1, :cond_3

    .line 151
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v3, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-interface {v3, v4, v2, p4, p5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v3

    add-int/2addr v3, v2

    .line 154
    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v4, v0, v5, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iput v0, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :goto_1
    if-le p3, v0, :cond_2

    .line 163
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    add-int v5, p5, v3

    invoke-interface {v1, v4, v2, p4, v5}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result v1

    add-int/2addr v3, v1

    .line 165
    iget-object v1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    invoke-static {v1, v0, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 172
    :cond_3
    iget-object p4, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->buf:[B

    iget p5, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    iget p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/spongycastle/crypto/modes/OldCTSBlockCipher;->bufOff:I

    return v2

    .line 132
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
