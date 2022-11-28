.class public Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;
.source "WinternitzOTSignature.java"


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/spongycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/spongycastle/crypto/Digest;I)V
    .locals 4

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    .line 65
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    .line 67
    new-instance p2, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p2, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    .line 72
    iget-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    .line 73
    iget p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 p2, p2, 0x3

    int-to-double v0, p2

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p2, v0

    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    .line 76
    iget p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result p2

    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    .line 78
    iget p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    int-to-double v0, p3

    div-double/2addr v0, v2

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    add-int/2addr p2, p3

    iput p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    .line 90
    iget p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    filled-new-array {p2, p3}, [I

    move-result-object p2

    const-class p3, B

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[B

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    .line 93
    iget p2, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array p2, p2, [B

    .line 94
    array-length p3, p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    :goto_0
    iget p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v0, p1, :cond_0

    .line 100
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object p3, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {p3, p2}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object p3

    aput-object p3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getLog(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    :goto_0
    if-ge v1, p1, :cond_0

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getPrivateKey()[[B
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 8

    .line 117
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v0, v0, v1

    new-array v0, v0, [B

    .line 119
    new-array v1, v1, [B

    .line 120
    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 122
    :goto_0
    iget v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v3, v4, :cond_1

    .line 125
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v6, v5, v3

    aget-object v5, v5, v3

    array-length v5, v5

    invoke-interface {v4, v6, v2, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 126
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 127
    iget-object v5, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5, v4, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const/4 v5, 0x2

    :goto_1
    if-ge v5, v1, :cond_0

    .line 130
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v7, v4

    invoke-interface {v6, v4, v2, v7}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 131
    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 132
    iget-object v6, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v4, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 134
    :cond_0
    iget v5, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v6, v5, v3

    invoke-static {v4, v2, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 138
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 139
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 149
    iget v2, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v2, v2, v3

    new-array v2, v2, [B

    .line 151
    new-array v3, v3, [B

    .line 156
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 157
    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 158
    iget-object v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3, v1, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 160
    iget v3, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v4, 0x8

    rem-int v6, v4, v3

    const/4 v7, 0x1

    if-nez v6, :cond_4

    .line 162
    div-int/2addr v4, v3

    shl-int v3, v7, v3

    sub-int/2addr v3, v7

    .line 164
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v6, v6, [B

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 167
    :goto_0
    array-length v10, v1

    if-ge v6, v10, :cond_2

    move-object v10, v9

    move v9, v8

    move v8, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_1

    .line 171
    aget-byte v11, v1, v6

    and-int/2addr v11, v3

    add-int/2addr v8, v11

    .line 174
    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v12, v12, v9

    iget v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v12, v5, v10, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    if-lez v11, :cond_0

    .line 178
    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v13, v10

    invoke-interface {v12, v10, v5, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 179
    iget-object v10, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v10

    new-array v10, v10, [B

    .line 180
    iget-object v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v12, v10, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 183
    :cond_0
    iget v11, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v12, v9, v11

    invoke-static {v10, v5, v2, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    aget-byte v11, v1, v6

    iget v12, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v6

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v7, v8

    move v8, v9

    move-object v9, v10

    goto :goto_0

    .line 189
    :cond_2
    iget v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v1, v4

    sub-int/2addr v1, v7

    move v4, v1

    const/4 v1, 0x0

    .line 190
    :goto_3
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v1, v6, :cond_15

    and-int v6, v4, v3

    .line 194
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v8

    iget v10, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v7, v5, v9, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    if-lez v6, :cond_3

    .line 198
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v10, v9

    invoke-interface {v7, v9, v5, v10}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 199
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v9, v7, [B

    .line 200
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v9, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 203
    :cond_3
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v8, v6

    invoke-static {v9, v5, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v4, v6

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v1, v6

    goto :goto_3

    :cond_4
    if-ge v3, v4, :cond_d

    .line 210
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    div-int v10, v6, v3

    shl-int v3, v7, v3

    sub-int/2addr v3, v7

    .line 212
    new-array v6, v6, [B

    move-object v14, v6

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_5
    if-ge v6, v10, :cond_8

    move/from16 v17, v11

    const/4 v11, 0x0

    const-wide/16 v15, 0x0

    .line 220
    :goto_6
    iget v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v11, v8, :cond_5

    .line 222
    aget-byte v8, v1, v17

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v11, 0x3

    shl-int/2addr v8, v9

    int-to-long v8, v8

    xor-long/2addr v15, v8

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_5
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v4, :cond_7

    move v9, v8

    int-to-long v7, v3

    and-long/2addr v7, v15

    long-to-int v8, v7

    add-int/2addr v13, v8

    .line 230
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v12

    iget v11, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v7, v5, v14, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    if-lez v8, :cond_6

    .line 234
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v11, v14

    invoke-interface {v7, v14, v5, v11}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 235
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v14, v7, [B

    .line 236
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v14, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 239
    :cond_6
    iget v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v8, v12, v7

    invoke-static {v14, v5, v2, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    iget v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v15, v7

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v9, 0x1

    const/4 v7, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v6, v6, 0x1

    move/from16 v11, v17

    const/4 v7, 0x1

    goto :goto_5

    .line 245
    :cond_8
    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int/2addr v4, v6

    const/4 v6, 0x0

    const-wide/16 v18, 0x0

    :goto_9
    if-ge v6, v4, :cond_9

    .line 249
    aget-byte v7, v1, v11

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v8, v6, 0x3

    shl-int/2addr v7, v8

    int-to-long v7, v7

    xor-long v18, v18, v7

    const/4 v7, 0x1

    add-int/2addr v11, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_9
    shl-int/lit8 v1, v4, 0x3

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_b

    int-to-long v6, v3

    and-long v6, v18, v6

    long-to-int v7, v6

    add-int/2addr v13, v7

    .line 258
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v6, v6, v12

    iget v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v6, v5, v14, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    if-lez v7, :cond_a

    .line 262
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v8, v14

    invoke-interface {v6, v14, v5, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 263
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v14, v6, [B

    .line 264
    iget-object v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v6, v14, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v7, v7, -0x1

    goto :goto_b

    .line 267
    :cond_a
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v12, v6

    invoke-static {v14, v5, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long v18, v18, v6

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v4, v6

    goto :goto_a

    .line 273
    :cond_b
    iget v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v1, v4

    sub-int/2addr v1, v13

    move v4, v1

    const/4 v1, 0x0

    .line 274
    :goto_c
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v1, v6, :cond_15

    and-int v6, v4, v3

    .line 278
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v7, v7, v12

    iget v8, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v7, v5, v14, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    if-lez v6, :cond_c

    .line 282
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v8, v14

    invoke-interface {v7, v14, v5, v8}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 283
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    new-array v14, v7, [B

    .line 284
    iget-object v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v7, v14, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v6, v6, -0x1

    goto :goto_d

    .line 287
    :cond_c
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v12, v6

    invoke-static {v14, v5, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v4, v6

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v1, v6

    goto :goto_c

    :cond_d
    const/16 v6, 0x39

    if-ge v3, v6, :cond_15

    .line 294
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v7, v6, 0x3

    sub-int/2addr v7, v3

    const/4 v8, 0x1

    shl-int v3, v8, v3

    sub-int/2addr v3, v8

    .line 296
    new-array v6, v6, [B

    move-object v10, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_e
    if-gt v6, v7, :cond_10

    ushr-int/lit8 v13, v6, 0x3

    .line 305
    rem-int/lit8 v14, v6, 0x8

    .line 306
    iget v15, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v6, v15

    add-int/lit8 v15, v6, 0x7

    ushr-int/lit8 v15, v15, 0x3

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    :goto_f
    if-ge v13, v15, :cond_e

    .line 312
    aget-byte v4, v1, v13

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v21, v20, 0x3

    shl-int v4, v4, v21

    int-to-long v11, v4

    xor-long v16, v16, v11

    const/4 v4, 0x1

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v13, v13, 0x1

    const/16 v4, 0x8

    goto :goto_f

    :cond_e
    ushr-long v11, v16, v14

    int-to-long v13, v3

    and-long/2addr v11, v13

    int-to-long v13, v9

    add-long/2addr v13, v11

    long-to-int v9, v13

    .line 320
    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v4, v4, v8

    iget v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v4, v5, v10, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v13, 0x0

    :goto_10
    cmp-long v4, v11, v13

    if-lez v4, :cond_f

    .line 323
    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v13, v10

    invoke-interface {v4, v10, v5, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 324
    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v10, v4, [B

    .line 325
    iget-object v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v10, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x0

    goto :goto_10

    .line 328
    :cond_f
    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v11, v8, v4

    invoke-static {v10, v5, v2, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    const/16 v4, 0x8

    goto :goto_e

    :cond_10
    ushr-int/lit8 v4, v6, 0x3

    .line 334
    iget v7, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v4, v7, :cond_13

    const/16 v7, 0x8

    .line 336
    rem-int/2addr v6, v7

    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    .line 339
    :goto_11
    iget v13, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v4, v13, :cond_11

    .line 341
    aget-byte v13, v1, v4

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v14, v7, 0x3

    shl-int/2addr v13, v14

    int-to-long v13, v13

    xor-long/2addr v11, v13

    const/4 v14, 0x1

    add-int/2addr v7, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_11
    ushr-long v6, v11, v6

    int-to-long v11, v3

    and-long/2addr v6, v11

    int-to-long v11, v9

    add-long/2addr v11, v6

    long-to-int v9, v11

    .line 349
    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v1, v1, v8

    invoke-static {v1, v5, v10, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v11, 0x0

    :goto_12
    cmp-long v1, v6, v11

    if-lez v1, :cond_12

    .line 352
    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v4, v10

    invoke-interface {v1, v10, v5, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 353
    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v10, v1, [B

    .line 354
    iget-object v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, v10, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v11, 0x1

    sub-long/2addr v6, v11

    const-wide/16 v11, 0x0

    goto :goto_12

    .line 357
    :cond_12
    iget v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v4, v8, v1

    invoke-static {v10, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    .line 361
    :cond_13
    iget v1, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v4, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v1, v4

    sub-int/2addr v1, v9

    move v4, v1

    const/4 v1, 0x0

    .line 362
    :goto_13
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v1, v6, :cond_15

    and-int v6, v4, v3

    int-to-long v6, v6

    .line 366
    iget-object v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v9, v9, v8

    iget v11, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v9, v5, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v11, 0x0

    :goto_14
    cmp-long v9, v6, v11

    if-lez v9, :cond_14

    .line 370
    iget-object v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    array-length v13, v10

    invoke-interface {v9, v10, v5, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 371
    iget-object v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v9}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v9

    new-array v10, v9, [B

    .line 372
    iget-object v9, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v9, v10, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v13, 0x1

    sub-long/2addr v6, v13

    goto :goto_14

    :cond_14
    const-wide/16 v13, 0x1

    .line 375
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int v7, v8, v6

    invoke-static {v10, v5, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    iget v6, v0, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v4, v6

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v1, v6

    goto :goto_13

    :cond_15
    return-object v2
.end method
