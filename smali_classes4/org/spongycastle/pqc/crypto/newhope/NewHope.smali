.class Lorg/spongycastle/pqc/crypto/newhope/NewHope;
.super Ljava/lang/Object;
.source "NewHope.java"


# static fields
.field public static final AGREEMENT_SIZE:I = 0x20

.field public static final POLY_SIZE:I = 0x400

.field public static final SENDA_BYTES:I = 0x720

.field public static final SENDB_BYTES:I = 0x800

.field private static final STATISTICAL_TEST:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeA([S[B[B)V
    .locals 2

    .line 111
    invoke-static {p0, p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    const/16 p0, 0x700

    const/4 v0, 0x0

    const/16 v1, 0x20

    .line 112
    invoke-static {p2, p0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static decodeB([S[S[B)V
    .locals 4

    .line 117
    invoke-static {p0, p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    mul-int/lit8 v0, p0, 0x4

    add-int/lit16 v1, p0, 0x700

    .line 122
    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x0

    and-int/lit8 v3, v1, 0x3

    int-to-short v3, v3

    .line 123
    aput-short v3, p1, v2

    add-int/lit8 v2, v0, 0x1

    ushr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    .line 124
    aput-short v3, p1, v2

    add-int/lit8 v2, v0, 0x2

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    .line 125
    aput-short v3, p1, v2

    add-int/lit8 v0, v0, 0x3

    ushr-int/lit8 v1, v1, 0x6

    int-to-short v1, v1

    .line 126
    aput-short v1, p1, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static encodeA([B[S[B)V
    .locals 2

    .line 132
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    const/4 p1, 0x0

    const/16 v0, 0x700

    const/16 v1, 0x20

    .line 133
    invoke-static {p2, p1, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeB([B[S[S)V
    .locals 4

    .line 138
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x4

    add-int/lit16 v1, p1, 0x700

    .line 143
    aget-short v2, p2, v0

    add-int/lit8 v3, v0, 0x1

    aget-short v3, p2, v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-short v3, p2, v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-short v0, p2, v0

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static generateA([S[B)V
    .locals 0

    .line 149
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->uniform([S[B)V

    return-void
.end method

.method public static keygen(Ljava/security/SecureRandom;[B[S)V
    .locals 5

    const/16 v0, 0x20

    .line 21
    new-array v1, v0, [B

    .line 22
    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v2, 0x400

    .line 24
    new-array v3, v2, [S

    .line 25
    invoke-static {v3, v1}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    .line 27
    new-array v0, v0, [B

    .line 28
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 p0, 0x0

    .line 30
    invoke-static {p2, v0, p0}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 31
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 33
    new-array p0, v2, [S

    const/4 v4, 0x1

    .line 34
    invoke-static {p0, v0, v4}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 35
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 37
    new-array v0, v2, [S

    .line 38
    invoke-static {v3, p2, v0}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 40
    new-array p2, v2, [S

    .line 41
    invoke-static {v0, p0, p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 43
    invoke-static {p1, p2, v1}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->encodeA([B[S[B)V

    return-void
.end method

.method static sha3([B)V
    .locals 3

    .line 154
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const/4 v1, 0x0

    const/16 v2, 0x20

    .line 155
    invoke-virtual {v0, p0, v1, v2}, Lorg/spongycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 156
    invoke-virtual {v0, p0, v1}, Lorg/spongycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method public static sharedA([B[S[B)V
    .locals 3

    const/16 v0, 0x400

    .line 93
    new-array v1, v0, [S

    .line 94
    new-array v2, v0, [S

    .line 95
    invoke-static {v1, v2, p2}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->decodeB([S[S[B)V

    .line 97
    new-array p2, v0, [S

    .line 98
    invoke-static {p1, v1, p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 99
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    .line 101
    invoke-static {p0, p2, v2}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    .line 105
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    return-void
.end method

.method public static sharedB(Ljava/security/SecureRandom;[B[B[B)V
    .locals 5

    const/16 v0, 0x400

    .line 48
    new-array v1, v0, [S

    const/16 v2, 0x20

    .line 49
    new-array v3, v2, [B

    .line 50
    invoke-static {v1, v3, p3}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->decodeA([S[B[B)V

    .line 52
    new-array p3, v0, [S

    .line 53
    invoke-static {p3, v3}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    .line 55
    new-array v2, v2, [B

    .line 56
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 58
    new-array p0, v0, [S

    const/4 v3, 0x0

    .line 59
    invoke-static {p0, v2, v3}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 60
    invoke-static {p0}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 62
    new-array v3, v0, [S

    const/4 v4, 0x1

    .line 63
    invoke-static {v3, v2, v4}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 64
    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 66
    new-array v4, v0, [S

    .line 67
    invoke-static {p3, p0, v4}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 68
    invoke-static {v4, v3, v4}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 70
    new-array p3, v0, [S

    .line 71
    invoke-static {v1, p0, p3}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 72
    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    .line 74
    new-array p0, v0, [S

    const/4 v1, 0x2

    .line 75
    invoke-static {p0, v2, v1}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 76
    invoke-static {p3, p0, p3}, Lorg/spongycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 78
    new-array p0, v0, [S

    const/4 v0, 0x3

    .line 79
    invoke-static {p0, p3, v2, v0}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->helpRec([S[S[BB)V

    .line 81
    invoke-static {p2, v4, p0}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->encodeB([B[S[S)V

    .line 83
    invoke-static {p1, p3, p0}, Lorg/spongycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    .line 87
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    return-void
.end method
