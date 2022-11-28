.class public Lorg/spongycastle/bcpg/sig/RevocationKey;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "RevocationKey.java"


# direct methods
.method public constructor <init>(ZBI[B)V
    .locals 0

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 22
    invoke-static {p2, p3, p4}, Lorg/spongycastle/bcpg/sig/RevocationKey;->createData(BB[B)[B

    move-result-object p2

    const/16 p3, 0xc

    const/4 p4, 0x0

    invoke-direct {p0, p3, p1, p4, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0xc

    .line 16
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static createData(BB[B)[B
    .locals 3

    .line 28
    array-length v0, p2

    const/4 v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 29
    aput-byte p0, v0, v2

    const/4 p0, 0x1

    .line 30
    aput-byte p1, v0, p0

    .line 31
    array-length p0, p2

    invoke-static {p2, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getAlgorithm()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/RevocationKey;->getData()[B

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method public getFingerprint()[B
    .locals 5

    .line 47
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/RevocationKey;->getData()[B

    move-result-object v0

    .line 48
    array-length v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 49
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public getSignatureClass()B
    .locals 2

    .line 37
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/RevocationKey;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method
