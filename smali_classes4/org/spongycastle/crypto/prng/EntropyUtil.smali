.class public Lorg/spongycastle/crypto/prng/EntropyUtil;
.super Ljava/lang/Object;
.source "EntropyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSeed(Lorg/spongycastle/crypto/prng/EntropySource;I)[B
    .locals 6

    .line 17
    new-array v0, p1, [B

    mul-int/lit8 p1, p1, 0x8

    .line 19
    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v1

    const/4 v2, 0x0

    if-gt p1, v1, :cond_0

    .line 21
    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object p0

    .line 23
    array-length p1, v0

    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 27
    :cond_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->entropySize()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    const/4 v1, 0x0

    .line 29
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 31
    invoke-interface {p0}, Lorg/spongycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v3

    .line 33
    array-length v4, v3

    array-length v5, v0

    sub-int/2addr v5, v1

    if-gt v4, v5, :cond_1

    .line 35
    array-length v4, v3

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 39
    :cond_1
    array-length v4, v0

    sub-int/2addr v4, v1

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/2addr v1, p1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method
