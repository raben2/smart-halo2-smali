.class public Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "SignatureExpirationTime.java"


# direct methods
.method public constructor <init>(ZJ)V
    .locals 1

    .line 37
    invoke-static {p2, p3}, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;->timeToBytes(J)[B

    move-result-object p2

    const/4 p3, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/4 v0, 0x3

    .line 30
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method protected static timeToBytes(J)[B
    .locals 3

    const/4 v0, 0x4

    .line 15
    new-array v0, v0, [B

    const/16 v1, 0x18

    shr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    shr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    shr-long v1, p0, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    long-to-int p1, p0

    int-to-byte p0, p1

    const/4 p1, 0x3

    aput-byte p0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getTime()J
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;->data:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;->data:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    or-long/2addr v0, v2

    iget-object v2, p0, Lorg/spongycastle/bcpg/sig/SignatureExpirationTime;->data:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method
