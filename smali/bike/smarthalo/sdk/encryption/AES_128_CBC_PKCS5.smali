.class public Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;
.super Ljava/lang/Object;
.source "AES_128_CBC_PKCS5.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AES_128_CBC_PKCS5"


# instance fields
.field IV:[B

.field key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->key:[B

    .line 35
    iput-object v0, p0, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->IV:[B

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 38
    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->key:[B

    const/16 v1, 0x20

    .line 39
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->IV:[B

    return-void
.end method


# virtual methods
.method public crypt(I[B)[B
    .locals 4

    :try_start_0
    const-string v0, "AES/CBC/PKCS5Padding"

    const-string v1, "BC"

    .line 45
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 46
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->key:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->IV:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 48
    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 49
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    goto :goto_0

    :catch_5
    move-exception p1

    goto :goto_0

    :catch_6
    move-exception p1

    .line 58
    :goto_0
    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 59
    sget-object p1, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;->TAG:Ljava/lang/String;

    const-string p2, "ENCRYPTION EXCEPTION"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
