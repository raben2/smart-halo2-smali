.class public Lorg/spongycastle/openpgp/examples/KeyBasedFileProcessor;
.super Ljava/lang/Object;
.source "KeyBasedFileProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
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

    .line 81
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 85
    :try_start_0
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 88
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    .line 92
    instance-of v1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    if-eqz v1, :cond_0

    .line 94
    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    .line 104
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->getEncryptedDataObjects()Ljava/util/Iterator;

    move-result-object p0

    .line 107
    new-instance v0, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;

    .line 108
    invoke-static {p1}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;

    invoke-direct {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaKeyFingerprintCalculator;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;-><init>(Ljava/io/InputStream;Lorg/spongycastle/openpgp/operator/KeyFingerPrintCalculator;)V

    const/4 p1, 0x0

    move-object v1, p1

    :goto_1
    if-nez p1, :cond_1

    .line 110
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;

    .line 114
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->getKeyID()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->findSecretKey(Lorg/spongycastle/openpgp/PGPSecretKeyRingCollection;J[C)Lorg/spongycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_8

    .line 122
    new-instance p0, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    invoke-direct {p0}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;-><init>()V

    const-string p2, "SC"

    invoke-virtual {p0, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyDataDecryptorFactoryBuilder;->build(Lorg/spongycastle/openpgp/PGPPrivateKey;)Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->getDataStream(Lorg/spongycastle/openpgp/operator/PublicKeyDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object p0

    .line 124
    new-instance p1, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 126
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    .line 128
    instance-of p1, p0, Lorg/spongycastle/openpgp/PGPCompressedData;

    if-eqz p1, :cond_2

    .line 130
    check-cast p0, Lorg/spongycastle/openpgp/PGPCompressedData;

    .line 131
    new-instance p1, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 133
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    .line 136
    :cond_2
    instance-of p1, p0, Lorg/spongycastle/openpgp/PGPLiteralData;

    if-eqz p1, :cond_6

    .line 138
    check-cast p0, Lorg/spongycastle/openpgp/PGPLiteralData;

    .line 140
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPLiteralData;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_3

    move-object p1, p3

    .line 146
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 147
    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance p3, Ljava/io/FileOutputStream;

    invoke-direct {p3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    invoke-static {p0, p2}, Lorg/spongycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 151
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 162
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->isIntegrityProtected()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 164
    invoke-virtual {v1}, Lorg/spongycastle/openpgp/PGPPublicKeyEncryptedData;->verify()Z

    move-result p0

    if-nez p0, :cond_4

    .line 166
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message failed integrity check"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 170
    :cond_4
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message integrity check passed"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 175
    :cond_5
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "no message integrity check"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 153
    :cond_6
    instance-of p0, p0, Lorg/spongycastle/openpgp/PGPOnePassSignatureList;

    if-eqz p0, :cond_7

    .line 155
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "encrypted message contains a signed message - not literal data."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_7
    new-instance p0, Lorg/spongycastle/openpgp/PGPException;

    const-string p1, "message is not a simple encrypted file - type unknown."

    invoke-direct {p0, p1}, Lorg/spongycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "secret key for message not found."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 180
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 183
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
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

    .line 64
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    new-instance p0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    invoke-static {v0, p0, p2, p3}, Lorg/spongycastle/openpgp/examples/KeyBasedFileProcessor;->decryptFile(Ljava/io/InputStream;Ljava/io/InputStream;[CLjava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 68
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static encryptFile(Ljava/io/OutputStream;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 212
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    :cond_0
    const/4 v0, 0x1

    .line 217
    :try_start_0
    invoke-static {p1, v0}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->compressFile(Ljava/lang/String;I)[B

    move-result-object p1

    .line 219
    new-instance v0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;-><init>(I)V

    .line 220
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

    .line 222
    new-instance p4, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    invoke-direct {p4, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;-><init>(Lorg/spongycastle/openpgp/PGPPublicKey;)V

    const-string p2, "SC"

    invoke-virtual {p4, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePublicKeyKeyEncryptionMethodGenerator;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    .line 224
    array-length p2, p1

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J)Ljava/io/OutputStream;

    move-result-object p2

    .line 226
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 227
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    if-eqz p3, :cond_1

    .line 231
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 236
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 239
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

    .line 196
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 197
    invoke-static {p2}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->readPublicKey(Ljava/lang/String;)Lorg/spongycastle/openpgp/PGPPublicKey;

    move-result-object p0

    .line 198
    invoke-static {v0, p1, p0, p3, p4}, Lorg/spongycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/io/OutputStream;Ljava/lang/String;Lorg/spongycastle/openpgp/PGPPublicKey;ZZ)V

    .line 199
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

    .line 248
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 250
    array-length v0, p0

    if-nez v0, :cond_0

    .line 252
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: KeyBasedFileProcessor -e|-d [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 256
    aget-object v1, p0, v0

    const-string v2, "-e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 258
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

    .line 262
    :cond_1
    aget-object v1, p0, v4

    const-string v5, "-i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
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

    invoke-static {v1, v3, p0, v0, v4}, Lorg/spongycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    .line 268
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

    invoke-static {v1, v2, p0, v0, v0}, Lorg/spongycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 260
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
    invoke-static {v1, v3, v2, v4, v0}, Lorg/spongycastle/openpgp/examples/KeyBasedFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 271
    :cond_5
    aget-object v0, p0, v0

    const-string v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
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

    invoke-static {v0, v1, v2, p0}, Lorg/spongycastle/openpgp/examples/KeyBasedFileProcessor;->decryptFile(Ljava/lang/String;Ljava/lang/String;[CLjava/lang/String;)V

    goto :goto_1

    .line 277
    :cond_6
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: KeyBasedFileProcessor -d|-e [-a|ai] file [secretKeyFile passPhrase|pubKeyFile]"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
