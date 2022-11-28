.class public Lorg/spongycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private mgf1Hash:Lorg/spongycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2

    .line 30
    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    .line 55
    iput-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    .line 56
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 58
    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->reset()V

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    .line 62
    array-length p3, p4

    invoke-interface {p2, p4, p1, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 65
    :cond_0
    iget-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, p3, p1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;[B)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;[B)V

    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 3

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    .line 303
    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v2, 0x1

    .line 304
    aput-byte v0, p2, v2

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v2, 0x2

    .line 305
    aput-byte v0, p2, v2

    ushr-int/2addr p1, v1

    int-to-byte p1, p1

    const/4 v0, 0x3

    .line 306
    aput-byte p1, p2, v0

    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 7

    .line 318
    new-array v0, p4, [B

    .line 319
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x4

    .line 320
    new-array v2, v2, [B

    .line 323
    iget-object v3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->reset()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 325
    :goto_0
    array-length v5, v1

    div-int v5, p4, v5

    if-ge v4, v5, :cond_0

    .line 327
    invoke-direct {p0, v4, v2}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 329
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 330
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v5, v2, v3, v6}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 331
    iget-object v5, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5, v1, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 333
    array-length v5, v1

    mul-int v5, v5, v4

    array-length v6, v1

    invoke-static {v1, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 338
    :cond_0
    array-length v5, v1

    mul-int v5, v5, v4

    if-ge v5, p4, :cond_1

    .line 340
    invoke-direct {p0, v4, v2}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 342
    iget-object p4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p4, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 343
    iget-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    array-length p2, v2

    invoke-interface {p1, v2, v3, p2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 344
    iget-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1, v1, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 346
    array-length p1, v1

    mul-int p1, p1, v4

    array-length p2, v0

    array-length p3, v1

    mul-int v4, v4, p3

    sub-int/2addr p2, v4

    invoke-static {v1, v3, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    .line 216
    iget-object p2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result p2

    new-array p2, p2, [B

    .line 224
    array-length p3, p2

    array-length v0, p1

    sub-int/2addr p3, v0

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    array-length p1, p2

    iget-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p3, p3

    mul-int/lit8 p3, p3, 0x2

    const/4 v0, 0x1

    add-int/2addr p3, v0

    if-ge p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 231
    :goto_0
    iget-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, p3

    array-length v3, p2

    array-length v4, p3

    sub-int/2addr v3, v4

    array-length p3, p3

    invoke-direct {p0, p2, v2, v3, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p3

    const/4 v2, 0x0

    .line 234
    :goto_1
    iget-object v3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v3

    if-eq v2, v4, :cond_1

    .line 236
    aget-byte v3, p2, v2

    aget-byte v4, p3, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    :cond_1
    array-length p3, v3

    array-length v2, p2

    array-length v3, v3

    sub-int/2addr v2, v3

    invoke-direct {p0, p2, v1, p3, v2}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p3

    .line 244
    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    :goto_2
    array-length v3, p2

    if-eq v2, v3, :cond_2

    .line 246
    aget-byte v3, p2, v2

    iget-object v4, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    sub-int v4, v2, v4

    aget-byte v4, p3, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    const/4 v2, 0x0

    .line 255
    :goto_3
    iget-object v3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v3

    if-eq p3, v4, :cond_4

    .line 257
    aget-byte v4, v3, p3

    array-length v3, v3

    add-int/2addr v3, p3

    aget-byte v3, p2, v3

    if-eq v4, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 266
    :cond_4
    array-length p3, p2

    .line 268
    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    :goto_4
    array-length v4, p2

    if-eq v3, v4, :cond_8

    .line 270
    aget-byte v4, p2, v3

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    array-length v5, p2

    if-ne p3, v5, :cond_6

    const/4 v5, 0x1

    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_6
    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    move p3, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 276
    :cond_8
    array-length v3, p2

    sub-int/2addr v3, v0

    if-le p3, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    aget-byte v4, p2, p3

    if-eq v4, v0, :cond_a

    const/4 v4, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    :goto_8
    or-int/2addr v3, v4

    add-int/2addr p3, v0

    or-int/2addr p1, v2

    or-int/2addr p1, v3

    if-nez p1, :cond_b

    .line 289
    array-length p1, p2

    sub-int/2addr p1, p3

    new-array p1, p1, [B

    .line 291
    array-length v0, p1

    invoke-static {p2, p3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 282
    :cond_b
    invoke-static {p2, v1}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 283
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "data wrong"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encodeBlock([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 153
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    array-length p1, v0

    sub-int/2addr p1, p3

    sub-int/2addr p1, v1

    aput-byte v1, v0, p1

    .line 167
    iget-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p2, p1

    array-length p3, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    iget-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p1, p1

    new-array p1, p1, [B

    .line 174
    iget-object p2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 179
    array-length p2, p1

    array-length p3, v0

    iget-object v2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    sub-int/2addr p3, v2

    invoke-direct {p0, p1, v1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p2

    .line 181
    iget-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p3, p3

    :goto_0
    array-length v2, v0

    if-eq p3, v2, :cond_0

    .line 183
    aget-byte v2, v0, p3

    iget-object v3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    sub-int v3, p3, v3

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget-object p2, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p2, p2

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    iget-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p2, p1

    array-length p3, v0

    array-length v2, p1

    sub-int/2addr p3, v2

    array-length p1, p1

    invoke-direct {p0, v0, p2, p3, p1}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p1

    const/4 p2, 0x0

    .line 197
    :goto_1
    iget-object p3, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p3, p3

    if-eq p2, p3, :cond_1

    .line 199
    aget-byte p3, v0, p2

    aget-byte v2, p1, p2

    xor-int/2addr p3, v2

    int-to-byte p3, p3

    aput-byte p3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 202
    :cond_1
    iget-object p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    array-length p2, v0

    invoke-interface {p1, v0, v1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 145
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/DataLengthException;

    const-string p2, "input data too long"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputBlockSize()I
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 97
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 99
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0

    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 111
    iget-boolean v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 117
    iget-object v1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUnderlyingCipher()Lorg/spongycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 77
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 81
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 88
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->engine:Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/AsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 90
    iput-boolean p1, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object p1

    return-object p1
.end method
