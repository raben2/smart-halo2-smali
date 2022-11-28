.class public Lorg/spongycastle/openpgp/examples/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    if-eqz p5, :cond_0

    .line 50
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    move-object v1, p0

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    move-object v0, v1

    .line 53
    :goto_0
    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;->get(I)Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;

    move-result-object v7

    .line 54
    new-instance v5, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;

    const/4 v1, 0x1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    move-object v4, p2

    invoke-direct {v5, v1, p2, v3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPKeyPair;-><init>(ILjava/security/KeyPair;Ljava/util/Date;)V

    .line 55
    new-instance v1, Lorg/spongycastle/openpgp/PGPSecretKey;

    const/16 v4, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {v5}, Lorg/spongycastle/openpgp/PGPKeyPair;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v3

    invoke-direct {v10, v3, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    new-instance v2, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v7}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;-><init>(ILorg/spongycastle/openpgp/operator/PGPDigestCalculator;)V

    const-string v3, "SC"

    invoke-virtual {v2, v3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;

    move-result-object v2

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyEncryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;

    move-result-object v11

    move-object v3, v1

    move-object v6, p3

    invoke-direct/range {v3 .. v11}, Lorg/spongycastle/openpgp/PGPSecretKey;-><init>(ILorg/spongycastle/openpgp/PGPKeyPair;Ljava/lang/String;Lorg/spongycastle/openpgp/operator/PGPDigestCalculator;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;Lorg/spongycastle/openpgp/operator/PBESecretKeyEncryptor;)V

    .line 57
    invoke-virtual {v1, v0}, Lorg/spongycastle/openpgp/PGPSecretKey;->encode(Ljava/io/OutputStream;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p5, :cond_1

    .line 63
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    move-object v2, p1

    invoke-direct {v0, p1}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_1
    move-object v2, p1

    move-object v0, v2

    .line 66
    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Lorg/spongycastle/openpgp/PGPPublicKey;->encode(Ljava/io/OutputStream;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const-string v0, "RSA"

    const-string v1, "SC"

    .line 79
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x400

    .line 81
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 83
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    .line 85
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 87
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "RSAKeyPairGenerator [-a] identity passPhrase"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 91
    :cond_0
    aget-object v0, p0, v2

    const-string v3, "-a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 93
    array-length v0, p0

    const/4 v5, 0x3

    if-ge v0, v5, :cond_1

    .line 95
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "RSAKeyPairGenerator [-a] identity passPhrase"

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 99
    :cond_1
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v0, "secret.asc"

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 100
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v5, "pub.asc"

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 102
    aget-object v5, p0, v3

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x1

    move-object v3, v0

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/openpgp/examples/RSAKeyPairGenerator;->exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/io/FileOutputStream;

    const-string v1, "secret.bpg"

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v5, "pub.bpg"

    invoke-direct {v1, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 109
    aget-object v5, p0, v2

    aget-object p0, p0, v3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lorg/spongycastle/openpgp/examples/RSAKeyPairGenerator;->exportKeyPair(Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/security/KeyPair;Ljava/lang/String;[CZ)V

    :goto_0
    return-void
.end method
