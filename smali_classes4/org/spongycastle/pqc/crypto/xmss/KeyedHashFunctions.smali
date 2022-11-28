.class final Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;
.super Ljava/lang/Object;
.source "KeyedHashFunctions.java"


# instance fields
.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private final digestSize:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/Digest;I)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 22
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    .line 23
    iput p2, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "digest == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private coreDigest(I[B[B)[B
    .locals 3

    int-to-long v0, p1

    .line 28
    iget p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    invoke-static {v0, v1, p1}, Lorg/spongycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(JI)[B

    move-result-object p1

    .line 30
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 32
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    array-length v0, p2

    invoke-interface {p1, p2, v2, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 34
    iget-object p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    array-length p2, p3

    invoke-interface {p1, p3, v2, p2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 36
    iget p1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    new-array p2, p1, [B

    .line 37
    iget-object p3, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/spongycastle/crypto/Digest;

    instance-of v0, p3, Lorg/spongycastle/crypto/Xof;

    if-eqz v0, :cond_0

    .line 39
    check-cast p3, Lorg/spongycastle/crypto/Xof;

    invoke-interface {p3, p2, v2, p1}, Lorg/spongycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p3, p2, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    return-object p2
.end method


# virtual methods
.method protected F([B[B)[B
    .locals 2

    .line 50
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne v0, v1, :cond_1

    .line 54
    array-length v0, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong in length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected H([B[B)[B
    .locals 2

    .line 63
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne v0, v1, :cond_1

    .line 67
    array-length v0, p2

    mul-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong in length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected HMsg([B[B)[B
    .locals 2

    .line 76
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    mul-int/lit8 v1, v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 80
    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected PRF([B[B)[B
    .locals 2

    .line 85
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne v0, v1, :cond_1

    .line 89
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 93
    invoke-direct {p0, v0, p1, p2}, Lorg/spongycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest(I[B[B)[B

    move-result-object p1

    return-object p1

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong address length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong key length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
