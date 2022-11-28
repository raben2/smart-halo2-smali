.class public Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
.super Ljava/lang/Object;
.source "JcePublicKeyDataDecryptorFactoryBuilder.java"


# instance fields
.field private contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field private fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 38
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 39
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 40
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    return-void
.end method

.method static synthetic access$000(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;ILjava/security/PrivateKey;[[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(ILjava/security/PrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method static synthetic access$200(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/spongycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->decryptSessionData(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/spongycastle/openpgp/PGPPrivateKey;[[B)[B

    move-result-object p0

    return-object p0
.end method

.method private decryptSessionData(ILjava/security/PrivateKey;[[B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createPublicKeyCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    .line 207
    :try_start_0
    invoke-virtual {v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_2

    .line 223
    :cond_0
    check-cast p2, Ljavax/crypto/interfaces/DHKey;

    .line 224
    invoke-interface {p2}, Ljavax/crypto/interfaces/DHKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p1, p1, 0x7

    div-int/lit8 p1, p1, 0x8

    .line 225
    new-array p2, p1, [B

    .line 227
    aget-object v4, p3, v2

    .line 228
    array-length v5, v4

    sub-int/2addr v5, v1

    const/4 v6, 0x3

    if-le v5, p1, :cond_1

    .line 230
    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-virtual {v0, v4, v6, v5}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_0

    .line 234
    :cond_1
    array-length v5, p2

    array-length v7, v4

    sub-int/2addr v7, v1

    sub-int/2addr v5, v7

    array-length v7, v4

    sub-int/2addr v7, v1

    invoke-static {v4, v1, p2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    .line 238
    :goto_0
    aget-object p3, p3, v3

    const/4 v3, 0x0

    .line 239
    :goto_1
    array-length v4, p2

    if-eq v3, v4, :cond_2

    .line 241
    aput-byte v2, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 244
    :cond_2
    array-length v2, p3

    sub-int/2addr v2, v1

    if-le v2, p1, :cond_3

    .line 246
    array-length p1, p3

    sub-int/2addr p1, v6

    invoke-virtual {v0, p3, v6, p1}, Ljavax/crypto/Cipher;->update([BII)[B

    goto :goto_3

    .line 250
    :cond_3
    array-length p1, p2

    array-length v2, p3

    sub-int/2addr v2, v1

    sub-int/2addr p1, v2

    array-length v2, p3

    sub-int/2addr v2, v1

    invoke-static {p3, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->update([B)[B

    goto :goto_3

    .line 217
    :cond_4
    :goto_2
    aget-object p1, p3, v2

    .line 219
    array-length p2, p1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, v1, p2}, Ljavax/crypto/Cipher;->update([BII)[B

    .line 257
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 261
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "exception decrypting session data"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 211
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private decryptSessionData(Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;Lorg/spongycastle/openpgp/PGPPrivateKey;[[B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    .line 140
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    const/4 v3, 0x0

    .line 142
    aget-object p3, p3, v3

    .line 144
    aget-byte v4, p3, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v6, p3, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 145
    new-array v6, v4, [B

    const/4 v7, 0x2

    .line 147
    invoke-static {p3, v7, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v7

    .line 149
    aget-byte v7, p3, v4

    new-array v7, v7, [B

    add-int/2addr v4, v5

    .line 151
    array-length v8, v7

    invoke-static {p3, v4, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object p3

    invoke-virtual {p3, v6}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    .line 157
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-static {v0, v2}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v2

    .line 159
    iget-object v3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->getAgreementAlgorithm(Lorg/spongycastle/bcpg/PublicKeyPacket;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 161
    invoke-virtual {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    .line 163
    new-instance v3, Lorg/spongycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-direct {v3, v2}, Lorg/spongycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    invoke-virtual {v0, p2, v3}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 165
    new-instance p2, Lorg/spongycastle/openpgp/PGPPublicKey;

    new-instance v2, Lorg/spongycastle/bcpg/PublicKeyPacket;

    const/16 v3, 0x12

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    new-instance v6, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    .line 166
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getHashAlgorithm()B

    move-result v9

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v10

    invoke-direct {v6, v8, p3, v9, v10}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;II)V

    invoke-direct {v2, v3, v4, v6}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    iget-object p3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->fingerprintCalculator:Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {p2, v2, p3}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 165
    invoke-virtual {p1, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v0, p1, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 168
    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->getKeyEncryptionOID(I)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 170
    iget-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p3

    invoke-virtual {p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object p2

    const/4 p3, 0x4

    .line 172
    invoke-virtual {p2, p3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string p1, "Session"

    const/4 p3, 0x3

    .line 174
    invoke-virtual {p2, v7, p1, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/PGPPad;->unpadSessionData([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 196
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 192
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 188
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 184
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    .line 180
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    const-string p3, "error setting asymmetric cipher"

    invoke-direct {p2, p3, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public build(Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
    .locals 1

    .line 92
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$1;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public build(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;
    .locals 1

    .line 114
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder$2;-><init>(Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;Lorg/spongycastle/openpgp/PGPPrivateKey;)V

    return-object v0
.end method

.method public setContentProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 85
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setContentProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 78
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 69
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 70
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 71
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;
    .locals 2

    .line 54
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 55
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 56
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->contentHelper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
