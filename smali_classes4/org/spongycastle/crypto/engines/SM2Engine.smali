.class public Lorg/spongycastle/crypto/engines/SM2Engine;
.super Ljava/lang/Object;
.source "SM2Engine.java"


# instance fields
.field private curveLength:I

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

.field private ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

.field private forEncryption:Z

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/SM2Engine;-><init>(Lorg/spongycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method

.method private addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 2

    .line 241
    iget v0, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->curveLength:I

    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p2

    .line 243
    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private clearBlock([B)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 252
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    .line 254
    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decrypt([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 125
    iget v0, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->curveLength:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 127
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 131
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_2

    .line 137
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v3, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 139
    array-length v3, v0

    sub-int/2addr p3, v3

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    sub-int/2addr p3, v3

    new-array p3, p3, [B

    .line 141
    array-length v3, v0

    add-int/2addr p2, v3

    array-length v3, p3

    invoke-static {p1, p2, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p0, p2, v1, p3}, Lorg/spongycastle/crypto/engines/SM2Engine;->kdf(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)V

    .line 145
    iget-object p2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p2

    new-array p2, p2, [B

    .line 147
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 148
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v4, p3

    invoke-interface {v3, p3, v2, v4}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 149
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 151
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1, p2, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    const/4 v1, 0x0

    .line 154
    :goto_0
    array-length v3, p2

    if-eq v2, v3, :cond_0

    .line 156
    aget-byte v3, p2, v2

    array-length v4, v0

    array-length v5, p3

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/SM2Engine;->clearBlock([B)V

    .line 160
    invoke-direct {p0, p2}, Lorg/spongycastle/crypto/engines/SM2Engine;->clearBlock([B)V

    if-nez v1, :cond_1

    return-object p3

    .line 164
    :cond_1
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/SM2Engine;->clearBlock([B)V

    .line 165
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "invalid cipher text"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_2
    new-instance p1, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string p2, "[h]C1 at infinity"

    invoke-direct {p1, p2}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private encrypt([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 91
    new-array v0, p3, [B

    .line 93
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/SM2Engine;->nextK()Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getG()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 103
    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v3

    .line 105
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast v4, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 107
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-direct {p0, v4, v1, v0}, Lorg/spongycastle/crypto/engines/SM2Engine;->kdf(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)V

    .line 109
    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/crypto/engines/SM2Engine;->notEncrypted([B[BI)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    iget-object v4, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 113
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 114
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 115
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 117
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {p1, v4, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 119
    invoke-static {v3, v0, v4}, Lorg/spongycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private kdf(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECPoint;[B)V
    .locals 9

    .line 187
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    .line 189
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 192
    :goto_0
    array-length v7, p3

    add-int/2addr v7, v0

    sub-int/2addr v7, v3

    div-int/2addr v7, v0

    if-gt v4, v7, :cond_1

    .line 194
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 195
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lorg/spongycastle/crypto/engines/SM2Engine;->addFieldElement(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/math/ec/ECFieldElement;)V

    shr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    .line 196
    invoke-interface {p1, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    .line 197
    invoke-interface {p1, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    .line 198
    invoke-interface {p1, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    int-to-byte v7, v5

    .line 199
    invoke-interface {p1, v7}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 201
    invoke-interface {p1, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 203
    array-length v7, v1

    add-int/2addr v7, v6

    array-length v8, p3

    if-ge v7, v8, :cond_0

    .line 205
    array-length v7, v1

    invoke-direct {p0, p3, v1, v6, v7}, Lorg/spongycastle/crypto/engines/SM2Engine;->xor([B[BII)V

    goto :goto_1

    .line 209
    :cond_0
    array-length v7, p3

    sub-int/2addr v7, v6

    invoke-direct {p0, p3, v1, v6, v7}, Lorg/spongycastle/crypto/engines/SM2Engine;->xor([B[BII)V

    .line 212
    :goto_1
    array-length v7, v1

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private nextK()Ljava/math/BigInteger;
    .locals 3

    .line 227
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 232
    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 234
    sget-object v2, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    return-object v1
.end method

.method private notEncrypted([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 173
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    .line 175
    aget-byte v2, p1, v1

    aget-byte v3, p2, p3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private xor([B[BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p4, :cond_0

    add-int v1, p3, v0

    .line 221
    aget-byte v2, p1, v1

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1

    .line 46
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->forEncryption:Z

    if-eqz p1, :cond_1

    .line 50
    check-cast p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 52
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/ECKeyParameters;

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 53
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 55
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    check-cast p1, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    iget-object v0, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->random:Ljava/security/SecureRandom;

    goto :goto_0

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key: [h]Q at infinity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/ECKeyParameters;

    iput-object p2, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    .line 66
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecKey:Lorg/spongycastle/crypto/params/ECKeyParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    .line 69
    :goto_0
    iget-object p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->ecParams:Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->curveLength:I

    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lorg/spongycastle/crypto/engines/SM2Engine;->forEncryption:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/SM2Engine;->encrypt([BII)[B

    move-result-object p1

    return-object p1

    .line 84
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/crypto/engines/SM2Engine;->decrypt([BII)[B

    move-result-object p1

    return-object p1
.end method
