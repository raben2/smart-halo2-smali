.class public Lorg/spongycastle/bcpg/sig/RevocationReason;
.super Lorg/spongycastle/bcpg/SignatureSubpacket;
.source "RevocationReason.java"


# direct methods
.method public constructor <init>(ZBLjava/lang/String;)V
    .locals 1

    .line 19
    invoke-static {p2, p3}, Lorg/spongycastle/bcpg/sig/RevocationReason;->createData(BLjava/lang/String;)[B

    move-result-object p2

    const/16 p3, 0x1d

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, v0, p2}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method public constructor <init>(ZZ[B)V
    .locals 1

    const/16 v0, 0x1d

    .line 14
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/spongycastle/bcpg/SignatureSubpacket;-><init>(IZZ[B)V

    return-void
.end method

.method private static createData(BLjava/lang/String;)[B
    .locals 3

    .line 24
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 25
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    .line 27
    aput-byte p0, v0, v2

    .line 28
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public getRevocationDescription()Ljava/lang/String;
    .locals 5

    .line 40
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/RevocationReason;->getData()[B

    move-result-object v0

    .line 41
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, ""

    return-object v0

    .line 46
    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    .line 47
    array-length v4, v1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    invoke-static {v1}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationReason()B
    .locals 2

    .line 35
    invoke-virtual {p0}, Lorg/spongycastle/bcpg/sig/RevocationReason;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method
