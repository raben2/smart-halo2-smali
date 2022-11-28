.class public Lbike/smarthalo/sdk/encryption/SHEncryptionHelper;
.super Ljava/lang/Object;
.source "SHEncryptionHelper.java"


# static fields
.field private static P256_HEAD:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE"

    const/4 v1, 0x0

    .line 52
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sput-object v0, Lbike/smarthalo/sdk/encryption/SHEncryptionHelper;->P256_HEAD:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertP256Key([B)Ljava/security/spec/X509EncodedKeySpec;
    .locals 4

    .line 55
    sget-object v0, Lbike/smarthalo/sdk/encryption/SHEncryptionHelper;->P256_HEAD:[B

    array-length v1, v0

    array-length v2, p0

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 56
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    sget-object v0, Lbike/smarthalo/sdk/encryption/SHEncryptionHelper;->P256_HEAD:[B

    array-length v0, v0

    array-length v2, p0

    invoke-static {p0, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p0
.end method

.method public static decryptBlePacket([B[BLbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;)[B
    .locals 3

    const/4 v0, 0x0

    .line 36
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    .line 37
    aget-byte p0, p0, v2

    .line 38
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    if-ne p0, v2, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x2

    .line 42
    invoke-virtual {p2, p0, p1}, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->crypt(I[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object p1
.end method

.method public static get_CRC_CCITT_16_Checksum([B)I
    .locals 5

    const v0, 0xffff

    const/4 v1, 0x0

    const v2, 0xffff

    .line 24
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v2, v3

    .line 26
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v2, v3

    and-int/lit16 v3, v2, 0xff

    shr-int/lit8 v3, v3, 0x4

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v2, 0x8

    shl-int/lit8 v3, v3, 0x4

    and-int/2addr v3, v0

    xor-int/2addr v2, v3

    and-int/lit16 v3, v2, 0xff

    shl-int/lit8 v3, v3, 0x4

    shl-int/lit8 v3, v3, 0x1

    and-int/2addr v3, v0

    xor-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method
