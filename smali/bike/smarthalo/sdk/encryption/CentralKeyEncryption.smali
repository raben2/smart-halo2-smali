.class public Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;
.super Ljava/lang/Object;
.source "CentralKeyEncryption.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CentralKeyEncryption"


# instance fields
.field private aes:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

.field private centralKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    const-string v1, "secp256r1"

    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    const-string v1, "ECDH"

    const-string v2, "SC"

    .line 37
    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 39
    invoke-static {p1}, Lbike/smarthalo/sdk/encryption/SHEncryptionHelper;->convertP256Key([B)Ljava/security/spec/X509EncodedKeySpec;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    const-string v1, "ECDH"

    const-string v2, "SC"

    .line 42
    invoke-static {v1, v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 45
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    const-string v1, "ECDH"

    const-string v2, "SC"

    .line 47
    invoke-static {v1, v2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v1

    .line 48
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 51
    invoke-virtual {v1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    const/4 v1, 0x0

    .line 52
    aget-byte v1, p2, v1

    const/16 v3, 0x10

    aput-byte v1, p1, v3

    .line 53
    aget-byte v1, p2, v2

    const/16 v3, 0x11

    aput-byte v1, p1, v3

    const/4 v1, 0x2

    .line 54
    aget-byte v1, p2, v1

    const/16 v3, 0x12

    aput-byte v1, p1, v3

    const/4 v1, 0x3

    .line 55
    aget-byte p2, p2, v1

    const/16 v1, 0x13

    aput-byte p2, p1, v1

    .line 56
    sget-object p2, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sharedSecret "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHSdkHelpers;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance p2, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    invoke-direct {p2, p1}, Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;-><init>([B)V

    iput-object p2, p0, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;->aes:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    .line 60
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .line 61
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    .line 62
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 64
    array-length v0, p2

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    .line 65
    invoke-static {p2, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    .line 67
    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    .line 68
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 71
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 73
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 74
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;->centralKey:[B

    return-void
.end method


# virtual methods
.method public getAes()Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;
    .locals 1

    .line 78
    iget-object v0, p0, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;->aes:Lbike/smarthalo/sdk/encryption/AES_128_CBC_PKCS5;

    return-object v0
.end method

.method public getCentralKey()[B
    .locals 1

    .line 82
    iget-object v0, p0, Lbike/smarthalo/sdk/encryption/CentralKeyEncryption;->centralKey:[B

    return-object v0
.end method
