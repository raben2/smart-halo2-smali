.class public Lorg/spongycastle/openpgp/examples/PBEFileProcessor;
.super Ljava/lang/Object;
.source "PBEFileProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptFile(Ljava/io/InputStream;[C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lorg/spongycastle/openpgp/PGPUtil;->getDecoderStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    .line 66
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 68
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    .line 73
    instance-of v1, p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    if-eqz v1, :cond_0

    .line 75
    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPEncryptedDataList;

    :goto_0
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lorg/spongycastle/openpgp/PGPEncryptedDataList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;

    .line 84
    new-instance v0, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    invoke-direct {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;-><init>()V

    const-string v2, "SC"

    invoke-virtual {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcaPGPDigestCalculatorProviderBuilder;->build()Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;-><init>(Lorg/spongycastle/openpgp/operator/PGPDigestCalculatorProvider;)V

    const-string v1, "SC"

    invoke-virtual {v0, v1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEDataDecryptorFactoryBuilder;->build([C)Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->getDataStream(Lorg/spongycastle/openpgp/operator/PBEDataDecryptorFactory;)Ljava/io/InputStream;

    move-result-object p1

    .line 86
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-direct {v0, p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 93
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p1

    .line 94
    instance-of v0, p1, Lorg/spongycastle/openpgp/PGPCompressedData;

    if-eqz v0, :cond_1

    .line 96
    check-cast p1, Lorg/spongycastle/openpgp/PGPCompressedData;

    .line 98
    new-instance v0, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPCompressedData;->getDataStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    .line 100
    invoke-virtual {v0}, Lorg/spongycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object p1

    .line 103
    :cond_1
    check-cast p1, Lorg/spongycastle/openpgp/PGPLiteralData;

    .line 104
    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPLiteralData;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lorg/spongycastle/openpgp/PGPLiteralData;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 108
    invoke-static {v0, v1}, Lorg/spongycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 110
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 112
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->isIntegrityProtected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPPBEEncryptedData;->verify()Z

    move-result p0

    if-nez p0, :cond_2

    .line 116
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message failed integrity check"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_2
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "message integrity check passed"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 125
    :cond_3
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "no message integrity check"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static decryptFile(Ljava/lang/String;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/spongycastle/openpgp/PGPException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    invoke-static {v0, p1}, Lorg/spongycastle/openpgp/examples/PBEFileProcessor;->decryptFile(Ljava/io/InputStream;[C)V

    .line 53
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static encryptFile(Ljava/io/OutputStream;Ljava/lang/String;[CZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 152
    new-instance v0, Lorg/spongycastle/bcpg/ArmoredOutputStream;

    invoke-direct {v0, p0}, Lorg/spongycastle/bcpg/ArmoredOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object p0, v0

    :cond_0
    const/4 v0, 0x1

    .line 157
    :try_start_0
    invoke-static {p1, v0}, Lorg/spongycastle/openpgp/examples/PGPExampleUtil;->compressFile(Ljava/lang/String;I)[B

    move-result-object p1

    .line 159
    new-instance v0, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;

    new-instance v1, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;-><init>(I)V

    .line 160
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

    .line 162
    new-instance p4, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;

    invoke-direct {p4, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;-><init>([C)V

    const-string p2, "SC"

    invoke-virtual {p4, p2}, Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;->setProvider(Ljava/lang/String;)Lorg/spongycastle/openpgp/operator/jcajce/JcePBEKeyEncryptionMethodGenerator;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->addMethod(Lorg/spongycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;)V

    .line 164
    array-length p2, p1

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Lorg/spongycastle/openpgp/PGPEncryptedDataGenerator;->open(Ljava/io/OutputStream;J)Ljava/io/OutputStream;

    move-result-object p2

    .line 166
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 167
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    if-eqz p3, :cond_1

    .line 171
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Lorg/spongycastle/openpgp/PGPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 176
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/spongycastle/openpgp/PGPException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static encryptFile(Ljava/lang/String;Ljava/lang/String;[CZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 138
    invoke-static {v0, p1, p2, p3, p4}, Lorg/spongycastle/openpgp/examples/PBEFileProcessor;->encryptFile(Ljava/io/OutputStream;Ljava/lang/String;[CZZ)V

    .line 139
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

    .line 188
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    const/4 v0, 0x0

    .line 190
    aget-object v1, p0, v0

    const-string v2, "-e"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 192
    aget-object v1, p0, v3

    const-string v4, "-a"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x3

    if-nez v1, :cond_2

    aget-object v1, p0, v3

    const-string v5, "-ai"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v3

    const-string v5, "-ia"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    aget-object v1, p0, v3

    const-string v5, "-i"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".bpg"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p0, v2

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v1, v2, p0, v0, v3}, Lorg/spongycastle/openpgp/examples/PBEFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;[CZZ)V

    goto :goto_1

    .line 202
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bpg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v3, p0, v3

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v1, v3, p0, v0, v0}, Lorg/spongycastle/openpgp/examples/PBEFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;[CZZ)V

    goto :goto_1

    .line 194
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p0, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".asc"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p0, v2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    aget-object p0, p0, v3

    const/16 v5, 0x69

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v1, v2, v4, v3, v0}, Lorg/spongycastle/openpgp/examples/PBEFileProcessor;->encryptFile(Ljava/lang/String;Ljava/lang/String;[CZZ)V

    goto :goto_1

    .line 205
    :cond_4
    aget-object v0, p0, v0

    const-string v1, "-d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 207
    aget-object v0, p0, v3

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {v0, p0}, Lorg/spongycastle/openpgp/examples/PBEFileProcessor;->decryptFile(Ljava/lang/String;[C)V

    goto :goto_1

    .line 211
    :cond_5
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v0, "usage: PBEFileProcessor -e [-ai]|-d file passPhrase"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
