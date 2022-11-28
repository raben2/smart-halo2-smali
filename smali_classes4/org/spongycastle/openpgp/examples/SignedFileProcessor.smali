.class public Lorg/spongycastle/openpgp/examples/SignedFileProcessor;
.super Ljava/lang/Object;
.source "SignedFileProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x0

    .line 187
    aget-object v1, p0, v0

    const-string v2, "-s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 189
    aget-object v1, p0, v3

    const-string v4, "-a"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    .line 191
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, p0, v4

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".asc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 194
    aget-object v2, p0, v2

    const/4 v4, 0x4

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v2, v0, v1, p0, v3}, Lorg/spongycastle/openpgp/examples/SignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CZ)V

    goto :goto_0

    .line 198
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 199
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".bpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 201
    aget-object v3, p0, v3

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v3, v1, v2, p0, v0}, Lorg/spongycastle/openpgp/examples/SignedFileProcessor;->signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CZ)V

    goto :goto_0

    .line 204
    :cond_1
    aget-object v0, p0, v0

    const-string v1, "-v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    new-instance v0, Ljava/io/FileInputStream;

    aget-object v1, p0, v3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/io/FileInputStream;

    aget-object p0, p0, v2

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-static {v0, v1}, Lorg/spongycastle/openpgp/examples/SignedFileProcessor;->verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: SignedFileProcessor -v|-s [-a] file keyfile [passPhrase]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static signFile(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;[CZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/spongycastle/openpgp/PGPException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 132
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p2}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p2, v0

    .line 135
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->readSecretKey(Ljava/io/InputStream;)Lorg/spongycastle/openpgp/PGPSecretKey;

    move-result-object p1

    .line 136
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    invoke-direct {v0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;-><init>()V

    const-string v1, "SC"

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBESecretKeyDecryptorBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/spongycastle/openpgp/PGPSecretKey;->extractPrivateKey(Lorg/spongycastle/openpgp/operator/PBESecretKeyDecryptor;)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p3

    .line 137
    new-instance v0, Lorg/spongycastle/openpgp/PGPSignatureGenerator;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPPublicKey;->getAlgorithm()I

    move-result v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;-><init>(II)V

    const-string v2, "SC"

    invoke-virtual {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentSignerBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPContentSignerBuilder;)V

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1, p3}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->init(ILorg/spongycastle/openpgp/PGPPrivateKey;)V

    .line 141
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPSecretKey;->getPublicKey()Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPPublicKey;->getUserIDs()Ljava/util/Iterator;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 144
    new-instance p3, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;

    invoke-direct {p3}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;-><init>()V

    .line 146
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, v1, p1}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->setSignerUserID(ZLjava/lang/String;)V

    .line 147
    invoke-virtual {p3}, Lorg/spongycastle/openpgp/PGPSignatureSubpacketGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->setHashedSubpackets(Lorg/spongycastle/openpgp/PGPSignatureSubpacketVector;)V

    .line 150
    :cond_1
    new-instance p1, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;

    invoke-direct {p1, v3}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    .line 153
    new-instance p3, Lorg/spongycastle/bcpg/BCPGOutputStream;

    invoke-virtual {p1, p2}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p3, v2}, Lorg/spongycastle/bcpg/BCPGOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 155
    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generateOnePassVersion(Z)Lorg/spongycastle/openpgp/PGPOnePassSignature;

    move-result-object v1

    invoke-virtual {v1, p3}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->encode(Ljava/io/OutputStream;)V

    .line 157
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance p0, Lorg/spongycastle/openpgp/PGPLiteralDataGenerator;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPLiteralDataGenerator;-><init>()V

    const/16 v2, 0x62

    .line 159
    invoke-virtual {p0, p3, v2, v1}, Lorg/spongycastle/openpgp/PGPLiteralDataGenerator;->open(Ljava/io/OutputStream;CLjava/io/File;)Ljava/io/OutputStream;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 163
    :goto_0
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_2

    .line 165
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    int-to-byte v1, v1

    .line 166
    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->update(B)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPLiteralDataGenerator;->close()V

    .line 171
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPSignatureGenerator;->generate()Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/spongycastle/openpgp/PGPSignature;->encode(Ljava/io/OutputStream;)V

    .line 173
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->close()V

    if-eqz p4, :cond_3

    .line 177
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_3
    return-void
.end method

.method private static verifyFile(Ljava/io/InputStream;Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 67
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPCompressedData;

    .line 71
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 73
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, v1}, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;->get(I)Lorg/spongycastle/openpgp/PGPOnePassSignature;

    move-result-object p0

    .line 77
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/openpgp/PGPLiteralData;

    .line 79
    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 81
    new-instance v4, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;

    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v5, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v5}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v4, p1, v5}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    .line 83
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->getKeyID()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lorg/spongycastle/openpgp/PGPPublicKeyRingCollection;->getPublicKey(J)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p1

    .line 84
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Lorg/spongycastle/openpgp/PGPLiteralData;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v2, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    invoke-direct {v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;-><init>()V

    const-string v5, "SC"

    invoke-virtual {v2, v5}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPContentVerifierBuilderProvider;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->init(Lorg/spongycastle/openpgp/operator/PGPContentVerifierBuilderProvider;Lorg/spongycastle/openpgp/PGPPublicKey;)V

    .line 88
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ltz p1, :cond_0

    int-to-byte v2, p1

    .line 90
    invoke-virtual {p0, v2}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->update(B)V

    .line 91
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 96
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/spongycastle/openpgp/PGPSignatureList;

    .line 98
    invoke-virtual {p1, v1}, Lorg/spongycastle/openpgp/PGPSignatureList;->get(I)Lorg/spongycastle/openpgp/PGPSignature;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPOnePassSignature;->verify(Lorg/spongycastle/openpgp/PGPSignature;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 100
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verified."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "signature verification failed."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
