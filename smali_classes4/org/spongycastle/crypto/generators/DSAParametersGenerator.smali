.class public Lorg/spongycastle/crypto/generators/DSAParametersGenerator;
.super Ljava/lang/Object;
.source "DSAParametersGenerator.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final ZERO:Ljava/math/BigInteger;


# instance fields
.field private L:I

.field private N:I

.field private certainty:I

.field private digest:Lorg/spongycastle/crypto/Digest;

.field private iterations:I

.field private random:Ljava/security/SecureRandom;

.field private usageIndex:I

.field private use186_3:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 21
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 22
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 23
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-void
.end method

.method private static calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4

    .line 202
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 203
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 207
    :cond_0
    sget-object v1, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lorg/spongycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 208
    invoke-virtual {v1, p1, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    return-object v1
.end method

.method private static calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 0

    .line 346
    invoke-static {p0, p1, p2}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;
    .locals 5

    .line 353
    sget-object v0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const-string v0, "6767656E"

    .line 354
    invoke-static {v0}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 357
    array-length v1, p3

    array-length v2, v0

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 358
    array-length v3, p3

    const/4 v4, 0x0

    invoke-static {p3, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    array-length p3, p3

    array-length v3, v0

    invoke-static {v0, v4, v1, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    array-length p3, v1

    add-int/lit8 p3, p3, -0x3

    int-to-byte p4, p4

    aput-byte p4, v1, p3

    .line 362
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result p3

    new-array p3, p3, [B

    const/4 p4, 0x1

    :goto_0
    const/high16 v0, 0x10000

    if-ge p4, v0, :cond_1

    .line 365
    invoke-static {v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 366
    invoke-static {p0, v1, p3, v4}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 367
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2, p3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 368
    invoke-virtual {v0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 369
    sget-object v3, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 15

    const/16 v0, 0x14

    .line 123
    new-array v1, v0, [B

    .line 124
    new-array v2, v0, [B

    .line 125
    new-array v3, v0, [B

    .line 126
    new-array v0, v0, [B

    .line 127
    iget v4, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v5, v4, -0x1

    div-int/lit16 v5, v5, 0xa0

    .line 128
    div-int/lit8 v4, v4, 0x8

    new-array v4, v4, [B

    .line 130
    iget-object v6, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    instance-of v6, v6, Lorg/spongycastle/crypto/digests/SHA1Digest;

    if-eqz v6, :cond_6

    .line 137
    :cond_0
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 139
    iget-object v6, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/4 v7, 0x0

    invoke-static {v6, v1, v2, v7}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 140
    array-length v6, v1

    invoke-static {v1, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-static {v3}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 142
    iget-object v6, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v6, v3, v3, v7}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    const/4 v6, 0x0

    .line 144
    :goto_1
    array-length v8, v0

    if-eq v6, v8, :cond_1

    .line 146
    aget-byte v8, v2, v6

    aget-byte v9, v3, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 149
    :cond_1
    aget-byte v6, v0, v7

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v0, v7

    const/16 v6, 0x13

    .line 150
    aget-byte v8, v0, v6

    const/4 v9, 0x1

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 152
    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v9, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 154
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v8

    .line 160
    invoke-static {v8}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x1000

    if-ge v10, v11, :cond_0

    const/4 v11, 0x1

    :goto_3
    if-gt v11, v5, :cond_3

    .line 167
    invoke-static {v8}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 168
    iget-object v12, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v13, v4

    array-length v14, v2

    mul-int v14, v14, v11

    sub-int/2addr v13, v14

    invoke-static {v12, v8, v4, v13}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 171
    :cond_3
    array-length v11, v4

    array-length v12, v2

    mul-int v12, v12, v5

    sub-int/2addr v11, v12

    .line 172
    invoke-static {v8}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 173
    iget-object v12, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-static {v12, v8, v2, v7}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 174
    array-length v12, v2

    sub-int/2addr v12, v11

    invoke-static {v2, v12, v4, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    aget-byte v11, v4, v7

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v4, v7

    .line 179
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v9, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 181
    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 183
    sget-object v13, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 185
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    iget v13, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v12, v13, :cond_4

    goto :goto_4

    .line 190
    :cond_4
    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 192
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v11, v6, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_2(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    new-instance v2, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v1, v10}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v11, v6, v0, v3}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v2

    :cond_5
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can only use SHA-1 for generating FIPS 186-2 parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 14

    .line 224
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 225
    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    .line 233
    iget v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 234
    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [B

    .line 237
    iget v3, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    add-int/lit8 v4, v3, -0x1

    div-int/2addr v4, v1

    add-int/lit8 v5, v3, -0x1

    .line 240
    rem-int/2addr v5, v1

    .line 242
    div-int/lit8 v3, v3, 0x8

    new-array v1, v3, [B

    .line 243
    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 247
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    .line 250
    invoke-static {v0, v2, v3, v5}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 252
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    sget-object v8, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    iget v9, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 255
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v6

    iget v8, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    sub-int/2addr v8, v7

    invoke-virtual {v6, v8}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 258
    invoke-direct {p0, v6}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v8

    .line 269
    iget v9, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    mul-int/lit8 v9, v9, 0x4

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_0

    const/4 v11, 0x1

    :goto_2
    if-gt v11, v4, :cond_2

    .line 278
    invoke-static {v8}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 279
    array-length v12, v1

    array-length v13, v3

    mul-int v13, v13, v11

    sub-int/2addr v12, v13

    invoke-static {v0, v8, v1, v12}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 282
    :cond_2
    array-length v11, v1

    array-length v12, v3

    mul-int v12, v12, v4

    sub-int/2addr v11, v12

    .line 283
    invoke-static {v8}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->inc([B)V

    .line 284
    invoke-static {v0, v8, v3, v5}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->hash(Lorg/spongycastle/crypto/Digest;[B[BI)V

    .line 285
    array-length v12, v3

    sub-int/2addr v12, v11

    invoke-static {v3, v12, v1, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    aget-byte v11, v1, v5

    or-int/lit8 v11, v11, -0x80

    int-to-byte v11, v11

    aput-byte v11, v1, v5

    .line 291
    new-instance v11, Ljava/math/BigInteger;

    invoke-direct {v11, v7, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 294
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 297
    sget-object v13, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 300
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    iget v13, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    if-eq v12, v13, :cond_3

    goto :goto_3

    .line 306
    :cond_3
    invoke-direct {p0, v11}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 310
    iget v1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    if-ltz v1, :cond_4

    .line 312
    invoke-static {v0, v11, v6, v2, v1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Verifiable(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;[BI)Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 315
    new-instance v1, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    iget v4, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    invoke-direct {v3, v2, v10, v4}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    invoke-direct {v1, v11, v6, v0, v3}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v1

    .line 319
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v11, v6, v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->calculateGenerator_FIPS186_3_Unverifiable(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 321
    new-instance v1, Lorg/spongycastle/crypto/params/DSAParameters;

    new-instance v3, Lorg/spongycastle/crypto/params/DSAValidationParameters;

    invoke-direct {v3, v2, v10}, Lorg/spongycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v11, v6, v0, v3}, Lorg/spongycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DSAValidationParameters;)V

    return-object v1

    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private static getDefaultN(I)I
    .locals 1

    const/16 v0, 0x400

    if-le p0, v0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    :cond_0
    const/16 p0, 0xa0

    :goto_0
    return p0
.end method

.method private static getMinimumIterations(I)I
    .locals 1

    const/16 v0, 0x400

    if-gt p0, v0, :cond_0

    const/16 p0, 0x28

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 392
    div-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x30

    :goto_0
    return p0
.end method

.method private static hash(Lorg/spongycastle/crypto/Digest;[B[BI)V
    .locals 2

    .line 380
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 381
    invoke-interface {p0, p2, p3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method private static inc([B)V
    .locals 2

    .line 397
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 399
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 400
    aput-byte v1, p0, v0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 1

    .line 340
    iget v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public generateParameters()Lorg/spongycastle/crypto/params/DSAParameters;
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_3()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->generateParameters_FIPS186_2()Lorg/spongycastle/crypto/params/DSAParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0

    .line 55
    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 56
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getDefaultN(I)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 57
    iput p2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 58
    iget p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    invoke-static {p1}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result p1

    add-int/lit8 p2, p2, 0x1

    div-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 59
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    const/4 p1, -0x1

    .line 61
    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void
.end method

.method public init(Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;)V
    .locals 5

    .line 75
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getL()I

    move-result v0

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getN()I

    move-result v1

    const/16 v2, 0x400

    if-lt v0, v2, :cond_7

    const/16 v3, 0xc00

    if-gt v0, v3, :cond_7

    .line 77
    rem-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_7

    if-ne v0, v2, :cond_1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 160 for L = 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v2, 0x800

    const/16 v4, 0x100

    if-ne v0, v2, :cond_3

    const/16 v2, 0xe0

    if-eq v1, v2, :cond_3

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 224 or 256 for L = 2048"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    if-ne v0, v3, :cond_5

    if-ne v1, v4, :cond_4

    goto :goto_2

    .line 91
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "N must be 256 for L = 3072"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 94
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    if-lt v2, v1, :cond_6

    .line 99
    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->L:I

    .line 100
    iput v1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->N:I

    .line 101
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getCertainty()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    .line 102
    invoke-static {v0}, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->getMinimumIterations(I)I

    move-result v0

    iget v1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->certainty:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->iterations:I

    .line 103
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 104
    iput-boolean v2, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->use186_3:Z

    .line 105
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DSAParameterGenerationParameters;->getUsageIndex()I

    move-result p1

    iput p1, p0, Lorg/spongycastle/crypto/generators/DSAParametersGenerator;->usageIndex:I

    return-void

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Digest output size too small for value of N"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "L values must be between 1024 and 3072 and a multiple of 1024"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
