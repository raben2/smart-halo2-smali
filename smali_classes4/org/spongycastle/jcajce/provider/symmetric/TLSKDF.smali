.class public Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;
.super Ljava/lang/Object;
.source "TLSKDF.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$Mappings;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA512;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA384;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12withSHA256;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS12;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS11;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLS10;,
        Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF$TLSKeyMaterialFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static PRF_legacy(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 9

    .line 78
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createMD5()Lorg/spongycastle/crypto/Digest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 79
    new-instance v1, Lorg/spongycastle/crypto/macs/HMac;

    invoke-static {}, Lorg/spongycastle/crypto/util/DigestFactory;->createSHA1()Lorg/spongycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 81
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSeed()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/spongycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getSecret()[B

    move-result-object v3

    .line 85
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 86
    new-array v5, v4, [B

    .line 87
    new-array v6, v4, [B

    const/4 v7, 0x0

    .line 88
    invoke-static {v3, v7, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    array-length v8, v3

    sub-int/2addr v8, v4

    invoke-static {v3, v8, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;->getLength()I

    move-result p0

    .line 92
    new-array v3, p0, [B

    .line 93
    new-array v4, p0, [B

    .line 95
    invoke-static {v0, v5, v2, v3}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    .line 96
    invoke-static {v1, v6, v2, v4}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    :goto_0
    if-ge v7, p0, :cond_0

    .line 100
    aget-byte v0, v3, v7

    aget-byte v1, v4, v7

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method static synthetic access$000(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;)[B
    .locals 0

    .line 23
    invoke-static {p0}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->PRF_legacy(Lorg/spongycastle/jcajce/spec/TLSKeyMaterialSpec;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/spongycastle/crypto/Mac;[B[B[B)V
    .locals 0

    .line 23
    invoke-static {p0, p1, p2, p3}, Lorg/spongycastle/jcajce/provider/symmetric/TLSKDF;->hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V

    return-void
.end method

.method private static hmac_hash(Lorg/spongycastle/crypto/Mac;[B[B[B)V
    .locals 7

    .line 171
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {p0, v0}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 173
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result p1

    .line 174
    array-length v0, p3

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    .line 175
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v1

    new-array v1, v1, [B

    .line 176
    invoke-interface {p0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    move-object v5, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    .line 179
    array-length v6, v5

    invoke-interface {p0, v5, v3, v6}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 180
    invoke-interface {p0, v1, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 182
    array-length v5, v1

    invoke-interface {p0, v1, v3, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 183
    array-length v5, p2

    invoke-interface {p0, p2, v3, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 184
    invoke-interface {p0, v2, v3}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    mul-int v5, p1, v4

    .line 185
    array-length v6, p3

    sub-int/2addr v6, v5

    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v3, p3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    move-object v5, v1

    goto :goto_0

    :cond_0
    return-void
.end method
