.class public Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;
.super Ljava/lang/Object;
.source "BcPublicKeyDataDecryptorFactory.java"

# interfaces
.implements Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;


# instance fields
.field private keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

.field private privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPrivateKey;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    .line 37
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    return-void
.end method


# virtual methods
.method public createDataDecryptor(ZI[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 141
    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createBlockCipher(I)Lorg/spongycastle/crypto/BlockCipher;

    move-result-object p2

    .line 143
    invoke-static {p1, p2, p3}, Lorg/spongycastle/openpgp/operator/bc/BcUtil;->createDataDecryptor(ZLorg/spongycastle/crypto/BlockCipher;[B)Lorg/spongycastle/openpgp/operator/PGPDataDecryptor;

    move-result-object p1

    return-object p1
.end method

.method public recoverSessionData(I[[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    const/16 v0, 0x12

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    .line 47
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createPublicKeyCipher(I)Lorg/spongycastle/crypto/AsymmetricBlockCipher;

    move-result-object v0

    .line 49
    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->keyConverter:Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    iget-object v5, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v4, v5}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    .line 51
    new-instance v5, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;

    invoke-direct {v5, v0}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 53
    invoke-virtual {v5, v3, v4}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_2

    .line 64
    :cond_0
    new-instance p1, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {p1}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    .line 65
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;

    .line 66
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    .line 67
    new-array v0, p1, [B

    .line 69
    aget-object v4, p2, v3

    .line 70
    array-length v6, v4

    sub-int/2addr v6, v2

    const/4 v7, 0x3

    if-le v6, p1, :cond_1

    .line 72
    array-length v6, v4

    sub-int/2addr v6, v7

    invoke-virtual {v5, v4, v7, v6}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_0

    .line 76
    :cond_1
    array-length v6, v0

    array-length v8, v4

    sub-int/2addr v8, v2

    sub-int/2addr v6, v8

    array-length v8, v4

    sub-int/2addr v8, v2

    invoke-static {v4, v2, v0, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v4, v0

    invoke-virtual {v5, v0, v3, v4}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    .line 80
    :goto_0
    aget-object p2, p2, v1

    const/4 v1, 0x0

    .line 81
    :goto_1
    array-length v4, v0

    if-eq v1, v4, :cond_2

    .line 83
    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    :cond_2
    array-length v1, p2

    sub-int/2addr v1, v2

    if-le v1, p1, :cond_3

    .line 88
    array-length p1, p2

    sub-int/2addr p1, v7

    invoke-virtual {v5, p2, v7, p1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    .line 92
    :cond_3
    array-length p1, v0

    array-length v1, p2

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    array-length v1, p2

    sub-int/2addr v1, v2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    array-length p1, v0

    invoke-virtual {v5, v0, v3, p1}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    goto :goto_3

    .line 58
    :cond_4
    :goto_2
    aget-object p1, p2, v3

    .line 60
    array-length p2, p1

    sub-int/2addr p2, v2

    invoke-virtual {v5, p1, v2, p2}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->processBytes([BII)V

    .line 97
    :goto_3
    invoke-virtual {v5}, Lorg/spongycastle/crypto/BufferedAsymmetricBlockCipher;->doFinal()[B

    move-result-object p1

    return-object p1

    .line 101
    :cond_5
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    .line 102
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 104
    aget-object p2, p2, v3

    .line 106
    aget-byte v4, p2, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 107
    new-array v5, v4, [B

    .line 109
    invoke-static {p2, v2, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v2

    .line 111
    aget-byte v2, p2, v4

    new-array v2, v2, [B

    add-int/2addr v4, v1

    .line 113
    array-length v1, v2

    invoke-static {p2, v4, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p2

    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/bc/BcImplProvider;->createWrapper(I)Lorg/spongycastle/crypto/Wrapper;

    move-result-object p2

    .line 117
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->normalize()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    .line 119
    new-instance v1, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;

    new-instance v4, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;

    invoke-direct {v4}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;-><init>()V

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/openpgp/operator/bc/BcPGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v4

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-direct {v1, v4, p1}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;-><init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;I)V

    .line 120
    new-instance p1, Lorg/spongycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/bc/BcPublicKeyDataDecryptorFactory;->privKey:Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {v4}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v4

    new-instance v5, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;

    invoke-direct {v5}, Lorg/spongycastle/openpgp/operator/bc/BcKeyFingerprintCalculator;-><init>()V

    invoke-static {v4, v5}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/spongycastle/openpgp/operator/bc/RFC6637KDFCalculator;->createKey(Lorg/spongycastle/math/ec/ECPoint;[B)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 122
    invoke-interface {p2, v3, p1}, Lorg/spongycastle/crypto/Wrapper;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 124
    array-length p1, v2

    invoke-interface {p2, v2, v3, p1}, Lorg/spongycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception encrypting session info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 129
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception creating user keying material: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
