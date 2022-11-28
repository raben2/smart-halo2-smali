.class public Lorg/spongycastle/openpgp/examples/KeyBasedLargeFileProcessor;
.super Ljava/lang/Object;
.source "KeyBasedLargeFileProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptFile(Ljava/io/InputStream;Ljava/io/InputStream;[CLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 89
    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 92
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    .line 96
    instance-of v1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    if-eqz v1, :cond_0

    .line 98
    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    .line 108
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->getEncryptedDataObjects()Ljava/util/Iterator;

    move-result-object p0

    .line 111
    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;

    .line 112
    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    const/4 p1, 0x0

    move-object v1, p1

    :goto_1
    if-nez p1, :cond_1

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;

    .line 118
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->getKeyID()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->findSecretKey(Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;J[C)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_7

    .line 126
    new-instance p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;-><init>()V

    const-string p2, "SC"

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->build(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->getDataStream(Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object p0

    .line 128
    new-instance p1, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 130
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPCompressedData;

    .line 132
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 133
    new-instance p0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    .line 137
    instance-of p1, p0, Lorg/spongycastle/openpgp/PGPLiteralData;

    if-eqz p1, :cond_5

    .line 139
    check-cast p0, Lorg/spongycastle/openpgp/PGPLiteralData;

    .line 141
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPLiteralData;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_2

    move-object p1, p3

    .line 147
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 148
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    invoke-static {p0, p2}, Lorg/spongycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 152
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 163
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->isIntegrityProtected()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 165
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->verify()Z

    move-result p0

    if-nez p0, :cond_3

    .line 167
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message failed integrity check"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 171
    :cond_3
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message integrity check passed"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 176
    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "no message integrity check"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 154
    :cond_5
    instance-of p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;

    if-eqz p0, :cond_6

    .line 156
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "encrypted message contains a signed message - not literal data."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_6
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "message is not a simple encrypted file - type unknown."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secret key for message not found."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 181
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 184
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_2
    return-void
.end method

.method private static decryptFile(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 70
    invoke-static {v0, p0, p2, p3}, Lorg/spongycastle/openpgp/examples/KeyBasedLargeFileProcessor;->decryptFile(Ljava/io/InputStream;Ljava/io/InputStream;[CLjava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 72
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static encryptFile(Ljava/io/OutputStream;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 213
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    .line 218
    :cond_0
    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;-><init>(I)V

    invoke-virtual {v1, p4}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setWithIntegrityPacket(Z)Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p4

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p4, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p4

    const-string v1, "SC"

    invoke-virtual {p4, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    move-result-object p4

    invoke-direct {v0, p4}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;-><init>(Lorg/spongycastle/openpgp/operator/PGPDataEncryptorBuilder;)V

    .line 220
    new-instance p4, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    invoke-direct {p4, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    const-string p2, "SC"

    invoke-virtual {p4, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    const/high16 p2, 0x10000

    .line 222
    new-array p4, p2, [B

    invoke-virtual {v0, p0, p4}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object p4

    .line 224
    new-instance v0, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;-><init>(I)V

    .line 227
    invoke-virtual {v0, p4}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->open(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x62

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array p1, p2, [B

    invoke-static {v1, v2, v3, p1}, Lorg/spongycastle/openpgp/PGPUtil;->writeFileToLiteralData(Ljava/io/OutputStream;CLjava/io/File;[B)V

    .line 229
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPCompressedDataGenerator;->close()V

    .line 231
    invoke-virtual {p4}, Ljava/io/OutputStream;->close()V

    if-eqz p3, :cond_1

    .line 235
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 240
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 197
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    invoke-static {p2}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->readPublicKey(Ljava/lang/String;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    .line 199
    invoke-static {v0, p1, p0, p3, p4}, Lorg/spongycastle/openpgp/examples/KeyBasedLargeFileProcessor;->encryptFile(Ljava/io/OutputStream;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;ZZ)V

    .line 200
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 252
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 254
    array-length v0, p0

    if-nez v0, :cond_0

    .line 256
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: KeyBasedLargeFileProcessor -e|-d [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 260
    aget-object v1, p0, v0

    const-string v2, "-e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 262
    aget-object v1, p0, v4

    const-string v5, "-a"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p0, v4

    const-string v5, "-ai"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    aget-object v1, p0, v4

    const-string v5, "-ia"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 266
    :cond_1
    aget-object v1, p0, v4

    const-string v5, "-i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bpg"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, p0, v3

    aget-object p0, p0, v2

    invoke-static {v1, v3, p0, v0, v4}, Lorg/spongycastle/openpgp/examples/KeyBasedLargeFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 272
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p0, v4

    aget-object p0, p0, v3

    invoke-static {v1, v2, p0, v0, v0}, Lorg/spongycastle/openpgp/examples/KeyBasedLargeFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 264
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".asc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, p0, v3

    aget-object v2, p0, v2

    aget-object p0, p0, v4

    const/16 v5, 0x69

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {v1, v3, v2, v4, v0}, Lorg/spongycastle/openpgp/examples/KeyBasedLargeFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 275
    :cond_5
    aget-object v0, p0, v0

    const-string v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 277
    aget-object v0, p0, v4

    aget-object v1, p0, v3

    aget-object v2, p0, v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    aget-object p0, p0, v4

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".out"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lorg/spongycastle/openpgp/examples/KeyBasedLargeFileProcessor;->decryptFile(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V

    goto :goto_1

    .line 281
    :cond_6
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: KeyBasedLargeFileProcessor -d|-e [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
