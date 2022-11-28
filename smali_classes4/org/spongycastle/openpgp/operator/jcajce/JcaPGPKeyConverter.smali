.class public Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
.super Ljava/lang/Object;
.source "JcaPGPKeyConverter.java"


# instance fields
.field private fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

.field private helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/spongycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    .line 70
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    return-void
.end method

.method private getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 382
    invoke-static {p1}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    return-object p1
.end method

.method private getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 388
    iget-object p2, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "EC"

    invoke-virtual {p2, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object p2

    .line 390
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    invoke-static {p1}, Lorg/spongycastle/asn1/x9/ECNamedCurveTable;->getName(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 392
    const-class p1, Ljava/security/spec/ECParameterSpec;

    invoke-virtual {p2, p1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    check-cast p1, Ljava/security/spec/ECParameterSpec;

    return-object p1
.end method


# virtual methods
.method public getPGPPrivateKey(Lorg/spongycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/spongycastle/openpgp/PGPPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 373
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 368
    :pswitch_0
    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    .line 370
    new-instance v0, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 356
    :pswitch_1
    check-cast p2, Ljava/security/interfaces/DSAPrivateKey;

    .line 358
    new-instance v0, Lorg/spongycastle/bcpg/DSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/bcpg/DSASecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 362
    :pswitch_2
    check-cast p2, Ljavax/crypto/interfaces/DHPrivateKey;

    .line 364
    new-instance v0, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;

    invoke-interface {p2}, Ljavax/crypto/interfaces/DHPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 351
    :pswitch_3
    check-cast p2, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 353
    new-instance v0, Lorg/spongycastle/bcpg/RSASecretBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 376
    :goto_0
    new-instance p2, Lorg/spongycastle/openpgp/PGPPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getKeyID()J

    move-result-wide v1

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1, v0}, Lorg/spongycastle/openpgp/PGPPrivateKey;-><init>(JLorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/bcpg/BCPGKey;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getPGPPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getPGPPublicKey(ILorg/spongycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/spongycastle/openpgp/PGPPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 172
    instance-of v0, p3, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 174
    check-cast p3, Ljava/security/interfaces/RSAPublicKey;

    .line 176
    new-instance p2, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {p3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto/16 :goto_0

    .line 178
    :cond_0
    instance-of v0, p3, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    .line 180
    check-cast p3, Ljava/security/interfaces/DSAPublicKey;

    .line 181
    invoke-interface {p3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p2

    .line 183
    new-instance v0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, v2, p2, p3}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p2, v0

    goto/16 :goto_0

    .line 185
    :cond_1
    instance-of v0, p3, Ljavax/crypto/interfaces/DHPublicKey;

    if-eqz v0, :cond_2

    .line 187
    check-cast p3, Ljavax/crypto/interfaces/DHPublicKey;

    .line 188
    invoke-interface {p3}, Ljavax/crypto/interfaces/DHPublicKey;->getParams()Ljavax/crypto/spec/DHParameterSpec;

    move-result-object p2

    .line 190
    new-instance v0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object p2

    invoke-interface {p3}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object p2, v0

    goto :goto_0

    .line 192
    :cond_2
    instance-of v0, p3, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_6

    .line 194
    invoke-interface {p3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p3

    invoke-static {p3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p3

    .line 197
    invoke-virtual {p3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->getByOID(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v1

    .line 201
    new-instance v2, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getPublicKeyData()Lorg/spongycastle/asn1/DERBitString;

    move-result-object p3

    invoke-virtual {p3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object p3

    invoke-direct {v2, p3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    .line 202
    new-instance p3, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-direct {p3, v1, v2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    const/16 v1, 0x12

    if-ne p1, v1, :cond_4

    .line 206
    check-cast p2, Lorg/spongycastle/openpgp/PGPKdfParameters;

    if-nez p2, :cond_3

    .line 210
    new-instance p2, Lorg/spongycastle/openpgp/PGPKdfParameters;

    const/16 v1, 0x8

    const/4 v2, 0x7

    invoke-direct {p2, v1, v2}, Lorg/spongycastle/openpgp/PGPKdfParameters;-><init>(II)V

    .line 212
    :cond_3
    new-instance v1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPKdfParameters;->getHashAlgorithm()I

    move-result v2

    invoke-virtual {p2}, Lorg/spongycastle/openpgp/PGPKdfParameters;->getSymmetricWrapAlgorithm()I

    move-result p2

    invoke-direct {v1, v0, p3, v2, p2}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;II)V

    move-object p2, v1

    goto :goto_0

    :cond_4
    const/16 p2, 0x13

    if-ne p1, p2, :cond_5

    .line 216
    new-instance p2, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/x9/X9ECPoint;->getPoint()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-direct {p2, v0, p3}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/math/ec/ECPoint;)V

    .line 228
    :goto_0
    new-instance p3, Lorg/spongycastle/openpgp/PGPPublicKey;

    new-instance v0, Lorg/spongycastle/bcpg/PublicKeyPacket;

    invoke-direct {v0, p1, p4, p2}, Lorg/spongycastle/bcpg/PublicKeyPacket;-><init>(ILjava/util/Date;Lorg/spongycastle/bcpg/BCPGKey;)V

    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->fingerPrintCalculator:Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;

    invoke-direct {p3, v0, p1}, Lorg/spongycastle/openpgp/PGPPublicKey;-><init>(Lorg/spongycastle/bcpg/PublicKeyPacket;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    return-object p3

    .line 220
    :cond_5
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "unknown EC algorithm"

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 225
    :cond_6
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string p2, "unknown key class"

    invoke-direct {p1, p2}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPrivateKey(Lorg/spongycastle/openpgp/PGPPrivateKey;)Ljava/security/PrivateKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 251
    instance-of v0, p1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    if-eqz v0, :cond_0

    .line 253
    check-cast p1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPPrivateKey;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 256
    :cond_0
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object v0

    .line 257
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPrivateKey;->getPrivateKeyDataPacket()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    .line 263
    :try_start_0
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 320
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 302
    :pswitch_0
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    .line 303
    check-cast p1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    .line 304
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    .line 305
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    .line 306
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 307
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDSA"

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 309
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 293
    :pswitch_1
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    .line 294
    check-cast p1, Lorg/spongycastle/bcpg/ECSecretBCPGKey;

    .line 295
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    .line 296
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    .line 297
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    .line 298
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDH"

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 300
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 284
    :pswitch_2
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    .line 285
    check-cast p1, Lorg/spongycastle/bcpg/DSASecretBCPGKey;

    .line 286
    new-instance v1, Ljava/security/spec/DSAPrivateKeySpec;

    .line 287
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSASecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 289
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "DSA"

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 291
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 312
    :pswitch_3
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    .line 313
    check-cast p1, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;

    .line 314
    new-instance v1, Ljavax/crypto/spec/DHPrivateKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalSecretBCPGKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v1, p1, v2, v0}, Ljavax/crypto/spec/DHPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 316
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ElGamal"

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 318
    invoke-virtual {p1, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1

    .line 268
    :pswitch_4
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    .line 269
    check-cast p1, Lorg/spongycastle/bcpg/RSASecretBCPGKey;

    .line 270
    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 271
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 272
    invoke-virtual {v0}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 273
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    .line 274
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v5

    .line 275
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v6

    .line 276
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v7

    .line 277
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    .line 278
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSASecretBCPGKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v9

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 280
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "RSA"

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 282
    invoke-virtual {p1, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 329
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "Exception constructing key"

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 325
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getPublicKey(Lorg/spongycastle/openpgp/PGPPublicKey;)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getPublicKeyPacket()Lorg/spongycastle/bcpg/PublicKeyPacket;

    move-result-object p1

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getAlgorithm()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 142
    new-instance p1, Lorg/spongycastle/openpgp/PGPException;

    const-string v0, "unknown public key algorithm encountered"

    invoke-direct {p1, v0}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :pswitch_0
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;

    .line 133
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 135
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 136
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 137
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDSAPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 138
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDSA"

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 140
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 122
    :pswitch_1
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;

    .line 123
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->getX9Parameters(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 124
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getEncodedPoint()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/PGPUtil;->decodePoint(Ljava/math/BigInteger;Lorg/spongycastle/math/ec/ECCurve;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 125
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    new-instance v3, Ljava/security/spec/ECPoint;

    .line 126
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 127
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ECDHPublicBCPGKey;->getCurveOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getECParameterSpec(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x9/X9ECParameters;)Ljava/security/spec/ECParameterSpec;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 128
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v0, "ECDH"

    invoke-virtual {p1, v0}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 130
    invoke-virtual {p1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 107
    :pswitch_2
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;

    .line 108
    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/DSAPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 110
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "DSA"

    invoke-virtual {p1, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 112
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 115
    :pswitch_3
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;

    .line 116
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/ElGamalPublicBCPGKey;->getG()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 118
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "ElGamal"

    invoke-virtual {p1, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 120
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1

    .line 100
    :pswitch_4
    invoke-virtual {p1}, Lorg/spongycastle/bcpg/PublicKeyPacket;->getKey()Lorg/spongycastle/bcpg/BCPGKey;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;

    .line 101
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/bcpg/RSAPublicBCPGKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 103
    iget-object p1, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    const-string v1, "RSA"

    invoke-virtual {p1, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 151
    new-instance v0, Lorg/spongycastle/openpgp/PGPException;

    const-string v1, "exception constructing public key"

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 147
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 2

    .line 81
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;
    .locals 2

    .line 74
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/spongycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/spongycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->helper:Lorg/spongycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method
