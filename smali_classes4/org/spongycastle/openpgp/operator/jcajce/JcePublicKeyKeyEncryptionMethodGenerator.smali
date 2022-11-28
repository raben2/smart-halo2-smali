.class public Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
.super Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;
.source "JcePublicKeyKeyEncryptionMethodGenerator.java"


# instance fields
.field private digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

.field private keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/operator/PublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 42
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v0, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 44
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    .line 45
    new-instance p1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->digestCalculatorProviderBuilder:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    return-void
.end method


# virtual methods
.method protected encryptSessionInfo(Lorg/spongycastle/openpgp/PGPPublicKey;[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    const/16 v1, 0x12

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 96
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    .line 97
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 98
    iget-object v3, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v4, "EC"

    invoke-virtual {v3, v4}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 100
    new-instance v4, Lorg/spongycastle/asn1/x9/X962Parameters;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/x9/X962Parameters;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x9/X962Parameters;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 102
    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v5, "EC"

    invoke-virtual {v4, v5}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v4

    .line 104
    const-class v5, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 106
    invoke-virtual {v4}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 108
    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->getAgreementAlgorithm(Lorg/spongycastle/bcpg/PublicKeyPacket;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v4

    .line 110
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    new-instance v6, Lorg/spongycastle/jcajce/spec/UserKeyingMaterialSpec;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v7

    new-instance v8, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v8}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-static {v7, v8}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->createUserKeyingMaterial(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/spongycastle/jcajce/spec/UserKeyingMaterialSpec;-><init>([B)V

    invoke-virtual {v4, v5, v6}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 112
    iget-object v5, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v5, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v4, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 114
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result p1

    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/RFC6637Utils;->getKeyEncryptionOID(I)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljavax/crypto/KeyAgreement;->generateSecret(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 116
    iget-object v4, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getSymmetricKeyAlgorithm()B

    move-result v0

    invoke-virtual {v4, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyWrapper(I)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v4, 0x3

    .line 118
    iget-object v5, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 120
    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/PGPPad;->padSessionData([B)[B

    move-result-object p1

    .line 122
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x0

    aget-byte p2, p2, v5

    invoke-static {p2}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->getSymmetricCipherName(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    .line 124
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p2

    .line 126
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p2

    invoke-virtual {p2}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    .line 128
    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p2

    .line 130
    new-instance v0, Lorg/spongycastle/bcpg/MPInteger;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p2, v5}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p2

    invoke-direct {v1, v2, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v0, v1}, Lorg/spongycastle/bcpg/MPInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/MPInteger;->getEncoded()[B

    move-result-object p2

    .line 132
    array-length v0, p2

    add-int/2addr v0, v2

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 134
    array-length v1, p2

    invoke-static {p2, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    array-length v1, p2

    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 136
    array-length p2, p2

    add-int/2addr p2, v2

    array-length v1, p1

    invoke-static {p1, v5, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createPublicKeyCipher(I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v1, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;

    move-result-object p1

    .line 146
    iget-object v1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 148
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 169
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to set up ephemeral keys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 165
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to encode MPI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p1

    .line 161
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/InvalidKeyException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 157
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad padding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4
    move-exception p1

    .line 153
    new-instance p2, Lorg/spongycastle/openpgp/PGPException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal block size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
    .locals 2

    .line 68
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 70
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
    .locals 2

    .line 59
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 61
    iget-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->keyConverter:Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
