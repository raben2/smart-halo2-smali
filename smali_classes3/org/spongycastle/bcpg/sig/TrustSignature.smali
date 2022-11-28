.class public Lorg/spongycastle/bcpg/sig/TrustSignature;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "TrustSignature.java"


# direct methods
.method public constructor <init>(ZII)V
    .locals 1

    .line 37
    invoke-static {p2, p3}, Lorg/spongycastle/bcpg/sig/TrustSignature;->intToByteArray(II)[B

    move-result-object p2

    const/4 p3, 0x5

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/4 v0, 0x5

    .line 29
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static intToByteArray(II)[B
    .locals 2

    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    int-to-byte p0, p1

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method


# virtual methods
.method public getDepth()I
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/spongycastle/bcpg/sig/TrustSignature;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getTrustAmount()I
    .locals 2

    .line 47
    iget-object v0, p0, Lorg/spongycastle/bcpg/sig/TrustSignature;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
